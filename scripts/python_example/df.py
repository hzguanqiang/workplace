from nova import utils
import os
import re

def _get_instance_disk(mount_point):
    """
    """
    out,_err = utils.execute('df', '-P', '-B', '1', mount_point, run_as_root=True)
    out = out.splitlines()[1]
    disk =out.split()[0]

    if os.path.islink(disk):
        disk,_err = utils.execute('readlink', '-nm', disk, run_as_root=True)

    if os.path.exists(disk):
        return disk
    else:
        return None


def _get_dev_number(dev):
    result = []
    if dev.startswith("/dev/dm-"):
        path = os.path.basename(dev)
        path = os.path.join("/sys/block/", path, "slaves")
        for f in os.listdir(path):
            sys_dev = os.path.join(path, f, "dev")
            result.append(sys_dev)
    else:
        dig_re = re.compile(r'(\d)')
        dev = dig_re.split(dev)[0]
        path = os.path.basename(dev)
        sys_dev = os.path.join("/sys/block/", path, "dev")
        result.append(sys_dev)

    return result


mp = "/home"
disk =_get_instance_disk(mp)
print "%s: %s" %(mp, disk)

path = disk

if os.path.islink(disk):
    print "disk is link:"
    disk = os.readlink("/dev/mapper/vg-lv1--gq")
    print disk

if os.path.islink(path):
    absolute_path,_err = utils.execute('readlink', '-nm', path, run_as_root=True)
    print absolute_path

    if os.path.exists(absolute_path) and absolute_path.startswith("/dev"):
        s = os.stat(absolute_path)
        info = "%s:%s" % (os.major(s.st_rdev), os.minor(s.st_rdev))
        print info

dev = "/dev/vda1"

