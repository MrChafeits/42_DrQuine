#include <stdio.h>
char*s="#include <stdio.h>%cchar*s=%c%s%2$c;%1$cint i=%4$d;%1$cchar n[]=%2$cSully_0.c%2$c;%1$cint main(){if(--i>=0){n[6]+=i;FILE*f=fopen(n,%2$cw%2$c);fprintf(f,s,10,34,s,i);fclose(f);}}%1$c";
int i=5;
char n[]="Sully_0.c";
int main(){if(--i>=0){n[6]+=i;FILE*f=fopen(n,"w");fprintf(f,s,10,34,s,i);fclose(f);}}
