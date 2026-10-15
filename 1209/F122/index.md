---
layout: pid
title: FRIZZ
owner: ZUHcYa
license: MIT
site: https://frizz.friedrichwagner.eu
source: https://github.com/ZUHcYa/FrizZ
---
FRIZZ is an MIT-licensed custom firmware for the CHOMPI, a discontinued chromatic sampler and
tape instrument built on an Electrosmith Daisy Seed2 DFM (STM32H750). It runs from the
instrument's SD card and presents itself over USB as a composite device: a UAC1 stereo audio
interface (2 in / 2 out), USB MIDI (clock, notes, CCs, SysEx for its companion web app) and a
mass-storage drive for the instrument's SD card (TinyUSB). The repository holds the full source
and the instrument's open-source hardware files from the original CHOMPI release.

Until now it used the Daisy's default 0483:5740, which Linux's usb.ids names "Virtual COM Port",
so FRIZZ's sound card shows up under that name; its own PID lets hosts show it as FRIZZ.
