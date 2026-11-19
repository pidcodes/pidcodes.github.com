---
layout: pid
title: Pico FIDO2 Security Key
owner: rezamarzban
license: GPL-3.0-only
site: https://github.com/rezamarzban/pico-fido-rs/tree/atecc1
source: https://github.com/rezamarzban/pico-fido-rs/tree/atecc1
---

An open-source FIDO2 and U2F USB security key based on the Raspberry Pi Pico (RP2040) and ATECC608A hardware secure element.

The firmware is written in Rust using Embassy and Google's OpenSK CTAP implementation. The ATECC608A generates and protects credential private keys, while the RP2040 handles USB HID, FIDO2 protocols, PIN management, and encrypted flash storage.