#include <stdio.h>

int func_one()
{
    printf("это первая функция\n");
    return 1;
}

int func_two()
{
    printf("это вторая функция\n");
    return 2;
}

int main()
{
    int value;
    int (*function_ptr) ();

    function_ptr = func_one;
    value = function_ptr();
    printf("value = %d\n", value);

    function_ptr = func_two;
    value = function_ptr();
    printf("value = %d\n", value);

    return 0;
}
