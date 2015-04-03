---
layout: page
title: How to get a PID code
permalink: /howto/
---
## 1. Fork us
Create a fork of [our repository](https://github.com/pidcodes/pidcodes.github.com) on GitHub.

## 2. Set up your organisation page
Create a directory named after your organisation in the `org` directory. Create a file inside it called `index.md` and add the following content:

```
---
layout: org
title: My organisation
---
A short description of my organisation and what it does.
```

If it's just you, that's fine too - put your own name and a short blurb about you and what you do.

## 3. Find a VID and PID
Browse the [list of PIDs](/1209/) for an unused PID number. You may request any number that is not in use, except those reserved as described on the VID page.

When you've found a PID, create a directory named after it in the VID directory. So, if you picked PID `1234` on VID `1209`, create a directory with the path `/1209/1234/`. Inside it, create a file called `index.md` and add the following content:

```
---
layout: pid
title: My device name
owner: myorg
license: MIT
site: http://www.mysite.com/
source: http://github.com/myorg/mydevice/
---
```

For the `owner` field, specify the name of the directory you created for your organisation in step 2. For license, you must name a valid open-source license; pull requests that do not have this field filled out correctly will be rejected.

The `site` field may point to any relevant URL about your project. The `source` field must point to a URL at which users can find the source code for your device; this includes both PCB designs and firmware. This does not have to be on GitHub.

Under the second triple-dashed line, you may write a short description of your project, if you wish; this is not mandatory.

## 4. Send us a pull request
Commit your changes to your fork of the repository with a descriptive commit message, and [send us a pull request](https://help.github.com/articles/using-pull-requests/). Pull requests will only be accepted if they follow the rules laid out for the VID you are requesting a PID under. If this is not your first PID, or you're requesting multiple PIDs, we may ask for more details and justification. Once we accept your pull request, your registration will go live and appear on pid.codes.
