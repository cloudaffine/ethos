#include <stdio.h>
#include "layout.h"
#include "vmm.h"

void main() {
    const char* banner = "\033[0;31m     ___      .______     ____    ____  ______        _______.\n    /   \\     |   _  \\    \\   \\  /   / /  __  \\      /       |\n   /  ^  \\    |  |_)  |    \\   \\/   / |  |  |  |    |   (----`\n  /  /_\\  \\   |      /      \\      /  |  |  |  |     \\   \\    \n /  _____  \\  |  |\\  \\----.  \\    /   |  `--'  | .----)   |   \n/__/     \\__\\ | _| `._____|   \\__/     \\______/  |_______/   \033[0m\n";
    const char* version = "\033[0;36mversion: 0.1 \033[0m\n\n";
    const char* msg = "Hello world, Arvos!\n";

    printf("%s %s", banner, version);
    printf("kernel: 0x%x ~ 0x%x .. 0x%x \n", KERN_START, KERN_STOP, KERN_END);
    vmm_enable_paging();
    printf("✨ enabled paging\n");
//    vmm_info();
}