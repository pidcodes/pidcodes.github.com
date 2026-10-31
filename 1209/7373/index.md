---
layout: pid
title: Amateur radio station USB devices
owner: hams.com
license: AGPL-3.0-or-later (firmware, host software, reference designs)
site: https://github.com/BrucePerens/hams_open/tree/main/hardware/fx2_station_io
source: https://github.com/BrucePerens/hams_open/tree/main/hardware/fx2_station_io
---
A family of open source USB devices for amateur radio stations, all using this one VID/PID and identifying themselves to the host with a self-describing `GET_INFO` request (a protocol version and a device sub-ID, so one PID covers several device types without further allocations).

The first implementation is the "station I/O" device, based on the Cypress EZ-USB FX2LP (CY7C68013A) with our own 8051 firmware, loaded into RAM over USB: general-purpose I/O with a function map, a hardware transmit time-out and heartbeat for PTT lines, and PTT lead and lag sequencing. Later device types (for example a USB audio and CAT rig interface) will use the same protocol and the same PID, distinguished by the sub-ID and protocol version.

This is firmware for a popular commercial CYC68013A development board.
We currently see it at https://www.amazon.com/dp/B0855FJDBX for $10
A schematic is at
https://www.openimpulse.com/blog/wp-content/uploads/wpsc/downloadables/CY7C68013A-Schematic-Diagram.pdf
A hardware design guide is at
https://www.infineon.com/assets/row/public/documents/30/42/infineon-an15456-guide-to-a-successful-ez-usb-fx2lp-hardware-design-applicationnotes-en.pdf
It is not currently necessary for anyone to manufacture the board, since
it is so inexpensive ready-made. 

Hardware, firmware and host software for every device under this PID will remain under an OSI-approved open source licence (software) and a recognised open source hardware licence (hardware design files). The protocol and the device-type registry are in the repository.
