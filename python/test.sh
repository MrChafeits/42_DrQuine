#!/usr/bin/env bash
diff Colleen.py <(./Colleen.py)
./Grace.py; diff Grace.py Grace_kid.py
./Sully.py
for i in {4..0}; do
    chmod +x "Sully_${i}.py"
    diff Sully.py "Sully_${i}.py"
    ./"Sully_${i}.py"
done
