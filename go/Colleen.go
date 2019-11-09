package main
import "fmt"
func q(){s:="package main%cimport %cfmt%[2]c%[1]cfunc q(){s:=%c%s%[2]c;fmt.Printf(s,10,34,s)%[1]c/*%[1]c  h%[1]c*/}%[1]cfunc main(){q()}%[1]c/*%[1]c  j%[1]c*/%[1]c";fmt.Printf(s,10,34,s)
/*
  h
*/}
func main(){q()}
/*
  j
*/
