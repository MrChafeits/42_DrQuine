#!/usr/bin/env python3
fmt="#!/usr/bin/env python3{0:c}fmt={1:c}{2}{1:c}{0:c}with open({1:c}Grace_kid.py{1:c},{1:c}w{1:c}) as f:{0:c}    f.write(fmt.format(10,34,fmt)){0:c}"
with open("Grace_kid.py","w") as f:
    f.write(fmt.format(10,34,fmt))
