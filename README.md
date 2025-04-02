# LLVM-MLIR Example Project

This repository contains examples and experiments with LLVM and MLIR ([Multi-Level Intermediate Representation](https://mlir.llvm.org/)).

## Setup

```bash
git clone https://github.com/llvm/llvm-project.git
cd llvm-project
mkdir build
cd build
cmake -G Ninja ../llvm \
    -DLLVM_ENABLE_PROJECTS="mlir" \
    -DLLVM_TARGETS_TO_BUILD="host" \
    -DCMAKE_BUILD_TYPE=Debug \
    -DLLVM_ENABLE_ASSERTIONS=ON \
    -DLLVM_BUILD_EXAMPLES=ON \
    -DLLVM_USE_LINKER=lld \
    -DLLVM_BUILD_EXAMPLES=ON \
    -DLLVM_INSTALL_UTILS=ON \
    -DMLIR_ENABLE_EXECUTION_ENGINE=ON
ninja
```

## Run

```bash
export LLVM_BUILD=/path/to/your/build/bin
make

# Now run:
lldb ./simple
```
