#include <stdio.h>
#include <unistd.h>

int main()
{
    printf("реальный uid: %d\n", getuid());
    printf("эффективный uid: %d\n", geteuid());

    return 0;
}
