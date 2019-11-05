#!/usr/bin/env python
import sys
with open("prog2.c", "w") as fw:
    fw.write("".join([chr(int(l, 16)) for l in sys.stdin.readlines()]))
    fw.write("\n")
