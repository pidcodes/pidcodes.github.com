---
layout: pid
title: DISLED (debug firmware)
owner: oui-dev
license: GPL-3.0-or-later (firmware and software), CERN-OHL-S-2.0 (hardware)
site: https://github.com/Oui-Dev/DISLED
source: https://github.com/Oui-Dev/DISLED
---
Debug build of the DISLED USB status light firmware (1209:D1ED): the same vendor-defined HID interface plus a CDC serial console for logs and tuning. It uses its own PID because its interface set differs from the release build, and hosts cache device descriptors per VID:PID. Debug builds are published with every firmware release for developers.
