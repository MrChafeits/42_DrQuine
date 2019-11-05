#include <stdio.h>
char *s = "#include <stdio.h>%1$cchar*s=%2$c%3$s%2$c;%1$cint i=%4$d;%1$cint main(){char n[11]=%2$cSully_0.c%2$c;if(--i>=0){n[6]+=i;FILE*f=fopen(n,%2$cw%2$c);fprintf(f,s,10,34,s,i);fclose(f);}}%1$c";
int i = 5;
char n[10] = "Sully_0.s";
int main()
{
    if (--i >= 0)
    {
        n[6] += i;
        FILE *f = fopen(n, "w");
        fprintf(f, s, 10, 34, s, i);
        fclose(f);
    }
}
