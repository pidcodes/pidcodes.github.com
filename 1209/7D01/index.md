---
layout: pid
title: RIOT Test PID
owner: RIOT
license: any
site: http://riot-os.org/
source: https://github.com/RIOT-OS/RIOT
---
This PID describes devices that implement custom USB functionality in addition to their board's provided USB functionality as described for [PID 7D00](../7D00/).

In particular, it is used whenever an example program of RIOT implements custom USB functionality.

The pid.codes policy for test PIDs applies:

This PID is reserved for use in private testing. Anyone may assign it to their device while they're testing in-house, but it MUST NOT be used on any device that will be redistributed, sold, or manufactured. Source code and configuration that references this VID/PID should warn users that the PID is not universally unique and should not be used outside test environments.
