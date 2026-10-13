---
layout: pid
title: Flycore
owner: AMOVLAB
license: BSD-3-Clause
site: https://github.com/PX4/PX4-Autopilot/pull/27407
source: https://github.com/PX4/PX4-Autopilot/pull/27407
---
AMOVLAB Flycore is a PX4 open source flight controller board support project.
This PID is requested for PX4 bootloader and PX4 firmware USB CDC ACM device
identification for the AMOVLAB Flycore flight controller.

Flycore is being upstreamed to PX4 in
<https://github.com/PX4/PX4-Autopilot/pull/27407>. PX4 reviewers requested
that the board stop using Auterion's USB VID `0x3185`, so Flycore needs a
public and traceable USB VID/PID allocation under the pid.codes VID `0x1209`.
