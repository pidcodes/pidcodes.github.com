---
layout: pid
title: Jetlink
owner: zoompilot
license: MIT
site: https://zoompilot.ai/jetlink
source: https://github.com/zoompilot/jetlink
---
USB gadget a comma device (comma 3X, comma four) presents on its USB-C port while it runs
Jetlink. Interface 0 is vendor specific (0xFF/0xFF/0xFF) with one bulk IN and one bulk OUT
endpoint, carrying camera frames to a host (Jetson, Mac, Linux PC, Android phone) that runs
the driving model and returns its outputs. For an iPhone the gadget is composite and adds a
CDC-NCM network function. The gadget is Linux FunctionFS and configfs code in the Jetlink
repository; the hosts find it by this VID and PID.
