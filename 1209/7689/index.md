---
layout: pid
title: LGDXRobot2
owner: LGDXRobotics
license: MIT and GPLv3 (ChassisTuner only)
site: https://lgdxrobot.uk/lgdxrobot2/
source: https://gitlab.com/lgdxrobotics/lgdxrobot2-mcu
---
LGDXRobot2 is a mecanum wheel mobile robot designed to achieve decent performance with low-cost hardware. It equipped with a LiDAR, a 9-DOF IMU, and wheel odometry for navigation tasks. It is also fully integrated with the ROS 2 ecosystem, including Nav2 and Gazebo, with the support of the LGDXRobot Cloud robot management system.

The hardware is divided into two controllers. The MCU part runs on an STM32, which controls motor movements in real time and PID control for the motors. The PC part runs ROS2, featuring 3D visualisation in RViz, remote control via joystick, navigation using NAV2, and simulation in Webots.

LGDXRobot2 is distributed across several Git repositories. The project is released under the MIT Licence, except ChassisTuner, which is released under GPLv3.

- [Homepage](https://lgdxrobot.uk/lgdxrobot2/)
- [Documentation](https://lgdxrobot.uk/lgdxrobot2/docs/)
- LGDXRobot2 Design: ([GitLab](https://gitlab.com/lgdxrobotics/lgdxrobot2-design) / [GitHub](https://github.com/yukaitung/lgdxrobot2-design))
- LGDXRobot2 MCU: ([GitLab](https://gitlab.com/lgdxrobotics/lgdxrobot2-mcu) / [GitHub](https://github.com/yukaitung/lgdxrobot2-mcu))
- LGDXRobot2 ChassisTuner: ([GitLab](https://gitlab.com/lgdxrobotics/lgdxrobot2-chassistuner) / [GitHub](https://github.com/yukaitung/lgdxrobot2-chassistuner))
- LGDXRobot2 ROS2: ([GitLab](https://gitlab.com/lgdxrobotics/lgdxrobot2-ros2) / [GitHub](https://github.com/yukaitung/lgdxrobot2-ros2))
