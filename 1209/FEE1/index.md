---
layout: pid
title: XENPAD One
owner: essotec
license: GPL-3.0-or-later
site: https://xenpads.com
source: https://github.com/xenpads/xenpad-firmware
---
A programmable USB button with a full-colour indicator, built on a Waveshare
RP2040-Zero with a mechanical switch and a WS2812. Firmware uses the Raspberry
Pi Pico SDK and TinyUSB and is released under the GNU General Public License
v3 or later. The wire protocol header and the reference host tools are MIT, so
that host software talking to the device is not bound by copyleft.

The device exposes two HID interfaces: a keyboard interface, which sends
shortcuts stored in the device's own flash, and a vendor interface (usage page
0xFF00) used by host software to receive gesture events and drive the
indicator. Routing is configurable per gesture. The firmware is fully usable
without any host software.
