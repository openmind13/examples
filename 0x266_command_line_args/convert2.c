#include <stdio.h>
#include <stdlib.h>

void usage(char *program_name)
{
    printf("Usage: %s <message> <# of times to repeat>\n", program_name);
    exit(1);
}

int main(int argc, char *argv[])
{
    if (argc < 3)
    {
        usage(argv[0]);
    }
    int count = atoi(argv[2]);
    printf("Repeat %d times..\n", count);
    for (int i = 0; i < count; i++)
    {
        printf("%3d - %s\n", i, argv[1]);
    }
    return 0;
}
