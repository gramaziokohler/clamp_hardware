clear
pkg load instrument-control
time_str = (strftime ("%Y-%m-%d_%H-%M-%S", localtime (time ())));
filename = ['result_' time_str]

# Opens serial port ttyUSB1 with baudrate of 115200 (config defaults to 8-N-1)
s1 = serial("COM3", 115200) ;
# Wait a few seconds for Arduino to boot up
pause(2);
# Flush input and output buffers
srl_flush(s1);

# Experiment Test Numbers

case_number ='17';
motor_number ='2';
sample_number = '2';

# Command to send to Arduino
speed_str = "v4866";
kp_str = "kp0.01";
ki_str = "ki0.04";
kd_str = "kd0.0002";
move_str = "g-404000";
keep_data_every = 5; # 1 means keep everything, 2 means keep 1/2 of readings.

srl_write(s1, [speed_str "\n"]);
srl_write(s1, [kp_str "\n"]);
srl_write(s1, [ki_str "\n"]);
srl_write(s1, [kd_str "\n"]);
srl_write(s1, "h\n") ;
pause(1);
srl_flush(s1);
pause(1);

# Notes to be written in plot
notes = [time_str '(Case ' case_number ' Motor ' motor_number ' Sample ' sample_number ') ' move_str ' ' speed_str ' ' kp_str ' ' ki_str ' ' kd_str ]

# motor + 1:49 planetary: one turn at planetary = 2960 steps
# 1:49 planetary + 1:20 worm: 59200 (-ve dir tightens screw in)
# motor + 1:13 planetary: one turn at planetary = 915 steps
# 1:13 planetary + 1:20 worm: 18300


# Movement Command to send to Arduino
srl_write(s1, [move_str "\n"]) ;
disp('Recording Begin... ')
readings = [];
skip = 0;
while(1)
  return_string = ReadToTermination(s1, 10);
  if return_string(1) == '>'
    reading = textscan (return_string, ">%d,%d,%d,%d,%d,%d");
        
    # End condition when motion stops, checking the second bit.
    if bitget(reading{1,1},2) == 0
      break 
    endif
    
    # Skip reading
    skip = skip + 1;
    if mod(skip, keep_data_every) > 0
      continue
    endif
  
    # Sainity check - status is negative
    if cell2mat(reading(1,1)) < 0
      continue
    endif
    # Sainity Check - time is smaller than or equal to previous
    if size(readings)(1,1) > 0
      if cell2mat(reading(1,2)) <= cell2mat(readings(end,2))
        continue
      endif
    endif
    # Sainity check - power more than 100
    if cell2mat(reading(1,5)) < -100 | cell2mat(reading(1,5)) > 100 
      continue
    endif
    # Save reading to array
    readings = [readings ; reading];

  endif
endwhile
disp('Recording Ended')

# Data in matrix
result = cell2mat(readings);
# Data to be written to CSV with header
column_headers = {"status_code" "time" "position" "target" "power" "batt"};
csvwrite([filename '.csv'] , result);
  
# Close serial connection
clear('s1')




#############################
# Plot Power and Error Graph
#############################

# Filter data to reasnoable data point length
max_data_length = 2000;
data_length = size(readings)(1,1);
skip_freq = max(1, ceil(data_length / max_data_length));

plot_notes = ['Recorded ' int2str(data_length) ' data points. Plotting ' int2str(ceil(data_length/skip_freq)) ' points']

# Preprocessing data into columns
time = result(1:skip_freq:end,2) ;
pos = result(1:skip_freq:end,3);
error = result(1:skip_freq:end,3) - result(1:skip_freq:end,4) ;
power = result(1:skip_freq:end,5);

# Create new figure
close
f = figure(1, 'position',[10,10,1800,600]);
#f = figure(1, 'position',[10,10,2800,00]);
hold on

# Sub Plot 1 Position / Time
subplot (1, 3, 1);
plot (time, pos, '-k');
axis("tight")
xlabel ("Time [ms]")
ylabel ("Position [step]")
title([strrep(filename, '_', '\_') " - Position"])
set(gca, "linewidth", 2, "fontsize", 14)

# Sub Plot 2 Power / Time
subplot (1, 3, 2);
hold on;
plot (time, power, 'b');
area (time, power, "FaceColor", "blue");
hold off;
axis("tight")
ylim([-100,100])
xlabel ("Time [ms]")
ylabel ("Power [percent]")
title([strrep(filename, '_', '\_') " - Power"])
set(gca, "linewidth", 2, "fontsize", 14)

# Sub Plot 3 Error / Time
subplot (1, 3, 3);
hold on;
plot (time, error, 'r');
area (time, error, "FaceColor", "red");
axis("tight")
ylim([-200,200]) 
hold off;
xlabel ("Time [ms]")
ylabel ("Error [step]")
title([strrep(filename, '_', '\_') " - Error"])
set(gca, "linewidth", 2, "fontsize", 14)

annotation('textbox',[0.1 0.030 0.1 0.1],'string', notes, 'Interpreter', 'none', 'edgecolor','w','linewidth',1,'FontSize',12,'fitboxtotext','on');
annotation('textbox',[0.1 0.010 0.1 0.05],'string', plot_notes, 'Interpreter', 'none', 'edgecolor','w','linewidth',1,'FontSize',12,'fitboxtotext','on');
print (f, [filename ".jpg"], '-S2700,900');
#close