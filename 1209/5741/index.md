---
layout: pid
title: autopilot
owner: ArduPilot
license: GPLv3
site: http://www.ardupilot.org/
source: https://github.com/ArduPilot/
---
The ArduPilot project supports many open source hardware designs. We
don't design the hardware ourselves (we are a software project), but
we work closely with many organisations and companies that do make
open source hardware. For those that don't have their own VID we use a
single VID/PID pair for all boards, then distinguish boards using the
product ID strings in the bootloader and application firmware. 

Schematics for some of the boards we support are here:

  https://github.com/ArduPilot/Schematics

We use two PIDs, 5740 and 5741. We need two in order to support both
single endpoint and dual-endpoint CDCACM devices on
windows. Dual-endpoint devices need to have a different PID from
single endpoint in order to install the correct driver.

