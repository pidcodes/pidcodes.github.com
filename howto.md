---
layout: page
title: How to get a PID code
permalink: /howto/
---
## 0. Prerequisites
If your project does not meet the following criteria, your pull request **will** be rejected:
 
 - Publicly available source code repository...
 - Containing schematics or source code for a device with a USB interface...
 - Licensed under a recognized open source or open source hardware license. Your source code repository must contain a LICENSE file attesting to this fact.

If your project involves both hardware and software, both need to be licensed under recognised OSS and OSHW licenses. If your project involves only one or the other, we may ask for further justification as to why you need a PID associated with your software project / development board instead of allowing end-users to request their own.

If your project doesn't yet meet these requirements, please hold off requesting a PID until it does. Don't worry, we're not likely to run out of PIDs soon.

## 1. Fork us
Create a fork of [our repository](https://github.com/pidcodes/pidcodes.github.com) on GitHub.

## 2. Set up your organisation page
Create a directory named after your organisation in the `org` directory.
The directory has to be named with no spaces.  
Create a file inside it called `index.md` and add the following content:

```
---
layout: org
title: My organisation
site: http://www.myorg.org/
---
A short description of my organisation and what it does.
```

If it's just you, that's fine too - put your own name and a short blurb about you and what you do. The site is an optional website for your organisation.

## 3. Find a VID and PID
Browse the [list of PIDs](/1209/) for an unused PID number. You may request any number that is not in use, except those reserved (0xxx and 1xxx) as described on the PID list page.

When you've found a PID, create a directory named after it in the VID directory. So, if you picked PID `2345` on VID `1209`, create a directory with the path `/1209/2345/`. Inside it, create a file called `index.md` and add the following content:

```
---
layout: pid
title: My device name
owner: myorg
license: MIT
site: http://www.mysite.com/
source: http://github.com/myorg/mydevice/
---
A short description of my device and what it does.
```

The `title` field is what will appear on the pid.codes directory. Titles will be prefixed with the name of your organisation, so don't include that in the title. Try and pick a name you'd want to see in Device Manager or dmesg.

For the `owner` field, specify the name of the directory you created for your organisation in step 2. For license, you must name a valid open-source license; pull requests that do not have this field filled out correctly will be rejected.

The `site` field should point to the most relevant URL about your project. The `source` field must point to a URL at which users can find the source code for your device; this includes both PCB designs and firmware. This does not have to be on GitHub. The two URLs can be the same.

Under the second triple-dashed line, you should write a short description of your project including what hardware and software it uses.

## 4. Send us a pull request
Commit your changes to your fork of the repository with a descriptive commit message, and [send us a pull request](https://help.github.com/articles/using-pull-requests/). Pull requests will only be accepted if they follow the rules laid out for the VID you are requesting a PID under. If this is not your first PID, or you're requesting multiple PIDs, we may ask for more details and justification. Once we accept your pull request, your registration will go live and appear on pid.codes.
