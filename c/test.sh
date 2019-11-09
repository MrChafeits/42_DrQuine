#!/usr/bin/env bash
diff Colleen.c <(./Colleen)
./Grace; diff Grace.c Grace_kid.c
./Sully
for i in {4..0}; do
    cmp -b Sully.c "Sully_${i}.c"
    make "Sully_${i}" && ./"Sully_${i}"
done
