from pathlib import Path
import sys
import frontmatter

existing_0xxx = {'0006', '01C0', '0007', '053A', '0256', '0008', '000F', '0BAB', '0009', '0001', '000A',
                 '0010', '01CB', '000C', '0002', '000E', '0CBD', '000D', '000B', '0003', '0004', '0514',
                 '0005', '0070', '0D32'}
existing_1xxx = {'1AB6', '1005', '1776', '1001', '1007', '1AB5', '1002', '1006', '1004', '1003', '1986'}

required_keys = ['title', 'license']

vid_1209 = Path("1209")
pid1xxx = vid_1209.glob("1*")
pid1xxx = set([x.name for x in pid1xxx])

pid0xxx = vid_1209.glob("0*")
pid0xxx = set([x.name for x in pid0xxx])

ok = True

for index in vid_1209.glob("*/*"):
    if index.name != "index.md":
        ok = False
        print("Invalid file:", index)


for index in Path("org").glob("*/*"):
    if index.name != "index.md":
        ok = False
        print("Invalid file:", index)

for pid in vid_1209.iterdir():
    pid = pid.name
    if pid == "index.md":
        continue
    try:
        int(pid, 16)
    except ValueError:
        ok = False
        print("PID " + pid + " not valid hex. Must be 4 characters 0-9 or A-F.")
    if pid.upper() != pid:
        ok = False
        print("PID must be upper case:", pid)
    if len(pid) != 4:
        ok = False
        print("Pid is too long: '" + pid + "'")

    try:
        pid_path = vid_1209 / pid / "index.md"
        post = frontmatter.load(pid_path)
        layout = post.get('layout')
        if layout != "pid":
            print(f"{pid_path}:0: Layout must be 'pid'. Note: File may not contain a Byte Order Mark (BOM)")
            ok = False
        owner = post.get('owner')
        if owner is None:
            print(f"{pid_path}:0: No owner specified")
            ok = False
            continue
        owner_path = Path("org") / owner / "index.md"
        if not owner_path.exists():
            print(f"{pid_path}:0: Owner file {owner} does not exist")
            ok = False
        for k in required_keys:
            if k not in post.metadata:
                print(f"{pid_path}:0: Required key {k} not present in front matter")
                ok = False
    except Exception as e:
        print(f"{pid_path}: Failure parsing front matter: {e}")
        ok = False
if pid1xxx - existing_1xxx:
    print("Cannot claim 1xxx PID:", pid1xxx - existing_1xxx)
    print("See here for more info: http://pid.codes/1209/")
    ok = False

if pid0xxx - existing_0xxx:
    print("Cannot claim 0xxx PID:", pid0xxx - existing_0xxx)
    print("See here for more info: http://pid.codes/1209/")
    ok = False


if not ok:
    print("Error(s) found")
    sys.exit(-1)

print("No errors found!")
