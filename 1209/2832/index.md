---
layout: pid
title: RTL2832U based SDR
owner: librtlsdr
license: GPL-2.0
site: https://github.com/librtlsdr
source: https://github.com/librtlsdr/librtlsdr
---
There are multiple vendors with different vendor/product IDs, see https://github.com/librtlsdr/librtlsdr/blob/master/rtl-sdr.rules
But, because the dongles main purpose is DVB-T, usually the dvb-modules (or original drivers) will lock these devices - unless uninstalling or blacklisting.
Registering a new vendor/product ID (not used from original drivers) will allow undisturbed use as SDR device.
The USB-dongles vendor and product IDs can be modified utilitzing 'rtl_eeprom'.
Main advantage is to allow usage of 2 devices - with and without modification - in parallel: one for watching DVB-T and the other as SDR.
