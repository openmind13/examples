#include <stdio.h>
#include <string.h>

int main()
{
    char message[10];
    int count;
    strcpy(message, "hello world!\n");
    printf("How many times repeat? ");
    scanf("%d", &count);
    for (int i = 0; i < count; i++)
    {
        printf("%3d - %s\n", i, message);
    }
}
