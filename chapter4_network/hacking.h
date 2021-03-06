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


void dump(const unsigned char *data_buffer, const unsigned int length)
{
    unsigned char byte;
    for(unsigned int i = 0; i < length; i++)
    {
        byte = data_buffer[i];
        printf("%02x ", data_buffer[i]);

        if(((i % 16) == 15) || (i == length - 1))
        {
            for(unsigned int j = 0; j < 15 - (i % 16); j++)
                puts(" ");
            puts("| ");
            for(unsigned int j = (i - (i % 16)); j <= i; j++)
            {
                byte = data_buffer[j];
                if((byte > 31) && (byte < 127))
                    printf("%c", byte);
                else
                    puts(".");
            }
            puts("\n");
        }
    }
}
