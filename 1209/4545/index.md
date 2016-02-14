---
layout: pid
title: USB-Teletype Adapter
owner: SlothCo
license: MIT
site: https://github.com/epvuc/usb-tty
---
This is a work-in-progress implementation of a usb-serial adapter which looks to the USB host like a CDC ACM class serial device, and to the teletype 60mA current loop like another teletype machine. In passthrough mode, it simply forwards characters back and forth, stripping all but the lower 5 bits in the host-to-teletype direction. In translate mode, it does bi-directional ITA-2 to ASCII character set translation as well, while maintaining LTRS/FIGS shift state and optionally print position so it can insert a CR/LF at the end of a line to prevent overstrike. 
http://heepy.net/index.php/Optocouplers_for_teletype_current_loop
