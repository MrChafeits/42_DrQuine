#!/usr/bin/env bash
xcpath=/Applications/Xcode.app/Contents/Developer/usr/bin
cltpath=/Library/Developer/CommandLineTools/usr/bin
diff <(find "${cltpath}" | sed -E 's,.*/(.*)$,\1,' | sort) <(find "${xcpath}" | sed -E 's,.*/(.*)$,\1,' | sort)
