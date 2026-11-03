---
layout: pid
title: Bit-Perfect Checker
owner: metebalci
license: MIT
site: https://bpc.metebalci.com
source: https://github.com/metebalci/bit-perfect-checker
---
A USB Audio Class 2 device that proves whether an audio playback chain
(player, operating system, USB audio stack) delivers a test file
bit-perfect. Its firmware, for STM32 development boards and others,
receives audio at every rate from 44.1 to 768 kHz, checks every sample
against the BPC1 test signal, and reports a verdict per file on LEDs or
on display and in a serial log. The firmware, the test-file generator
and the reference checker are MIT-licensed.

The firmware runs on off-the-shelf development boards, such as the STM32
NUCLEO-U5A5ZJ-Q, and the project will publish compiled firmware images
to be used directly.
