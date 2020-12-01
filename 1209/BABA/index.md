---
layout: pid
title: Famicom Cartridge Dumper/Writer
owner: Cluster
license: GPLv3
site: https://github.com/ClusterM/famicom-dumper-writer
source: https://github.com/ClusterM/famicom-dumper-writer
---
This is simple dumper/writer for Famicom cartridges and Famicom Disc System cards. This version is much faster compared to
the [old one](https://github.com/ClusterM/famicom-dumper). It's using very accurate M2 cycle simulation and usinc FSMC
(Flexible Static Memory Controller) to access PRG and CHR memory. FSMC is precisely synchronized with the M2 clock signal
using CPLD chip. Also new version uses fast on-chip USB controller instead of slow FT232 USB-UART converter.

![Dumper](https://github.com/ClusterM/famicom-dumper-writer/raw/main/photos/dumper.jpg)

You can use it to:
* Dump cartridges, so you can play copy of your cartridge on emulator
* Read/write battery backed saves, so you can continue your saved game on emulator/console
* Write special cartridges like [COOLGIRL](https://github.com/ClusterM/coolgirl-famicom-multicard)
* Rewrite ultracheap chinese COOLBOY cartridges. Soldering is required for old versions but it's very simple. New versions can be rewritten without soldering
* Test your cartridges
* Read and frite Famicom Disk System cards using FDS drive with RAM adapter
* Some reverse engineering
* Anything else that requires Famicom bus simulation
