#!/bin/bash

# Clone Kernel Modules repo
if [ ! -d "kernel/modules" ]; then
    mkdir -p kernel/modules
    touch kernel/modules/Android.mk
fi

# Clone KernelSU repo
if [ ! -d "kernel/modules/misc/KernelSU" ]; then
    git clone https://github.com/tiann/KernelSU kernel/modules/misc/KernelSU
fi

# Update KernelSU repo
if [ -d "kernel/modules/misc/KernelSU" ]; then
    cd kernel/modules/misc/KernelSU
    git reset --hard
    git fetch origin
    git pull origin main
    cd ../../../../
fi
