
qemu-system-riscv32 \
    -machine virt \
    -m 2G \
    -no-reboot \
    -no-shutdown ${QEMU_FLAGS} \
    -kernel build/debug/arvos \
    -nographic \
    -monitor telnet:127.0.0.1:1234,server,nowait \
    -bios none