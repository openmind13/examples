#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <unistd.h>
#include "hacking.h"

#define FILENAME "./notes"

void usage(char *prog_name, char *filename)
{
    printf("Usage: %s <data to add to %s>\n", prog_name, filename);
    exit(0);
}

void fatal(char *);
void* ec_malloc(unsigned int);


int main(int argc, char *argv[])
{
    int userid, fd;
    char *buffer, *datafile;

    buffer = (char *) ec_malloc(100);
    datafile = (char *) ec_malloc(20);
    strcpy(datafile, FILENAME);

    if(argc < 2)
        usage(argv[0], datafile);

    strcpy(buffer, argv[1]);

    printf("[DEBUG] buffer @ %p: '%s'\n", buffer, buffer);
    printf("[DEBUG] datafile @ %p: '%s'\n", datafile, datafile);

    strncat(buffer, "\n", 1);

    fd = open(datafile, O_WRONLY|O_CREAT|O_APPEND, S_IRUSR|S_IWUSR);
    if(fd == -1)
        fatal("в функции main() при открытии файла");
    printf("[DEBUG] дескриптор файла %d\n", fd);

    userid = getuid();

    char tmp[4] = {0x0};
    sprintf(tmp,"%d", userid);

    if(write(fd, tmp, sizeof(tmp)) == -1)
        fatal("в функции main() при записи userid в файл");
    write(fd, "\n", 1);

    if(write(fd, buffer, strlen(buffer)) == -1)
        fatal("в функции main() при записи буфера в файл");
    write(fd, "\n", 1);

    if(close(fd) == -1)
        fatal("в функции main() при закрытии файла");

    printf("Заметка сохранена.\n");
    free(buffer);
    free(datafile);

    return 0;
}
