#!/usr/bin/env bash
lldb -x -o r -f prog -o bt -o q | gsed -n -r 's/frame #.*`x([0-9]+)/\1/p' | awk '{print $1}' | ./conv.py
diff prog.c prog2.c
