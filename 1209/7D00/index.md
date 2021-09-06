---
layout: pid
title: RIOT standard peripherals
owner: RIOT
license: LGPL-2.1-only
site: http://riot-os.org/
source: https://github.com/RIOT-OS/RIOT
---
This PID describes devices that contain the board's USB-emulated peripherals (currently CDC-ACM (serial) and/or CDC-ECM (Ethernet)).

It is not bound to a particular hardware and can be used by any RIOT board that has a USB peripheral implemented.

It is only applicable to programs that run no own USB code but merely use the peripherals provided by the operating system to satisfy the module requirements of the application.
Those USB devices stand in for special-purpose hardware (UART adapter, Ethernet controller) available on other boards.
