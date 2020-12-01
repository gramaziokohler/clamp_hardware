# CL1 Drivetrain Test with 15 and 16 mm holes



The goal of this test is to determine the suitability of the 775 motor in performing the screwing task in CL1 design.

Two 775 motor are run at 14.4V using 4-cell Li-Po battery, with different planetary gearbox. Motor diameter is 42mm, length is 66.5mm without gearbox or encoder. The encoder has unknown pulse per motor rotation, and planetary gearbox ration is unknown. However combined step/sec is determined experimentally. 



The CL1 prototype has a secondary 1:20 worm drive gearbox that is tested together.

| Gear Box                                                | 1:13 (2 stage) | 1:49 (3 stage) |
| ------------------------------------------------------- | -------------- | -------------- |
| Rated torque (Nm)                                       | 2              | 3              |
| Rated RPM                                               | 150            | 60             |
| Rated current (A)                                       | <=6            | <=3.5          |
| Rated toque (Nm)                                        | 2              | 3              |
| Steps per planetary gearbox revolution                  | 915            | 2960           |
| RPM of motor and planetary gearbox at 2000steps/s (rpm) | 131.1          | 40.5           |
| Steps per secondary (1:20) gearbox revolution.          | 18300          | 59200          |
| Time for 1 secondary rev at 2000steps/s  (seconds)      | 9.15           | 29.6           |

The screw used in this test is the long screw made by Luca. The threaded part is 50mm long (10 rotation).

## Test Result

### 1:13 Gear - 2000steps/s - Dry Run (before changing plastic tube)

![result_2020-11-18_15-07-15](result_2020-11-18_15-07-15.jpg)

### 1:13 Gear - 2000steps/s - No base plate

![result_2020-11-18_15-11-30](result_2020-11-18_15-11-30.jpg)

### 1:13 Gear - 2000steps/s - No worm gear

![result_2020-11-18_15-13-22](result_2020-11-18_15-13-22.jpg)

### 1:13 Gear - 2000steps/s - No load (Base Line)

![result_2020-11-18_15-09-39](result_2020-11-18_15-09-39.jpg)

### 1:49 Gear - 2000steps/s - No base plate

![result_2020-11-18_15-20-30](result_2020-11-18_15-20-30.jpg)

### 1:49 Gear - 2000steps/s - No load (Base Line)

![result_2020-11-18_15-21-51](result_2020-11-18_15-21-51.jpg)

### 1:49 Gear - 3000steps/s - No load (Base Line)

![result_2020-11-18_15-22-33](result_2020-11-18_15-22-33.jpg)

### 1:49 Gear - 2000steps/s - 15mm hole 

#### Start (#1) ~25%

![result_2020-11-18_16-00-10](result_2020-11-18_16-00-10.jpg)

#### Start (#2) ~25%

![result_2020-11-18_16-40-26](result_2020-11-18_16-40-26.jpg)

#### End (#1) ~65%

![result_2020-11-18_16-09-03](result_2020-11-18_16-09-03.jpg)

#### End (#2) ~70%

![result_2020-11-18_17-16-48](result_2020-11-18_17-16-48.jpg)

### 1:49 Gear - 2000steps/s - 16mm hole 

#### Start (#1) ~25%

![result_2020-11-18_16-15-18](result_2020-11-18_16-15-18.jpg)

#### Start (#2) ~25%

![result_2020-11-18_16-30-37](result_2020-11-18_16-30-37.jpg)

#### End (#1) ~60%

![result_2020-11-18_16-22-28](result_2020-11-18_16-22-28.jpg)

#### End (#2) ~60%

![result_2020-11-18_16-36-58](result_2020-11-18_16-36-58.jpg)

### 1:13 Gear - 2000steps/s - 16mm hole 

#### Start (#1) ~70%

![result_2020-11-18_18-05-09](result_2020-11-18_18-05-09.jpg)

#### Start (#2) ~40%

![result_2020-11-18_18-11-20](result_2020-11-18_18-11-20.jpg)

#### End (#1) ~80%

![result_2020-11-18_18-08-38](result_2020-11-18_18-08-38.jpg)

#### End (#2) ~70%

![result_2020-11-18_18-18-55](result_2020-11-18_18-18-55.jpg)

### 1:13 Gear - 2000steps/s - 15mm hole 

#### Start ~50%

![result_2020-11-18_18-22-09](result_2020-11-18_18-22-09.jpg)

#### Stalled ~100%

![result_2020-11-18_18-24-51](result_2020-11-18_18-24-51.jpg)



## Summary

| 2000 steps / second Result      | 1:13    | 1:49                |
| ------------------------------- | ------- | ------------------- |
| Max Power @ No worm gearbox     | 20%     |                     |
| Max Power @ No base plate       | 20%     | 25%                 |
| Max Power @ No load (Base line) | 30%     | 25% (30% @ 3000s/s) |
| Max Power @ 16mm hole           | 80%     | 60%                 |
| Max Power @ 15mm hole           | Stalled | 70%                 |



## Conclusion

The 1:13 Gearbox Motor cannot insert the screw to completion when the hole size is 15mm. When the hole is 16mm, it is possible but consumes 80% of power with observable brush sparks and heat-up.

The 1:49 can reliably screw in entire 50mm screw length in either 15mm or 16mm hole scenario. The maximum power draw is 70% in 15mm hole, leaving some reserve for safety margin.

In general it is a good idea to have a **hole size larger then the inner diameter** (15mm) of screw. This should accommodate tolerance in hole center alignment. 16mm is perhaps too much, 15.5 might be more suitable. 

The 16mm screw hole is still very strong in final pullout force. However **pull force** in initial engagement could be lower and reduce the pull-together force that helps assemble the joint. 

The **reaction rotation force** is very high. This may increase the pressure between the lap joint shoulder faces when being rubbed and thus increase friction.

We can potentially run the 1:49 motor at 3000 step/sec (Stage1 : 60.7 rpm / Stage 2: 3 rpm) for screwing operation, and even higher speed for no load movements.  



