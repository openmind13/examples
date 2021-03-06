#include <stdio.h>
#include <string.h>
#include <unistd.h>

int main(int argc, char *argv[])
{
    int value = 5;
    char buffer_one[8], buffer_two[8];

    strcpy(buffer_one, "one");
    strcpy(buffer_two, "two");

    printf("[ДО] buffer_two по адресу %p и содержит '%s'\n", buffer_two, buffer_two);
    printf("[ДО] buffer_one по адресу %p и содержит '%s'\n", buffer_one, buffer_one);
    printf("[ДО] value по адресу %p и равно %d (0x%08x)\n", &value, value, value);

    printf("\n[STRCPY] копируем %ld байтов в buffer_one\n\n", strlen(argv[1]));
    strcpy(buffer_one, argv[1]);

    printf("[ПОСЛЕ] buffer_two по адресу %p и содержит '%s'\n", buffer_two, buffer_two);
    printf("[ПОСЛЕ] buffer_one по адресу %p и содержит '%s'\n", buffer_one, buffer_one);
    printf("[ПОСЛЕ] value по адресу %p и равно %d (0x%08x)\n", &value, value, value);

    return 0;
}
