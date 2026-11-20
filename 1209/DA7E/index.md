---
layout: pid
title: Inferno Sound Card
owner: network-audio
license: GPL-3.0-or-later OR AGPL-3.0-or-later
site: https://github.com/network-audio/inferno
source: https://github.com/network-audio/inferno/tree/dev/inferno_soundcard
---
Virtual USB Audio Class 2.0 sound cards for Windows whose playback channels are transmitted to, and whose recording channels are received from, a Dante audio network. The devices are implemented in software (Rust, using [usbip-audio](https://github.com/network-audio/usbip-audio)) and attached to Windows through the signed usbip-win2 USB/IP driver, so Windows' own usbaudio2 driver presents them as ordinary sound devices.
