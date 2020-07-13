# 2020-07-13 Pick and place Experiment

The goal of the experiment is to try the folloiwng actions:

Picking Tool (Gripper and Clamp) from Storage.

Placing Tool (Gripper and Clamp) to Storage.

Placing Clamp on Structure



## Task: Measurement of tools in various position

We use the iGPS hand held probe (HHP) to probe various surface of the tool, with the intention to try tool changing. Intended 

### Dummy Clamp

The probing point (4 to 5 pts on each face) are :

- (main face) large clamp jaw surface where there is no dummy jaw
- (X face) long bottom edge of both parallel finger plates
- (Y face) short front edge of the parallel fingers. (This is a mistake)

The positions probed are:

1. Dummy Clamp in Storage

2. Dummy Clamp on Robot (at known config from Pendent Read out)

3. Dummy Clamp on Beam

### Dummy Gripper

The probing points (4 to 5 pts on each face) are :

- (main face) front face of the cylindrical plate
- (X face) Side face (perpendicular to alu profile) of the square plate
- (Y face) Side face (parallel to alu profile) of the square plate

The positions probed are:

1. Dummy Gripper in Storage
2. Dummy Gripper on Robot

## Task: Calculating the frame to frame transformation

The probed points were fitted on a plane with GH Plane Fit function. (with the obvious outliers discarded)

The main plane was regarded as ground truth.

The intersection of three planes was used as plane origin.

The two intersecting planes were were rotated along normal (by the same but opposite amount) of the main plane until they are 90 degrees. And then their intersection with the main plane was used as X and Y axis of the final plane.



## Task: Robot pick up clamp from storage

We send a approach plane that with offset 400mm, 200mm, 25mm, 2mm, 0mm

Observation: it is off by a few mm in XY plane of Flange

## Task: Robot place clamp on structure

We send a approach plane that with offset 500mm, 400mm, 0mm

Observations: it is off by about 8mm horizontally (deviated towards world -Y)

## Things to improve

- Clamp / Dummy clamp need to close properly and align sturdily on the structure. otherwise the robot cannot find the tool again because it moved.
- Do not probe the wobbly clamp jaw as means of measuring the tool in. This is too inaccurate
- Do not probe the jaw of the clamp at all, because at different position, the jaw maybe at different position (jaw opening).

- Need better way to fit the probed points to a frame (3 orthogonal faces) Seems no way to 