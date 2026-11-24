---
layout: pid
title: HealthyPi 5
owner: Protocentral
license: MIT (firmware) / CERN-OHL-P v2 (hardware)
site: https://protocentral.com/product/healthypi-5-vital-signs-monitoring-hat-kit/
source: https://github.com/Protocentral/protocentral_healthypi_5
---
HealthyPi 5 is an open-source multi-parameter biosignal acquisition board that
measures ECG, respiration, PPG, SpO2 and body temperature. It runs standalone or
as a 40-pin HAT on a Raspberry Pi.

The hardware is built around an RP2040 dual-core Cortex-M0+ main MCU with 16 MB
of flash, an ESP32-C3 wireless co-processor for BLE and Wi-Fi, a MAX30001 analog
front end for ECG and respiration, an AFE4400 front end for PPG/SpO2, a MAX30205
temperature sensor on the Qwiic/I2C bus, a microSD slot and Li-ion battery
charging. Schematics and board layout are published as EAGLE sources under the
CERN Open Hardware Licence Version 2 - Permissive.

This PID identifies the RP2040's USB full-speed CDC-ACM interface on the primary
USB Type-C port, which streams packetised biosignal frames to the OpenView
desktop application and to user scripts. The firmware is MIT-licensed and comes
in a Zephyr RTOS version (using Zephyr's USB device stack) and an
Arduino/Pico-SDK version; the ESP32-C3 co-processor runs a separate Zephyr
application.
