---
layout: pid
title: riotboot DFU Bootloader
owner: RIOT
license: LGPL-2.1
site: http://riot-os.org/
source: https://github.com/RIOT-OS/RIOT
---
This PID describes devices that run RIOT's DFU-based riotboot bootloader.

It is not related to any particular hardware;
which concrete board it is used for is indicated in the DFU details.

Note that devices that use this ID would usually come up with [1209/7D00](https://pid.codes/1209/7D00/);
only when sent to their bootloader mode, they reboot and offer this ID.
