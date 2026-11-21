---
layout: pid
title: uPhysilab
owner: IESPC
license: GPL-3.0-or-later (firmware), CERN-OHL-S-2.0 (hardware)
site: https://gitlab.com/iespc/physilab
source: https://gitlab.com/iespc/uphysilab
---

Open-source hardware and firmware for computer-assisted experiments
(ExAO, "expérimentation assistée par ordinateur") in French high schools (lycées).

A range of USB sensors built around the Raspberry Pi Pico (RP2040/RP2350)
running a custom MicroPython distribution. The hardware is designed to be built
and cloned freely by teachers; nothing is sold commercially.

A single PID covers the whole range. The host software PhysiLab (GPL-3.0, Python,
PyUSB/pyserial) detects devices by VID/PID, then reads a catalogue file stored on
the device, which lists the sensors it provides. Per-model PIDs are therefore
not needed.
