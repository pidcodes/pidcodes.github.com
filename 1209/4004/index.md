---
layout: pid
title: Smart Coaster
owner: PaulHampson
license: CERN-OHL-S-2.0 license / GPL-3.0
site: https://github.com/paulhampson/smart-coaster-hw
source: https://github.com/paulhampson/smart-coaster-fw
---
A smart drink coaster that allows you to track your fluid consumption through the day.

The firmware is implemented in Rust using the Embassy environment. The software runs on an R2040 and interfaces with a rotary encoder, OLED 
display, RGB LEDs, real time clock and a strain gauge. USB is to be used for firmware update and data interface to extract logs or real-time
data.
