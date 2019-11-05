#include <stdio.h>
/*
  h
*/
char *s = "#include <stdio.h>%1$c/*%1$c  h%1$c*/%1$cchar*s=%2$c%4$s%2$c%3$c%1$cvoid q(){FILE*f=fopen(%2$cGrace_kid.c%2$c,%2$cw%2$c)%3$cfprintf(f,s,10,34,59,s)%3$cfclose(f)%3$c}int main(){q()%3$c}%1$c";
void q()
{
    FILE *f = fopen("Grace_kid.c", "w");
    fprintf(f, s, 10, 34, 59, s);
    fclose(f);
}
int main() { q(); }
