package main
import ("io/ioutil"
"fmt")
func main(){s:="package main%cimport (%cio/ioutil%[2]c%[1]c%cfmt%[2]c)%[1]cfunc main(){s:=%c%s%[2]c;i:=%[4]d;i--;if i>=0{ioutil.WriteFile(fmt.Sprintf(%[2]cSully_%%d.go%[2]c,i),[]byte(fmt.Sprintf(s,10,34,s,i)),420)}}%[1]c";i:=5;i--;if i>=0{ioutil.WriteFile(fmt.Sprintf("Sully_%d.go",i),[]byte(fmt.Sprintf(s,10,34,s,i)),420)}}
