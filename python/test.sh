#!/usr/bin/env bash
diff Colleen.py <(./Colleen.py)
./Grace.py; diff Grace.py Grace_kid.py
./Sully.py
for i in {4..0}; do
    chmod +x Sully_4.py
    diff Sully.py "Sully_${i}.py"
    chmod +x ./Sully
