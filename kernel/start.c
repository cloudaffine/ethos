#include <stdio.h>

void start() {
    const char* banner = " ______ _______ _    _  ____   _____ \n|  ____|__   __| |  | |/ __ \\ / ____|\n| |__     | |  | |__| | |  | | (___  \n|  __|    | |  |  __  | |  | |\\___ \\ \n| |____   | |  | |  | | |__| |____) |\n|______|  |_|  |_|  |_|\\____/|_____/ \n";
    const char* msg = "Hello world, Ethos!\n";
    printf("%s \n version: %s\n", banner, "1.0");
}