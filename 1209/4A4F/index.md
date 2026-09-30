---
layout: pid
title: OpenJoystickDriver Generic HID Gamepad
owner: xsyetopz
license: MIT
site: https://github.com/xsyetopz/OpenJoystickDriver
source: https://github.com/xsyetopz/OpenJoystickDriver
---
Virtual HID gamepad published by OpenJoystickDriver, an open-source userspace gamepad driver for macOS. The driver reads physical controllers over IOUSBHost, IOHIDManager, and a DriverKit extension, and republishes their input as a virtual IOHIDUserDevice. This identity is its device-neutral generic layout: 16 buttons, four stick axes, and two trigger axes, input-only with no output report.
