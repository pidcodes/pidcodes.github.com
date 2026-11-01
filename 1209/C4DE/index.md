---
layout: pid
title: Cardea Key
owner: shosoin
license: AGPL-3.0
site: https://cardeakey.org/
source: https://github.com/shosoin/cardea-key
---
Open-source security key firmware for the Raspberry Pi Pico 2 (RP2350): FIDO2/WebAuthn and U2F,
OpenPGP card, PIV, OATH and OTP slots in one composite USB device (FIDO HID, keyboard HID and
CCID), built on pico-fido and pico-openpgp. A dedicated ID lets pcscd/libccid recognise the key's
CCID interface out of the box, instead of the shared test PID 1209:0001. Later revisions add an
NXP SE051 secure element and an open board design.
