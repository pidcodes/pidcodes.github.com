---
layout: pid
title: dragonBoot
owner: bad_alloc
license: BSD-3-Clause
site: https://github.com/bad-alloc-heavy-industries/dragonBoot
source: https://github.com/bad-alloc-heavy-industries/dragonBoot
---
To support bad_alloc USB products, and support the need to update firmware on
them without expensive JTAG adaptors, the idea of a common general-purpose DFU
bootloader was devised - dragonBoot

With MXKeyboard and SPIFlashProgrammer both sporting similar USB stacks with the
intention to one day make them both use the same stack, dragonUSB was born.

dragonUSB with appropriate non-target-specific drivers can efficiently implement
USB on a variety of targets with excellent type-safety and good support for
descriptors that aren't just byte blobs.

dragonBoot uses dragonUSB to target both platforms and uses dragonUSB's DFU driver
to implement dfu-util friendly DFU.
