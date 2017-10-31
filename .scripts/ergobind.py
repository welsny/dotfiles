#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import glob
import fire

"""
This script updates Ergodox bindings automatically.

To use, download firmware from input.club and leave the .zip in the Downloads folder.
Press the button on the back of each Ergodox, and run this script to update each side individually.

All files are extracted into /tmp/
"""

def bind(side):
    """
    Extract dfu binaries into /tmp/ and run dfu-util to install new bindings.
    """
    if side not in ("left", "right"):
        raise ValueError

    zipfile = glob.glob(os.path.expanduser("~/Downloads/MDErgo*.zip"))[0]
    os.system(f"unzip -u {zipfile} -d /tmp/")
    os.system(f"dfu-util -D /tmp/{side}_kiibohd.dfu.bin")

if __name__ == "__main__":
    fire.Fire(bind)

