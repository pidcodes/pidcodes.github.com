---
layout: pid
title: LectroTIC-4 4-Channel Pulse Timestamper
owner: Lectrobox
license: GPLv3
site: https://lectrobox.com/products/timestamper/
source: https://github.com/jelson/rulos/tree/main/src/app/timestamper
---
A four-channel zero-dead-time pulse timestamper with 4-nanosecond
resolution. Hardware records the moment a pulse arrives on each of
its four inputs against a 250 MHz counter disciplined to an external
10 MHz reference clock, and streams the timestamps to the host as
ASCII over USB CDC. The same USB endpoint accepts SCPI configuration
commands (slope, divider, stream-enable).
