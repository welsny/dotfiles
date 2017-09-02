#/usr/bin/env python
# -*- coding: utf-8 -*-

import csv
import optparse
import os
import glob

"""
This script updates Ergodox bindings automatically.

To use, download firmware from input.club and leave the .zip in the Downloads folder.
Press the button on the back of each keyboard and update each side respectively.

All files are extracted into /tmp/
"""

#TODO: Design interface to prompt for deleting .zip file?

def read_cl():
    parser = optparse.OptionParser()

    parser.add_option("-l","--left", default=False, action="store_true",
                      help="bind left side of Ergodox")
    parser.add_option("-r","--right", default=False, action="store_true",
                      help="bind right side of Ergodox")
    options, args = parser.parse_args()

    return options.left, options.right

def update():
    """
    Extracts dfu binaries into /tmp/ and run dfu-util script to install new bindings.
    """

    zipfile = glob.glob("/Users/$(whoami)/Downloads/MDErgo*.zip")[0]
    os.system("unzip -u {} -d /tmp/".format(zipfile))

    if left:
        os.system("dfu-util -D /tmp/left_kiibohd.dfu.bin")
    elif right:
        os.system("dfu-util -D /tmp/right_kiibohd.dfu.bin")

if __name__ == "__main__":
    left, right = read_cl()
    assert not (left and right), "Due to physical limitations of the device, you can only update one side at a time"

    update()

