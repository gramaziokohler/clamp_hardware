clear
file_name = "result_batt_031"
data = csvread ([file_name ".csv"])
data(1,:)=[]

sensor_distance = -0.05

figure(1, 'position',[10,10,400,300]);
plot(data(:, 2),data(:, 4)*sensor_distance)

axis("tight")
ylim([-0.2,16])

xlabel ("Time [s]")
ylabel ("Torque [Nm]");

title(["Screwing Torque during assembly (" file_name ")"], 'Interpreter', 'none')
grid on
print(1, [file_name ".jpg"], "-djpg", "-S400,300")
