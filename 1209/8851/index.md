---
layout: pid
title: The Tic-Nic PTP Adapter with GPS and Hardware I/O
owner: till-s
license: EUPL
site: https://www.github.com/till-s/tic-nic
source: https://www.github.com/till-s/tic-nic
---
The Tic-Nic is based on the DP83640 PHY with IEEE-1588 (PTP)
support. The PHY has several hardware GPIOs which can be used to
capture or generate PTP-synchronized events. These are routed
to connectors and pins on the board.

A USB CDC-NCM network adapter which connects to the PHY is
implemented in a Trion-T20 FPGA.

The FPGA has plenty of resources for added user functionality
(but the device operates just fine as-is).

The board also features an optional GPS receiver which lets you
operate in PTP grand-master mode. The NMEA data are accessible
via a USB CDC-ACM interface.

The DP83640 is well-supported under linux; a kernel driver
which extends the vanilla CDC-NCM driver to integrate PHY
access via MDIO is part of this project (GPL).
