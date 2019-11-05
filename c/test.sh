#!/usr/bin/env bash
diff Colleen.c <(./Colleen)
./Grace; diff Grace.c Grace_kid.c
./Sully
for i in {4..0}; do
    diff Sully.c "Sully_${i}.c"
    cc "Sully_${i}.c" && ./a.out
done
