---
layout: pid
title: OpenWalkieTalkie
owner: cohdl
license: MIT (software), CERN-OHL-P-2.0 (hardware)
site: https://openwalkietalkie.org/
source: https://github.com/conol-ai/openwalkietalkie
---
OpenWalkieTalkie is an open-source handheld controller for AI coding agents.
It combines a 480 x 480 AMOLED touch screen, scroll wheel, push-to-talk and
navigation buttons, microphone, and speaker, driven by a SiFli SF32LB52x
Cortex-M33 microcontroller.

The USB interface is a vendor-defined HID interface used by the open-source
host service for agent messages, controls, audio, and firmware updates. The
application and recovery bootloader share this PID and use protocol commands
to distinguish their modes. Bluetooth LE provides a wireless link.

Firmware and host software are available under the MIT license. Editable
CoHDL schematic sources, KiCad PCB layouts, and enclosure CAD are published
under CERN-OHL-P-2.0 in the same repository's hardware directory.
