# SGLang-with-PTO-kernels
SGLang on Ascend NPUs with JIT-compiled, hand-optimized kernels written in PTO DSL.


# Git clone
- We pick up 2 submodules (sglang and pto-isa) so you will need to add the `--recurse-submodules` flag to `git clone`
- Use this command: `git clone --recurse-submodules https://github.com/DavidKarFaiTam/SGLang-with-PTO-kernels.git`


# Outline of Setup
1. Development Environment (in a Docker Container)
    - Obtain SGLang-Ascend's pre-built Docker image for A2 or A3 NPU chips
        - `docker pull lmsysorg/sglang:deepseek-v4-npu-910b`<br>
           **\*\*OR\*\***
        - `docker pull lmsysorg/sglang:deepseek-v4-npu-a3`
    - We will be developing & testing within this Docker container because it has the correct development environment
    - However, we won't be using the version of SGLang that is included in the Docker image
2. SGLang Runtime
    - Placed into `third_party/sglang/` as a git submodule
    - Picks up David's fork of iforgetmyname's fork (https://github.com/iforgetmyname/sglang dsv4_release branch) of SGLang, located at https://github.com/DavidKarFaiTam/SGLang
3. Bisheng NPU Compiler (a.k.a. CCE compiler)
    - We will use the `bisheng` compiler that comes in the CANN 8.5 package
    - The CANN 8.5 package is already installed in the Docker image
4. PTO-ISA Custom Kernels
    - Placed into `third_party/pto-isa/` as a git submodule
    - Picks up David's fork of Ruoyu's https://github.com/hw-native-sys/pto-isa main branch, located at https://githubm.com/DavidKarFaiTam/pto-isa
        - Initially: Try using the GEMM (only) kernel located at `demos/torch_jit/gemm/gemm_kernel.cpp`
