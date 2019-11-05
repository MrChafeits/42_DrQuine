#!/usr/bin/env python3
fmt="#!/usr/bin/env python3{0:c}fmt={1:c}{2:s}{1:c}{0:c}def q():{0:c}    print(fmt.format(10,34,fmt)){0:c}if __name__=={1:c}__main__{1:c}:{0:c}    #h{0:c}    q()"
def q():
    print(fmt.format(10,34,fmt))
if __name__=="__main__":
    #h
    q()
