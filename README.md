# clamp_hardware

Mechanical design for remote controlled robotic actuators. This includes various clamps and grippers. 

This repo is part of the [Robotic Assembled Timber Structures with Integral Timber Joints](https://github.com/gramaziokohler/integral_timber_joints) project. 

## Repo folder structure

Mechanical design files (Rhino 3D files, production drawings), ordered by clamp and gripper types:

- **/clamps** - Robotic clamp design 
- **/grippers** - Robotic gripper design

Experiment setup (Rhino 3D files, photographs, writeup) including results and interpretation.

- **/experiments** - Physical tests constructed and performed to validate mechanical design.

## Design Goals

The mechanical design of the clamps is to be able to achieve the following functions: 

- Deliver high assembly force to assemble tight-fitting timber joints
- The clamps cannot relocate itself but rely on robotic manipulator (such as a robotic arm) for locomotion.
- The clamps can be attached to a timber beam and operate remotely.
- Accommodate different types of timber joints

## Clamp Design

### Clamp CL1

**Cross Lap Joint** Clamp for **Planar Orthogonal** joint angle. 

This is the first clamp prototype with off-the-shelf actuator and two jaw design. This proof-of-concept device successfully performed a single joint assembly task. 

This prototype exposed the limitation of off-the-self linear actuators which were designed to deliver push force, not pull force. 

- Maximum assembly force ~400kgf.
- Robotic quick changer integrated but not tested
- No remote control capability
- Linear actuator gear box housing failed during stress test

### Clamp TL1

**Tee Lap Joint** Clamp for **Planar Variable** joint angle.

This clamp is designed specifically for the GKR Tokyo Pavilion project with revised linear actuator design using ball screw and encoder DC motor. It has one clamp jaw that presses on the middle of the lap joint.

Two units of this clamp was created and two experiments were performed on assembling timber beams in during the Tokyo project. 

- No robotic quick changer integration
- Remote control and battery operation tested
- Two way synchronization not tested

Notable mechanical features:

- Single piece jaw design (combining linear guide mount and ball nut mount)
- Highly reliable worm-geared DC motor with dual channel encoder
- Small number of custom-piece

### Clamp CL2

**Cross Lap Joint** Clamp for **Planar Variable** joint angle. 

This clamp is a continuation of the single piece jaw design in TL1. This clamp is currently in development.





## Validation Experiments

**Ball Screw Actuation Experiment** - After the failure of the prototype clamp CL1 with integrated linear actuator, the decision is to construct the linear actuation from ball screw and motor from parts. This test validate the selection of ball screw and motor by testing the pull force developed.

**Linear Guide and Clamp Jaw Experiment** - Learning from the experience of the prototype clamp CL1, the circular linear guide combination with linear actuator was insufficient to prevent small rotational movements. This experiment was devised to assess replacement with a rolling-ball linear guide and the corresponding clamp jaw design. The conclusion of this experiment leads to the development of the single-piece jaw design for clamp TL1 and CL2



Credits
-------------

This repository was created by Pok Yin Victor Leung <leung@arch.ethz.ch> [@yck011522 ](https://github.com/yck011522) at [@gramaziokohler](https://github.com/gramaziokohler)

