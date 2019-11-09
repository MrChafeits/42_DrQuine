#!/usr/bin/env bash
cc -std=c11 -Wall -Wextra -pedantic     -g prog.c -o prog
lldb -x -o r -f prog -o bt -o q | gsed -n -r 's/frame #.*`x([0-9]+)/\1/p' | awk '{print $1}' | ./conv.py
diff prog.c prog2.c
