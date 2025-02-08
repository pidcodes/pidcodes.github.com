---
layout: pid
title: Pico Controller
owner: Pinscape
license: MIT
site: https://github.com/mjrgh/PinscapePico/
source: https://github.com/mjrgh/PinscapePico/
---
Pinscape Pico is a comprehensive I/O controller for virtual pinball cabinets
that runs on the Rasbperry Pi Pico (RP2040).  This project is a sequel to the
original Pinscape KL25Z controller, reimplemented from the ground up for the
Pico.  It creates a bridge between virtual pinball software on a PC (such as
Visual Pinball) and the physical input and output devices commonly found in
virtual pin cabs, including button inputs, plunger sensor inputs, accelerometer
(for nudge sensing), and feedback-effect devices (lights, solenoids, motors,
etc).  The Pico communicates with host software on the PC via USB, using a
variety of standard HID interfaces and custom application-specific interfaces.
The project includes firmware for the Pico, plus a set of circuit board designs
for "expansion board" that supplement the Pico's I/O capabilities with added
input ports and high-current output ports for feedback devices.
