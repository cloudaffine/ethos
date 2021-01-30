#/usr/bin/env bash

clean() {
  rm -rf build
}

build() {
  debug=$1
  if [ "$debug" == 'debug' ]; then
    cmake -DCMAKE_BUILD_TYPE=Debug -G "Unix Makefiles" -B build/debug .
    cd build/debug
  else
    cmake -DCMAKE_BUILD_TYPE=Release -G "Unix Makefiles" -B build/release .
    cd build/release
  fi

  make
  cd -
}

start() {
  debug=$1
  flags=""
  path="build/release"
  if [ "$debug" == 'debug' ]; then
    flags="-gdb tcp::1234 -S"
    path="build/debug"
  fi
  qemu-system-riscv32 \
    -machine virt \
    -m 2G \
    -no-reboot \
    -no-shutdown \
    -bios none \
    -kernel ${path}/arvos \
    -nographic \
    -monitor telnet:127.0.0.1:4321,server,nowait \
    $flags
}

stop() {
    #telnet localhost 4321 << EOF
    #quit
    #EOF

    { sleep 2; echo "quit";  } | telnet localhost 4321
}

monitor() {
    telnet localhost 1234
}

command=$1
subcommand=$2

case $command in
  help)
    echo "Usage: ./dev.sh clean|build|start|monitor|stop"
    ;;
  clean)
    clean
    ;;
  build)
    build $subcommand
    ;;
  start)
    start $subcommand
    ;;
  monitor)
    monitor
    ;;
  stop)
    stop
    ;;
  *)
    build
    start
    ;;
esac