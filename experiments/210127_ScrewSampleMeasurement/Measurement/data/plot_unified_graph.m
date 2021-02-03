clear
  
# Constant converting force to Torque
sensor_distance_meter = -0.05

## Scan for all files with this format:
all_file_names = glob('result_batt_*.csv')

figure(1, 'position',[10,10,600,400]);

hold on
  
for i=1:numel(all_file_names)
  ## Extract file name
  [dir, file_name, ext] = fileparts (all_file_names {i})
  data = csvread ([file_name ".csv"])
  
  ## Remove first row
  data(1,:)=[]

  plot(data(:, 2), data(:, 4)* sensor_distance_meter)

endfor

hold off

# Axis Limit Configuration
axis("tight")
ylim([-0.2,20])

# Labels and Title
xlabel ("Time [s]")
ylabel ("Torque [Nm]");
title(["Screwing Torque during assembly (All files)"], 'Interpreter', 'none')
grid on

print(1, ["all_torque_plot.jpg"], "-djpg", "-S1200,800")


