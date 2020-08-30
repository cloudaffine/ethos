# arvos
a RISC-V kernel to support RV32I arch. A new attempt on RISC-V based on my past X86 experiment: [cosmos](https://github.com/chaoyangnz/cosmos).

## Install 

```
brew install riscv-tools
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

### Build riscv32 toolchain
```
git clone --recursive https://github.com/riscv/riscv-gnu-toolchain
./configure --prefix=/usr/local/opt/riscv32 --with-arch=rv32gc --with-abi=ilp32d
make
```

## How to run

Run `./startup.sh`

If you need to switch to QEMU monitor, type `Ctl + A`, then `C`. We are using [-serial mon:stdio](https://kashyapc.wordpress.com/2016/02/11/qemu-command-line-behavior-of-serial-stdio-vs-serial-monstdio/) option.
