---
layout: pid
title: UkiUkiduino Bootloader
owner: Unicollabo
license: LGPL-2.1 (firmware), CERN-OHL-P-2.0 (hardware)
site: https://github.com/project-unicollabo/UkiUkiCore
source: https://github.com/project-unicollabo/UkiUkiCore
---
USB CDC bootloader of the UkiUkiduino, an Arduino Uno R3 form factor board based on the Microchip AVR64DU32. It needs a PID separate from the application (PID 4250) so that the Arduino IDE can find the bootloader port after the 1200 bps reset. The bootloader source is in `megaavr/bootloaders/usbcdcboot` of the source repository.
