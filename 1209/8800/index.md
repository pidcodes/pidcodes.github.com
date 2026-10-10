---
layout: pid
title: Zolex Superboard
owner: zolex
license: CERN-OHL-S-2.0
site: https://zolex.co/sb
source: https://github.com/zolexlabs/superboard
---
Zolex Superboard -- RP2040 dev board with a built-in logic analyser, CMSIS-DAP probe and 25-LED dashboard.

Hardware (schematic, PCB, BOM) is CERN-OHL-S-2.0. The logic analyser is MIT throughout -- wire protocol
and device firmware at <https://github.com/zolexlabs/superboard/tree/main/firmware>, host implementation
at <https://github.com/zolexlabs/superboard/tree/main/software/superboard-la>. The debug interface is
CMSIS-DAP, so pyOCD and OpenOCD drive it unmodified.
