package main
import ("bufio"
"fmt"
"os")
func main(){s:="package main%cimport (%cbufio%[2]c%[1]c%cfmt%[2]c%[1]c%cos%[2]c)%[1]cfunc main(){s:=%c%s%[2]c;f,_:=os.Create(%[2]cGrace_kid.go%[2]c);w:=bufio.NewWriter(f);fmt.Fprintf(w,s,10,34,s);w.Flush();f.Close()}%[1]c/*%[1]c  h%[1]c*/%[1]c";f,_:=os.Create("Grace_kid.go");w:=bufio.NewWriter(f);fmt.Fprintf(w,s,10,34,s);w.Flush();f.Close()}
/*
  h
*/
