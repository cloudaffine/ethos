#!/usr/bin/env sh

rm -rf build

debug=$1

if [ "$debug" == 'debug' ]; then
  cmake -DCMAKE_BUILD_TYPE=Debug -G "Unix Makefiles" -B build/debug .
  cd build/debug
else
  cmake -DCMAKE_BUILD_TYPE=Release -G "Unix Makefiles" -B build/release .
  cd build/release
fi

make