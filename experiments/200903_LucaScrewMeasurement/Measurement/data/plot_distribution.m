clear
  
# Constant converting force to Torque
sensor_distance_meter = -0.05

## Scan for all files with this format:
all_file_names = glob('result_batt_*.csv')

max_torques = []

for i=1:numel(all_file_names)
  ## Extract file name
  [dir, file_name, ext] = fileparts (all_file_names {i})
  data = csvread ([file_name ".csv"])
  
  ## Remove first row
  data(1,:)=[]
  max_torque = max(data(:, 4)* sensor_distance_meter)
  max_torques = [max_torques , max_torque]
  
endfor

figure(1, 'position',[10,10,600,400]);

histfit(max_torques)

# Axis Limit Configuration
axis("auto")
xlim([0,20])

# Labels and Title
xlabel ("Peak Torque [Nm]")
ylabel ("Occurance");
title(["Distribution of all peak torque ( num_samples = " mat2str(numel(all_file_names)) ", max_torque = "  mat2str(max(max_torques),5) "Nm)" ], 'Interpreter', 'none')
grid on

print(1, ["torque_distribution_plot.jpg"], "-djpg", "-S800,600")
