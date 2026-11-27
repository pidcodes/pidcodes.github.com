---
layout: pid
title: OOS oscilloscope
owner: dekajoule
license: GPL-2.0-or-later
site: https://github.com/dekajoule/oos
source: https://github.com/dekajoule/oos
---
The USB device of OOS, the free operating system for the Rigol DHO800/DHO900 oscilloscopes. OOS runs on the scope's
own processor (RK3399, Linux 6.12) and makes its rear USB-B port a composite USB gadget: a USBTMC (USB488) instrument
for VISA, so the scope can be controlled with SCPI over the cable, and a network link to the computer (RNDIS and CDC
ECM). The gadget, its descriptors and the USBTMC function are all part of OOS's source; the stock firmware's USB IDs
are not used.
