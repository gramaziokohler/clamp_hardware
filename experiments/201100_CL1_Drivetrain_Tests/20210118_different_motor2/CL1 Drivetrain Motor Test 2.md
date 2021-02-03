# CL1 Drive Train Motor Test 2

This experiment is a follow up of the previous motor test, to determine if newly sourced motors are better at delivering the required torque, and at what speed.



The test setup is largely the same with previous test "CL1 Drivetrain Test with 15 and 16 mm holes". However **only 16mm holes** will be used as it is observed to require less torque and perhaps less accuracy in hole alignment. **Higher speeds** will also be test because these motors are larger. Focus will be on the 2nd stage output speed of the system.

775 motor specification is varied highly from source to source, here I used the spec sheet from HengJie for a more direct comparison with their other motors. Turns out the Hengjie is not very careful assembling and shipping their products, I received wrong gearbox combination from what I intended to order. I ended up having to open the gearboxes to back-calculate the gear ratio by myself.

The multi-stage planetary gearbox have a fixed ring gear across all stages. All of them have 46 gears regardless of gearbox size. The gear ratio of each step can be determined by the number of teeth on Ring vs Sun: (Teeth-on-ring) / (Teeth-on-sun) + 1

Observed gear box gear teeth and ratios:

| Sun Gear | Planetary Gear (3 planets) | Ring Gear | Calculated Ratio (reduction) |      |
| -------- | -------------------------- | --------- | ---------------------------- | ---- |
| 8        | 19                         | 46        | 6.75                         |      |
| 11       | 17                         | 46        | 5.1818                       |      |
| 14       | 16                         | 46        | 4.2857                       |      |
| 17       | 14                         | 46        | 3.7058                       |      |

Motors I end up receiving:

| Motor                                         | HJX42RH71i / 775                            | HJX45RM35i                | HJX45RM51i                                  | HJX50RNA27i                | ~~HJX50RNA~~    |
| --------------------------------------------- | ------------------------------------------- | ------------------------- | ------------------------------------------- | -------------------------- | --------------- |
| Test ID                                       | Motor #1                                    | Motor #2                  | Motor #3                                    | Motor #4                   |                 |
| Motor Size                                    | **⌀42**x66.5                                | **⌀45**x66                | **⌀45**x66                                  | **⌀50**x88                 | **⌀50**x88      |
| Gearbox Ratio (reduction)                     | 71.16                                       | 34.97                     | 50.89                                       | 22.21                      | 51 ?            |
| Gearbox combinations                          | (1+46/17) *<br />(1+46/11) *<br />(1+46/17) | (1+46/8) *<br />(1+46/11) | (1+46/17) *<br />(1+46/17) *<br />(1+46/17) | (1+46/14) *<br />(1+46/11) |                 |
| Gearbox Stages                                | 3                                           | 2                         | 3                                           | 2                          | 3               |
| Gearbox Length (mm)                           | 49.5                                        | 39.8                      | 49.5                                        | 39.8                       | 49.5            |
| Stall Torque (Nm)                             | 6.43                                        | 4.8                       | 7.47                                        | 9.53                       | 15.7            |
| Rated Torque (Nm)                             | **1.43**                                    | **1.18**                  | **1.66**                                    | **2.12**                   | **3.5**         |
| Rated RPM (min<sup>-1</sup>)                  | 78.4                                        | 114                       | 78.4                                        | 118.5                      | 62.7            |
| Voltage (V)                                   | 12                                          | 12                        | 12                                          | 12                         | 12              |
| Rated current (A)                             | 2.0                                         | 2.45                      | 2.45                                        | 4.5                        | 4.5             |
| Stall current (A)                             | 10                                          | 13.2                      | 13.2                                        | 15.8                       | 15.8            |
| Motor Power (W)                               | 20                                          | 27                        | 27                                          | 42                         | 42              |
| Theoretical Output (W)                        | 11.7                                        | 14.0                      | 13.6                                        | 26.3                       | 22.9            |
| Rated RPM after 1:20 drive (min<sup>-1</sup>) | **3.9**                                     | **5.7**                   | **3.9**                                     | **5.9**                    | **3.135**       |
| Weight (g)                                    | 734                                         | 717                       | 813                                         | 1077                       |                 |
| Price (CNY / CHF)                             | 225  (30.87)                                | 260 (35.67)               | 265 (36.35)                                 | 355 (48.70)                | ~~365 (50.07)~~ |



Timber sample with 16mm hole.

New test regime with 16mm hole:



| Speed                                         | No Load (One turn) | Load (16mm hole) (45mm travel / 9 turns) | Notes                   |      |
| --------------------------------------------- | ------------------ | ---------------------------------------- | ----------------------- | ---- |
| Test to confirm step to output ratio          | Case #1            |                                          |                         |      |
| Test at fixed **Step** speed (3000 steps/s)   | Case #2, 1 Sample  | Case #12, 2 Sample (3 if inconclusive)   |                         |      |
| Test at fixed **Stage 2 Output** Speed (3rpm) | Case #3, 1 Sample  | Case #13, 2 Sample (3 if inconclusive)   | approx. 7 min / 100mm   |      |
| Test at fixed **Stage 2 Output** Speed (4rpm) | Case #4, 1 Sample  | Case #14, 2 Sample (3 if inconclusive)   | approx. 5 min / 100mm   |      |
| Test at fixed **Stage 2 Output** Speed (5rpm) | Case #5, 1 Sample  | Case #15, 2 Sample (3 if inconclusive)   | approx. 4 min / 100mm   |      |
| Test at fixed **Stage 2 Output** Speed (6rpm) | Case #6, 1 Sample  | Case #16, 2 Sample (3 if inconclusive)   | approx. 3.3 min / 100mm |      |
| Test at fixed **Stage 2 Output** Speed (8rpm) | Case #7, 1 Sample  | Case #17, 2 Sample (3 if inconclusive)   | approx. 2.5 min / 100mm |      |



## Case 1 (Ratio Test)

| Motor             | #1 HJX42RH71i / 775  | #2 HJX45RM35i            | #3 HJX45RM51i        | #4 HJX50RNA27i          |
| ----------------- | -------------------- | ------------------------ | -------------------- | ----------------------- |
| Gear ratio        | 71.16                | 34.97                    | 50.89                | 22.21                   |
| Encoder Steps     | 64                   | 64                       | 64                   | 64                      |
| Theoretical Steps | 91,084               | 44800                    | 65139                | 28428                   |
| Steps tested      | 91,084 over          | 44800 over 2 mark        | 65139 over 2.5 marks | 28428 over 4 marks      |
|                   | 90084 over 1 mark    | 44000 looks ok           | 64000 over 0.5 mark  | 28000 over 2 marks      |
|                   | 89000 under 1/4 mark | 88000 less 1 mark        | 63800 over 0.5 mark  | 27700 looks good        |
|                   | 89200 looks good     | 88400 over 1.5 mark      | 127600 over 0.5 mark | 55400 over 1/3 mark     |
|                   |                      | 88000 less 1 mark        | 127400 less 0.5 mark | 55300 less 1 mark (WTF) |
|                   |                      | 88150 over 1/4 mark      | 127500 over 0.5 mark | 55380 less 0.5mark      |
|                   |                      | 88100 over 1 marks (WTF) |                      | 55390                   |
| Accepted          | **89200**            | **44000**                | **63750**            | **27700**               |

## Case 2 to 7 (No Load)

Gear Ratios of each system. Formular for calculating **steps/s** based on : (target_rpm) x (steps/rev) / 60

| Motor                                     | Case | HJX42RH71i / 775 | HJX45RM35i | HJX45RM51i | HJX50RNA27i |
| ----------------------------------------- | ---- | ---------------- | ---------- | ---------- | ----------- |
| Steps for 1 turn                          |      | **89200**        | **44000**  | **63750**  | **27700**   |
|                                           | 2    | 3000 ok          | 3000 ok    | 3000 ok    | 3000 ok     |
| Motor **steps/s** for **2nd stage 3rpm**  | 3    | 4460 ok          | 2200 ok    | 3187 ok    | 1385 ok     |
| Motor **steps/s** for **2nd stage 4rpm**  | 4    | 5946 ok          | 2933 ok    | 4250 ok    | 1846 ok     |
| Motor **steps/s** for **2nd stage 5rpm**  | 5    | 7433 ok          | 3666 ok    | 5312 ok    | 2308 ok     |
| Motor **steps/s** for **2nd stage 6rpm**  | 6    | 8920 fail        | 4400 ok    | 6375 ok    | 2770 ok     |
| Motor **steps/s** for **2nd stage 8rpm**  | 7    | ~~11893~~        | 5866 ok    | 8500 fail  | 3693 ok     |
| Motor **steps/s** for **2nd stage 10rpm** | 8    |                  | 7333 fail  | ~~10625~~  | 4616 ok     |
| Motor **steps/s** for **2nd stage 12rpm** |      |                  |            |            | 5540 ok     |
|                                           |      |                  |            |            | 6200 ok     |
|                                           |      |                  |            |            | 7000 fail   |

## Case 13 to 18 (Screw into 16mm)

Case 1x is with Luca's screw

Case 2x is with new screw sample

| Motor                                     | Case  | HJX42RH71i / 775 | HJX45RM35i | HJX45RM51i | HJX50RNA27i       |
| ----------------------------------------- | ----- | ---------------- | ---------- | ---------- | ----------------- |
| Steps for 10 turn                         |       | **892000**       | **404000** | **637500** | **277000/249300** |
| Motor **steps/s** for **2nd stage 3rpm**  | 13/23 | 4460 ok          | 2200 ok    | 3187       | 1385              |
| Motor **steps/s** for **2nd stage 4rpm**  | 14/24 | 5946 ok          | 2933 ok    | 4250       | 1846              |
| Motor **steps/s** for **2nd stage 5rpm**  | 15/25 | 7433 ok          | 3666 ok    | 5312       | 2308 ok           |
| Motor **steps/s** for **2nd stage 6rpm**  | 16    | fail for sure    | 4400 ok    | 6375       | 2770 ok           |
| Motor **steps/s** for **2nd stage 8rpm**  | 17    |                  | 5866 stall |            | 3693 ok           |
| Motor **steps/s** for **2nd stage 10rpm** | 18    |                  |            |            | 4616 ok           |
| Motor **steps/s** for **2nd stage 12rpm** | 19    |                  |            |            | 5540 stalled      |



## Case 30 Two Step Hole (10mm + 16mm hole)

Motor **#4** for 2nd stage 10rpm (4616 steps/s)

Sample 1 - 6 turns (149580)

Sample 2 - 10 turns (249300)

Sample 3 - 10 turns (249300)

Sample 4 - 1 turns (24930)

Sample 5 - 1 turns (24930)

Undo

Sample 6 - 1 turns (24930)

Sample 7 - 10 turns (249300)

Sample 8 - 10 turns (249300)

Sample 9 - 10 turns (249300)

Successful

# Summary



| Motor                            | HJX42RH71i / 775        | HJX45RM35i                | HJX45RM51i              | HJX50RNA27i                  |
| -------------------------------- | ----------------------- | ------------------------- | ----------------------- | ---------------------------- |
| Max RPM @ no Load                | 5                       | 8                         | 6                       | 13.5                         |
| **Max RPM @ Screw 1, 16mm hole** | **5 (8 min for 200mm)** | **6 (6.6 min for 200mm)** | **5 (8 min for 200mm)** | **10 rpm (4 min for 200mm)** |
|                                  |                         |                           |                         |                              |
| Weight (g)                       | 734                     | 717                       | 813                     | 1077                         |
| Price (CNY / CHF)                | 225  (30.87)            | 260 (35.67)               | 265 (36.35)             | 355 (48.70)                  |

