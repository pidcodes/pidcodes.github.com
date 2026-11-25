---
layout: pid
title: MacVisor USB Audio
owner: scaleninja
license: MIT
site: https://github.com/macvisor/macvisor-usb-audio
source: https://github.com/macvisor/macvisor-usb-audio
---
A software-defined USB Audio Class 1.0 device: a stereo speaker and a stereo microphone at 48 kHz, 16-bit. MacVisor presents it to Windows virtual machines over the USB/IP protocol, and Windows binds its built-in USB Audio driver (usbaudio.sys). So Windows on Arm VMs get sound with Microsoft's own driver, with no third-party or test-signed audio driver.

There is no physical hardware. The device's descriptors, control requests and isochronous streaming are implemented in Swift and run on the Mac, behind a USB/IP server; the guest attaches it with a USB/IP client. All of the device code is in the source repository under the MIT licence.

Why one shared PID rather than one per user: the same device is presented to every virtual machine on every Mac running MacVisor, and Windows keys per-device state (the default audio device, volume, and its driver binding) to the VID/PID. A fixed, properly assigned ID keeps that stable across VMs and releases, without borrowing another vendor's ID.
