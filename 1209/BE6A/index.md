---
layout: pid
title: Phone management interface
owner: bergamota
license: MIT
site: https://bergamota.zesmoi.com.br/
source: https://github.com/ry-diffusion/Bergamota
---
The USB device that Bergamota's kernel presents on a Xiaomi Poco F1 (Snapdragon 845, Synopsys DWC3 controller, run by our own driver in a patched XNU): CDC-ECM USB Ethernet plus a vendor interface (class ff/62/01, WebUSB and Microsoft OS 2.0 descriptors) that the open-source host tools (a Rust CLI and a web page using WebUSB) use for status, logs, files and reboots. The phone hardware is stock; the whole USB function is open-source software in the repository (kernel driver in xnu/patches-*/, protocol in docs/BERGA_USB.md, host tools in tools/berga). It replaces the pid.codes test PID 1209:0001 the project has used during development.
