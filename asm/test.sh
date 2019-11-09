#!/usr/bin/env bash
diff Colleen.s <(./Colleen)
./Grace; diff Grace.s Grace_kid.s
./Sully
for i in {4..0}; do
    cmp -b Sully.s "Sully_${i}.s"
    nasm -fmacho64 "Sully_${i}.s" && make "Sully_${i}" && ./"Sully_${i}"
done
