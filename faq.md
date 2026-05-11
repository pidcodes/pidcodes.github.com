---
layout: page
title: Frequently Asked Questions
permalink: /faq/
---
### How do I get a PID code for my project?
Please read our [howto guide](/howto/).

### Is this supported by the [USB-IF](http://usb.org/)?
No, pid.codes is in no way supported, endorsed by, or associated with USB-IF.

### Won't you get in trouble?
pid.codes and the people behind it have never signed an agreement with USB-IF not to reassign or redistribute PID codes. The VID we were gifted was procured from USB-IF by a company that has since ceased trading, and they did so before USB-IF's terms prohibited sublicense or transferring of VIDs or PIDs.

It is our belief that USB-IF has no legitimate right to prohibit this activity, and that their actions are limited to 'revoking' the original VID, a fairly meaningless pronouncement since they can never reassign it to anyone else. Nevertheless, we hope they will not do so, and will instead choose to work with us to make creating and distributing USB devices more accessible for hobbyists, makers, and small businesses.

### Do you make money off this?
No, absolutely not. The domain name registration is our only cost besides our time, and we paid for that out of our own pockets. We accept no income from users or advertisers.

### Why would I need a unique PID?
Operating systems use VID and PID codes to uniquely identify a device, which helps determine what drivers to load and how to interact with it.

### My project isn't out yet, can I still get a PID?
Yes, absolutely. You need to have created a repository for your source code somewhere, with your work so far. If it's plain that you're not yet at the point of needing a unique PID, we might suggest you use a [testing PID](/1209/0001/). If you've got several unreleased projects, we might ask for justification before handing out another PID.

### My project is no longer OSH-licensed, what happens to my PID?
We'd really rather you didn't do this, but we won't try and 'take away' your PID. Once it's assigned to you, it's yours until the heat death of the universe. However, don't expect any more PIDs from us in future!

### My project isn't OSH-licensed, can I still get a PID?
Not from pid.codes. pid.codes is for open source projects only. However, many microcontroller vendors provide PIDs for customers for no or low cost compared to buying a full VID. Here are the vendor programs we're aware of:

* [Espressif](https://github.com/espressif/usb-pids)
* [NXP](https://community.nxp.com/t5/Kinetis-Microcontrollers/NXP-USB-VID-PID-Program/ta-p/1124867)
* [MicroChip](https://www.microchip.com/usblicensing/)
* [Nordic](https://devzone.nordicsemi.com/f/nordic-q-a/50638/usb-pid-for-nrf52840)
* [Silabs](https://www.silabs.com/interface/request-product-id)
* [FTDI](http://www.ftdichip.com/Support/Knowledgebase/index.html?caniuseftdisvidformypr.htm)

### What if I request a PID at the same time as someone else?
PIDs are allocated in the order pull requests are submitted. If the first pull request is rejected for whatever reason, the PID will go to a subsequent requester.

### How do I contact you?
Email us at [admin@pid.codes](mailto:admin@pid.codes).
