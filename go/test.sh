#!/usr/bin/env bash
diff Colleen.go <(go run Colleen.go)
go run Grace.go; diff Grace.go Grace_kid.go
go run Sully.go
for i in {4..0}; do
    cmp -b Sully.go "Sully_${i}.go"
    go run "Sully_${i}.go"
done
