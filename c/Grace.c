#include <stdio.h>
/*
  h
*/
#define S "#include <stdio.h>%1$c/*%1$c  h%1$c*/%1$c#define S %2$c%3$s%2$c%1$c#define Q void q(){FILE*f=fopen(%2$cGrace_kid.c%2$c,%2$cw%2$c);fprintf(f,S,10,34,S);fclose(f);}%1$c#define H Q int main(){q();}%1$cH%1$c"
#define Q void q(){FILE*f=fopen("Grace_kid.c","w");fprintf(f,S,10,34,S);fclose(f);}
#define H Q int main(){q();}
H
