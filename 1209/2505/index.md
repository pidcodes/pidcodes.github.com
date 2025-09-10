---
layout: pid
title: ZettaLights
owner: barkitup
license: CC BY-SA 3.0
site: https://bsky.app/profile/barkitup.dog
source: https://github.com/joshuawboone/barkitup/tree/main/zettalights
---
ZettaLights is an Arduino SAMD based controller board designed for use in wearable and portable applications for LEDs. 
The design has pinouts to add WS1282b LED strips or arrays and an external button for control. 

The main microprocessor is the ATSAMD21E17A from Atmel (Microchip). 
The repo includes the custom firmware for UF2 uploads based on the Rabid Prototypes Tau dev board.

The board includes a charging circuit for the 18650 battery mounted to the bottom. 
The board includes a microphone circuit for audio analysis directly onboard. 

Arduino IDE compatibility with the board is in progress, but UF2 uploads are working now.
Repo includes instructions and board definition for use with Arduino IDE and exporting to .bin file for converting into .uf2 for uploads. 
This process involved a combination of the Adafruit Gemma board definitions for the pin mappings along with the Rabid Prototypes Tau linker scripts for correct memory mapping of the E17 series chips. 

Being arduino based, it can be used for various other functions. 
The design incorporates multiple designs from Adafruit Industries under the same CC BY-SA licensing with omissions and modifications for this application. (Gemma M0, MAX4466, and Micro-Lipo USB-C) 
The designs have been altered and consolidated into a single board for different battery usage, higher potential power draw, and available components. 
