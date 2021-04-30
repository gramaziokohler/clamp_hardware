# Notes about Screw sample ordered from China

The order is placed on TaoBao. The technical drawings given to the manufacturer are  [Left_In_Screw_11.pdf](Setup\Left_In_Screw_11.pdf)  and  [Left_In_Screw_20.pdf](Setup\Left_In_Screw_20.pdf) 

In general the screw we got back looks good.  Threads are sharp and debris cutting slots are sharp.

## Mistakes 

Screw head hole pattern is not correct. Hole sizes are too small. 

Screw head holes should not be drilled through were drilled through.

![IMG_20210119_160934](Setup/IMG_20210119_160934.jpg)

Screw threads external diameter are smaller (17.57mm) than the drawing (18.00mm). This wasn't explicitly communicated to the manufacturer. 

![IMG_20210121_184059](Setup/IMG_20210121_184059.jpg)

## Next Order

Things to consider in next order. 

- Screw head needs to be corrected
- Screw threads external diameter needs to be larger. The test with torque proves that Luca's screw with a 18mm external diameter will struggle with the 15mm hole but okay with a 16mm hole. 
- I believe we should use a 16 mm hole to reduce entry torque. I suggest the tolerance of the external diameter to be between 17.80 to 18.00mm 
- Screw shoulder and thread length see the design study below

## Design Study

The following anticlastic roof surface provides rough estimation of the screw length and how many to order. 

![2021-04-27 12_00_30](DesignStudy/2021-04-27%2012_00_30.jpg)

There are two types of joints requiring screws, planar lap joint (requiring shorter screw)  and non-planar lap joints (requiring shorter screw). Image below show both types of joints.

![2021-04-30 18_22_11](DesignStudy/2021-04-30%2018_22_11.jpg)

Based on this study, length suggestions (mm):

|                  | Joint Thickness | Screw Shoulder + Head Length | Screw Thread Length | Total Length |
| ---------------- | --------------- | ---------------------------- | ------------------- | ------------ |
| Planar Joint     | 40 - 60         | 40                           | 40                  | 80           |
| Non-Planar Joint | 60 - 70         | 60                           | 50                  | 110          |


Alternatively, both screw can have the same shoulder length (and different thread length to keep overall length as recommended) to simplify manufacturing.

Number of screws on the structure:

|                  | Primary Structure | Primary Bracing | Secondary Beams | Rafter | Total |
| ---------------- | ----------------- | --------------- | --------------- | ------ | ----- |
| Planar Joint     | 12                | 34              |                 |        | 46    |
| Non-Planar Joint |                   | 4               | 16              | 88     | 108   |

