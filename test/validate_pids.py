from pathlib import Path
import sys

existing_0xxx = {'0006', '01C0', '0007', '053A', '0D32', '0256', '0008', '0775', '000f', '0BAB', '0009', '0001', '0721', '000a', '0010', '0777', '01CB', '000c', '0002', '000e', '0CBD', '000d', '000b', '0003', '0D10', '0004', '0514', '0005', '0776', '0070', '0D11'}
existing_1xxx = {'1AB6', '1005', '1776', '1001', '1007', '1AB5', '1002', '1006', '1004', '1003', '1986'}

vid_1209 = Path("1209")
pid1xxx = vid_1209.glob("1*")
pid1xxx = set([x.name for x in pid1xxx])


pid0xxx = vid_1209.glob("0*")
pid0xxx = set([x.name for x in pid0xxx])

ok = True

if pid1xxx - existing_1xxx:
    print("Cannot claim 1xxx PID:", pid1xxx - existing_1xxx)
    print("See here for more info: http://pid.codes/1209/")
    ok = False

if pid0xxx - existing_0xxx:
    print("Cannot claim 0xxx PID:", pid0xxx - existing_0xxx)
    print("See here for more info: http://pid.codes/1209/")
    ok = False


if not ok:
    sys.exit(-1)

print("No errors found!")
