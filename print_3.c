#include <stdio.h>

extern unsigned char ram[];
extern void clear_ram(void);   // <-- match assembly function name

int main()
{
    clear_ram();   // call assembly function

    printf("RAM contents from 50H to 58H:\n");

    for(int i = 0x50; i <= 0x58; i++)
        printf("%02X ", ram[i]);

    printf("\n");
    return 0;
}