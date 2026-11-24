---
layout: pid
title: HealthyPi 6
owner: Protocentral
license: MIT (firmware) / CERN-OHL-P v2 (hardware)
site: https://github.com/Protocentral/healthypi-6-fw
source: https://github.com/Protocentral/healthypi-6-fw
---
HealthyPi 6 is an open-source multi-parameter biosignal monitor that measures
ECG (Lead I, Lead II and V1), thoracic-impedance respiration, PPG/SpO2 and body
temperature, with expansion slots for EEG and neural-network compute modules.

The hardware is built around an STM32H757 dual-core MCU (Cortex-M7 application
core, Cortex-M4 signal-processing core), an ESP32-C6 Wi-Fi/BLE co-processor, an
ADS1294R analog front end for ECG and respiration, an AFE4400 front end for PPG,
32 MB SDRAM, QSPI flash, a microSD slot, a touch display and Li-ion charging.

This PID identifies the STM32H757's USB full-speed device port. [...two CDC-ACM
(.HP6 stream + MCUmgr/SMP), MSC only in transfer mode, same VID/PID for the
MCUboot "HealthyPi 6 Recovery" port...]
