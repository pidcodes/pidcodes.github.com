---
layout: pid
title: GpuVM Audio
owner: alenj0x1
license: MIT
site: https://alenj0x1.github.io/gpuvm/
source: https://github.com/alenj0x1/gpuvm
---
A USB Audio Class 1 speaker (48 kHz, 16-bit stereo, full speed) that GpuVM serves over USB/IP inside a
Hyper-V virtual machine. usbip-win2 attaches it, Windows drives it with its built-in usbaudio.sys, and the
VM's sound can then be streamed with Sunshine and Moonlight. Software only: the device is implemented in
C# (`guest/audio/UsbAudioServer.cs`), no custom hardware.
