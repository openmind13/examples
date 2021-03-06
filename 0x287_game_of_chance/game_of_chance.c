#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <time.h>
#include <stdlib.h>
#include <unistd.h>
#include "hacking.h"


#define DATAFILE "./chance.data"

struct user
{
    int uid;
    int credits;
    int highscore;
    char name[100];
    int (*current_game) ();
};

int get_player_data();
void register_new_player();

void input_name();


struct user player;

int main()
{

    return 0;
}


int get_player_data()
{
    int fd, uid, ready_bytes;
    struct user entry;

    uid = getuid();

    fd = open(DATAFILE, O_RDONLY);
    if(fd == -1)
        return -1;
    read_bytes = read(fd, &entry, sizeof(struct user));
    while(entry.uid != uid && read_bytes > 0)
        read_bytes = read(fd, &entry, sizeof(struct user));
    close(fd);
    if(read_bytes < sizeof(struct user))
        return -1;
    else
        player = entry;
    return 1;
}

void register_new_player()
{
    int fd;

    printf("===={регистрация нового игрока}====\n");
    printf("Введите свое имя: ");
    input_name();
}
