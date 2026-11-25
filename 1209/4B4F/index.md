---
layout: pid
title: Koala Microphone
owner: regulad
license: AGPL-3.0-or-later
site: https://github.com/regulad/Koala
source: https://github.com/regulad/Koala
---
Koala is an open-source Windows application that makes an iPhone the
computer's microphones and camera, with no app on the iPhone.

Each of the iPhone's microphones becomes a software-defined USB Audio Class 2
capture device, served over USB/IP on the loopback interface and attached
through usbip-win2, so that Windows' in-box audio driver presents it as a
microphone. A stable PID keeps these virtual devices apart from unrelated USB
and USB/IP devices on users' systems.
