#include <stdio.h>

int global_var;
int global_initialized_var = 5;

void function()
{
    int stack_var;

    printf("stack_var функции по адресу 0x%08x\n", &stack_var);
}

int main()
{
    int stack_var;
    static int static_initialized_var = 5;
    static int static_var;
    int* heap_var_ptr;

    heap_var_ptr = (int*) malloc(4);

    printf("global_initialized_var по адресу 0x%08x\n", &global_initialized_var);
    printf("static_initialized_var по адресу 0x%08x\n\n", &static_initialized_var);

    printf("static_var по адресу 0x%08x\n", &static_var);
    printf("global_var по адресу 0x%08x\n\n", &global_var);

    printf("heap_var по адресу 0x%08\n\n", heap_var_ptr);

    printf("stack_var по адресу 0x%08x\n", &stack_var);
    function();

    return 0;
}
