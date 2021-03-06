#include <stdio.h>
#include <time.h>
#include <unistd.h>

void dump_time_struct_bytes(struct tm *time_ptr, int size)
{
    unsigned char *raw_ptr;
    printf("байты структуры по адресу 0x%08x\n", time_ptr);
    raw_ptr = (unsigned char *) time_ptr;
    for(int i = 0; i < size; i++)
    {
        printf("%02x ", raw_ptr[i]);
        if(i%16 == 15)
            printf("\n");
    }
    printf("\n");
}

int main()
{
    long int seconds_since_epoch;
    struct tm current_time, *teme_ptr;
    int hour, minute, second, *int_ptr;

    seconds_since_epoch = time(0);

    printf("time() - секунд с начала эры: %ld\n", seconds_since_epoch);

    time_ptr = &current_time;

    localtime_r(&seconds_since_epoch, time_ptr);

    hour = current_time.tm_hour;
    minute = time_ptr->tm_min;
    second = *((int *) time_ptr);

    printf("Текущее время: %02d:%02d:%02d\n", hour, minute, second);

    dump_time_struct_bytes(time_ptr, sizeof(struct tm));

    minute = hour = 0;
    int_ptr = (int *) time_ptr;

    for(int i = 0; i < 3; i++)
    {
        printf("int_ptr @ 0x%08x : %d\n", int_ptr, *int_ptr);
        int_ptr++;
    }

    return 0;
}
