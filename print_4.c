#include <stdio.h>

extern unsigned char ram[];
extern void compute_sum(void);   // <-- match assembly function

int main()
{
    compute_sum();

    printf("Sum stored at 50H:\n");
    printf("%02X\n", ram[0x50]);

    return 0;
}