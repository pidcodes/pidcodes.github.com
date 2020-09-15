from pathlib import Path
import sys

existing_1xxx = {'1AB6', '1005', '1776', '1001', '1007', '1AB5', '1002', '1006', '1004', '1003', '1986'}

vid_1209 = Path("1209")
pid1xxx = vid_1209.glob("1*")
pid1xxx = set([x.name for x in pid1xxx])

ok = True

if pid1xxx - existing_1xxx:
    print("Cannot claim 1xxx PID")
    ok = False


if not ok:
    sys.exit(-1)
