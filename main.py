#!/usr/bin/env python3

import os
import shutil
import argparse
import sys

HOME_DIR = os.environ.get("HOME")
PATHS : dict[str, list[str]] = {
    "" : [".vimrc", ".bashrc", ".bash_profile", ".Xdefaults"],
    ".config": ["gammastep", "neofetch", "sway", "waybar", "bat", "gdb"],
    ".vim": ["coc-settings.json", "config"],
}
DEBUG : bool


def move(src : str, dst: str) -> None:
    """Move files and directories specified in `PATHS` from `src` to `dst`"""
    for dirname,files in PATHS.items():
        for file in files:
            src_path : str = src + os.sep
            dst_path : str = dst + os.sep
            if dirname != "":
                src_path += dirname + os.sep
                dst_path += dirname + os.sep
            src_path += file
            dst_path += file

            if DEBUG:
                print("Moving " + src_path + " to " + dst_path)
            else:
                if not os.path.exists(os.path.dirname(dst_path)):
                    os.makedirs(os.path.dirname(dst_path))

                if os.path.isdir(src_path):
                    shutil.copytree(src_path, dst_path, dirs_exist_ok=True)
                else:
                    shutil.copy(src_path, dst_path)


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("-i", "--install", default=False, action="store_true", help="install configuration from the specified directory to home directory")
    parser.add_argument("-l", "--load", default=False, action="store_true", help="load configuration from home directory to the specified directory")
    parser.add_argument("-dir", "--directory", type=str, default=os.curdir, help="directory used to load /install configuration from/to")
    parser.add_argument("-d", "--debug", default=False, action="store_true", help="print what the script would do if executed without executing it")
    args = vars(parser.parse_args())
   
    if args["debug"]:
        DEBUG = True
    else:
        DEBUG = False
    if args["install"]:
        move(args["directory"], HOME_DIR)
    elif args["load"]:
        move(HOME_DIR, args["directory"])
    else:
        print("Action (install/load) must be specified)", file=sys.stderr)
        sys.exit(1)
