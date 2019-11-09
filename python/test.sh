#!/usr/bin/env bash
diff Colleen.py <(./Colleen.py)
./Grace.py; diff Grace.py Grace_kid.py
./Sully.py
for i in {4..0}; do
    cmp Sully.py "Sully_${i}.py"
    python3 "Sully_${i}.py"
done
