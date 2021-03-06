#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void* errorchecked_malloc(unsigned int);

int main(int argc, char* argv[])
{
    char* char_ptr;
    int* int_ptr;
    int mem_size;

    if(argc < 2)
        mem_size = 50;
    else
        mem_size = atoi(argv[1]);

    printf("\t[+] выделяется %d байтов в куче для переменной char_ptr\n", mem_size);
    char_ptr = (char*) errorchecked_malloc(mem_size);

    strcpy(char_ptr, "Эта память находится в куче.");
    printf("char_ptr (%p) --> '%s'\n", char_ptr, char_ptr);
    printf("\t[+] выделяется 12 байтов в куче для переменной int_ptr\n");
    int_ptr = (int*) errorchecked_malloc(12);

    *int_ptr = 31337;
    printf("int_ptr (%p) --> %d\n", int_ptr, *int_ptr);

    printf("\t[-] освобождается память, занятая char_ptr...\n");
    free(char_ptr);

    printf("\t[+] выделяется еще 15 байтов для переменной char_ptr\n");
    char_ptr = (char*) errorchecked_malloc(15);

    strcpy(char_ptr, "новая память");
    printf("char_ptr (%p) --> '%s'\n", char_ptr, char_ptr);

    printf("\t[-] освобождается память, занятая int_ptr...\n");
    free(int_ptr);
    printf("\t[-] освобождается память, занятая char_ptr...\n");
    free(char_ptr);

    return 0;
}

void* errorchecked_malloc(unsigned int size)
{
    void* ptr;
    ptr = malloc(size);
    if(ptr == NULL)
    {
        fprintf(stderr, "Ошибка: невозможно выделить память в куче.\n");
        exit(-1);
    }
    return ptr;
}
