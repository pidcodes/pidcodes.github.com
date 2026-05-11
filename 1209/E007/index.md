---
layout: pid
title: Exp.007 SECCID
owner: vx4.net
license: GPLv3
site: https://github.com/VX4/seccid
source: https://github.com/ckahlo/seccid
---
The "Secure Element CCID" connector allows you to connect to secure sensor busses behind an I2C secure element as simple as a smartcard interface on your favourite desktop OS.\
Because the communication protocol for secure elements is based on ISO7816 and messages to the trusted I2C bus are expressed as ISO7816 APDUs it is convenient to use your favourite programming language, connect to the smartcard (PC/SC) stack on your OS and start talking to your sensors over USB CCID.
As some OS (Linux / Mac OS) require an individual PID/VID combination to register CCID interfaces correctly and to not confuse it with other uses for the interface this PID was requested.
