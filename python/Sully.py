#!/usr/bin/env python3
f="#!/usr/bin/env python3{0:c}f={1:c}{2}{1:c}{0:c}i={3:d}{0:c}i-=1{0:c}if i>=0:{0:c}    with open({1:c}Sully_%d.py{1:c}%i,{1:c}w{1:c}) as w:{0:c}        w.write(f.format(10,34,f,i)){0:c}"
i=5
i-=1
if i>=0:
    with open("Sully_%d.py"%i,"w") as w:
        w.write(f.format(10,34,f,i))
