#include <stdio.h>

int main(int arg_count, char* arg_list[])
{
    printf("Было предоставлено %d аргументов:\n", arg_count);
    for(int i = 0; i < arg_count; i++)
        printf("аргумент #%d\t - \t%s\n", i, arg_list[i]);

    return 0;
}
