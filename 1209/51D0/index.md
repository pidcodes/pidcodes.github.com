---
layout: pid
title: SIDOU
owner: dsablic
license: GPL-3.0
site: https://dsablic.github.io/sidou/
source: https://github.com/dsablic/sidou
---
Open-source firmware that turns the M-VAVE FM-1 (a mass-produced USB MIDI synthesizer with a colour display and four encoders, built around a JieLi AC79-series MCU) into a Commodore 64 SID instrument: emulated 6581/8580 chips, a GoatTracker 2 compatible tracker and step sequencer, and .sid playback. The device enumerates as a class-compliant USB MIDI device with a USB audio input. The USB stack is Felucca's (GPL-3.0-only); the firmware is GPL-3.0-only as built (SIDOU's own files are GPL-3.0-or-later). The firmware update loader is Felucca's and keeps its own ID, 0x1209:0x0002; this PID is for SIDOU's application image only. No custom hardware: SIDOU runs on the unmodified FM-1.
