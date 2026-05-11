---
layout: pid
title: m1n1 CDC-ACM Proxy/Console Device
owner: AsahiLinux
license: MIT
site: https://github.com/AsahiLinux/m1n1
source: https://github.com/AsahiLinux/m1n1
---
m1n1 is an open early-stage bootloader for Apple Silicon macs.  It is
designed to take the place of a XNU kernel in the Mac boot process and
present a standard Linux devicetree boot environment to downstream
software, such as U-Boot and Linux kernels.

m1n1 also serves as a hardware reverse engineering and experimentation
platform, providing a terminal and remote control interface over UART
and USB that can be used to interactively research the device's hardware
from a host machine, load kernels remotely, run macOS as a VM guest, and
more.

This USB device is the USB gadget mode device presented by m1n1 using
the USB device controller built into these SoCs, which implements the
CDC-ACM class and serves as both an ASCII tty and a binary proxy
protocol to issue requests and receive events for remote control. It can
be used from any host that can run Python scripts. The same protocol is
also exposed over the UART, but this requires a special cable or host
device.

Note: idProduct 0x316D is 'm1' in little-endian ASCII.
