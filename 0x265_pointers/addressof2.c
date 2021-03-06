#include <stdio.h>

int main()
{
    int int_var = 5;
    int *int_ptr;
    int_ptr = &int_var;
    printf("int_ptr = 0x%08x\n", int_ptr);
    printf("&int_ptr = 0x%08x\n", &int_ptr);
    printf("*int_ptr = 0x%08x\n\n", *int_ptr);
    printf("int_var located at 0x%08x and contain value %d\n", &int_var, int_var);
    printf("int_ptr located at 0x%08x, contain address 0x%08x and points to the value %d\n\n", &int_ptr, int_ptr, *int_ptr);
    return 0;
}
