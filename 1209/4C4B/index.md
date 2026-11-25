---
layout: pid
title: Software Security Key
owner: localkey
license: Apache-2.0
site: https://github.com/yakisoba0728/localkey
source: https://github.com/yakisoba0728/localkey
---
localkey is an independent Rust software security key implementing FIDO2/U2F,
OTP and smart-card applications. Its Linux ConfigFS/FunctionFS transport exposes
a USB composite device on a board with a USB device controller. Linux UHID is
also provided for same-host desktop use. Source code, USB descriptors, transport
code and reproducible tests are available in the linked repository.

This is a software-only project with no PCB design. A shared PID identifies the
project's stable USB report/descriptor contract across installations and USB
gadget-capable boards, allows narrow udev rules, and keeps the shipped identity
distinct from the commercial reference key. One PID is requested for all
supported interface combinations; interfaces are described in the USB descriptors.
The project does not claim hardware isolation, physical user presence or
manufacturer-trusted attestation.
