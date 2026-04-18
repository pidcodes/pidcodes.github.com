---
layout: pid
title: Aftertone Brume
owner: aftertonesignal
license: MIT OR Apache-2.0
site: https://aftertone.co/brume/
---

Brume is a 4-part multi-timbral standalone synthesizer (Complex, Harmonic, Timbral, Granular oscillator engines) built on a Raspberry Pi Compute Module 5 platform with a touchscreen UI. Its USB-C bridge — branded "Meridian" — presents the device to a host as a class-compliant USB Audio 2.0 (8-channel per-part stems) + USB MIDI gadget over a single cable.

This PID is also matched by the optional Aftertone Meridian macOS DriverKit extension, which presents Brume as a single unified Core Audio device with per-part channel labels (Complex L/R, Harmonic L/R, Timbral L/R, Granular L/R) instead of the UAC2 spatial-position names (FL, FR, FC, LFE, BL, BR, FLC, FRC) that Apple's class-compliant driver auto-synthesizes.
