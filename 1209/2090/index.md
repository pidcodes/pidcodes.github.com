---
layout: pid
title: MIDIval Renaissance
owner: pawpawworks
license: MIT/Apache 2.0
site: https://github.com/universalhandle/midival_renaissance
source: https://github.com/universalhandle/midival_renaissance
---
The MIDIval Renaissance enables the [Micromoog Model 2090](https://en.wikipedia.org/wiki/Micromoog), a monophonic analog synthesizer produced by Moog Music from 1975 to 1979, to interface with modern music equipment by translating [MIDI](https://midi.org/midi-1-0) messages into electrical signals compatible with the Moog Open System, a flavor of [CV/gate](https://en.wikipedia.org/wiki/CV/gate).

It is based on an STM32F767ZI chip. The firmware is written in [Rust](https://rust-lang.org/) using the [Embassy](https://embassy.dev/) framework.
