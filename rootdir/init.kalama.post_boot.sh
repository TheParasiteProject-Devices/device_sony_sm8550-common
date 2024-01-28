#!/vendor/bin/sh
#
# Copyright (C) 2023 StatiXOS
# Copyright (C) 2024 Paranoid Android
# SPDX-License-Identifier: Apache-2.0
#

# Custom tuning for Lahaina SoC

function write_irq_affinity() {
    # Arguments:
    # $1 = irq name
    # $2 = cpu id
    irq_dir="$(dirname /proc/irq/*/$1)"
    [ -d "$irq_dir" ] && echo $2 > "${irq_dir}/smp_affinity_list"
}

# uclamp tuning
echo 50 > /dev/cpuctl/background/cpu.uclamp.max
echo 50 > /dev/cpuctl/system-background/cpu.uclamp.max
echo 60 > /dev/cpuctl/dex2oat/cpu.uclamp.max

# Enable suspend to RAM
write /sys/power/mem_sleep "deep"

# IRQ Tuning
# kgsl_3d0_irq -> CPU 6
# msm_drm -> CPU 7
write_irq_affinity kgsl_3d0_irq 6
write_irq_affinity msm_drm 7
