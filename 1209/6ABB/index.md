---
layout: pid
title: Gabbro virtual FIDO2 authenticator
owner: gabbro-foss
license: GPL-3.0-only
site: https://github.com/gabbro-foss/gabbro
source: https://github.com/gabbro-foss/gabbro
---
Gabbro is a free and open-source password manager. On Linux it exposes
the passkeys stored in its vault as a virtual FIDO2/CTAP2 security key,
created through the kernel's /dev/uhid interface, so browsers can use
them via the standard USB HID (CTAPHID) path.

The project is software-only: there is no physical hardware, and every
installation presents the same virtual device. A fixed, registered
VID/PID is needed so that FIDO tooling and udev rules can identify the
authenticator, and so it cannot collide with other projects using the
shared testing PID (1209/0001). Per-user PIDs would not make sense here,
same as for 1209/F1D0 (Pi Zero Security Key).
