# arvos
a RISC-V kernel to support RV32I arch. A new attempt on RISC-V based on my past X86 experiment: [cosmos](https://github.com/chaoyangnz/cosmos).

## Install 

### xPack toolchain (recommended)

```shell
brew install cmake ninja
npm install --global xpm@latest
xpm install --global @xpack-dev-tools/riscv-none-embed-gcc@latest --verbose
brew install qemu
```


## RISC-V extensions
```
M – Standard Extension for Integer Multiplication and Division
A – Standard Extension for Atomic Instructions
F – Standard Extension for Single-Precision Floating-Point
D – Standard Extension for Double-Precision Floating-Point
G – Shorthand for the base and above extensions
Q – Standard Extension for Quad-Precision Floating-Point
L – Standard Extension for Decimal Floating-Point
C – Standard Extension for Compressed Instructions
B – Standard Extension for Bit Manipulation
J – Standard Extension for Dynamically Translated Languages such as C#, Go, Haskell, Java, JavaScript, OCaml, PHP, Python, R, Ruby, Scala or WebAssembly
T – Standard Extension for Transactional Memory
P – Standard Extension for Packed-SIMD Instructions
V – Standard Extension for Vector Operations
N – Standard Extension for User-Level Interrupts
H – Standard Extension for Hypervisor
```

## Dev

## How to run

Run `./dev.sh`

If you need to switch to QEMU monitor, type `Ctl + A`, then `C`. We are using [-serial mon:stdio](https://kashyapc.wordpress.com/2016/02/11/qemu-command-line-behavior-of-serial-stdio-vs-serial-monstdio/) option.

## Debug

CMakeLists.txt configured gdb for Debug build and stop on startup. In Clion, configure a remote GDB can connect to localhost:1234

- Embedded GDB Server with QEMU (recommended)

![](https://i.imgur.com/DG5vqpx.gif)
  
- GDB Remote Debug

In this approach, you need to start QEMU before start a debug session
  
![](https://i.imgur.com/nA5GxKS.gif)

## Others

Alternative options for toolchains  (NOT recommended)

### Official Toolchain

```shell
brew tap riscv/riscv
brew install riscv-gnu-toolchain --with-multilib
```

### Build riscv32 toolchains

If you don't want to get pre-compiled binaries from Homebrew, you can build the RISC-V toolchain yourself.

```
brew install cmake ninja
git clone --recursive https://github.com/riscv/riscv-gnu-toolchain
./configure --prefix=/usr/local/opt/riscv32 --with-arch=rv32gc --with-abi=ilp32d
make
```

### Build QEMU

```
wget https://download.qemu.org/qemu-5.2.0.tar.xz
tar xvJf qemu-5.2.0.tar.xz
cd qemu-5.2.0
./configure --target-list=riscv32-softmmu && make
make install
```

# Roadmap

- [ ] basic virtual memory management
- [ ] process scheduling
- [ ] system calls  
- [ ] simplified shell
- [ ] kernel network stack supporting networking experiments