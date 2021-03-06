#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <unistd.h>
#include <stdlib.h>
#include "hacking.h"

#define FILENAME "./notes"

int print_notes(int, int, char *);
int find_user_note(int, int);
int search_note(char *, char *);
void fatal(char *);

int main(int argc, char *argv[])
{
    int userid, printing = 1, fd;
    char searchstring[100];

    if(argc > 1)
        strcpy(searchstring, argv[1]);
    else
        searchstring[0] = 0;

    userid = getuid();
    fd = open(FILENAME, O_RDONLY);
    if(fd == -1)
        fatal("в функции main() при открытии файла на чтение");

    while(printing)
        printing = print_notes(fd, userid, searchstring);
    printf("-----[конец данных, касающихся заметки]-----\n");
    close(fd);

    return 0;
}

int print_notes(int fd, int uid, char *searchstring)
{
    int note_length;
    char byte = 0, note_buffer[100];

    note_length = find_user_note(fd, uid);
    if(note_length == -1)
        return 0;

    read(fd, note_buffer, note_length);
    note_buffer[note_length] = 0;

    if(search_note(note_buffer, searchstring))
        printf("%s", note_buffer);

    return 1;
}

int find_user_note(int fd, int user_uid)
{
    int note_uid = -1;
    char note_uid_str[5] = {0x0};

    unsigned char byte;
    int length;

    while(note_uid != user_uid)
    {

        if(read(fd, note_uid_str, 4) != 4)
            return -1;

        note_uid = atoi(note_uid_str);

        if(read(fd, &byte, 1) != 1)
            return -1;

        byte = length = 0;
        while(byte != '\n')
        {
            if(read(fd, &byte, 1) != 1)
                return -1;
            length++;
        }
    }

    if(read(fd, &byte, 1) != 1)
        return -1;
        
    length++;

    lseek(fd, (length * -1), SEEK_CUR);

    printf("[DEBUG] обнаружена заметка длиной %d байтов для id %d\n", length, note_uid);

    return length;
}

int search_note(char *note, char *keyword)
{
    int keyword_length, match = 0;

    keyword_length = strlen(keyword);
    if(keyword_length == 0)
        return 1;

    for(int i = 0; i < strlen(note); i++)
    {
        if(note[i] == keyword[match])
            match++;
        else
        {
            if(note[i] == keyword[0])
                match = 1;
            else
                match = 0;
        }
        if(match == keyword_length)
            return 0;
    }
    return 0;
}
