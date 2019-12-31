void fatal(char *message)
{
    char error_message[100];

    strcpy(error_message, "[!!] Critical error ");
    strncat(error_message, message, 83);
    perror(error_message);
    exit(-1);
}

void *ec_malloc(unsigned int size)
{
    void *ptr;
    ptr = malloc(size);
    if(ptr == NULL)
        fatal("в функции ec_malloc() при выделении памяти");
    return ptr;
}
