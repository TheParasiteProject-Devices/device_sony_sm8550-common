#
# Copyright (C) 2023 StatiXOS
# SPDX-License-Identifier: Apache-2.0
#

# Custom tuning for Lahaina SoC

# uclamp tuning
echo 50 > /dev/cpuctl/background/cpu.uclamp.max
echo 50 > /dev/cpuctl/system-background/cpu.uclamp.max
echo 60 > /dev/cpuctl/dex2oat/cpu.uclamp.max

# Enable suspend to RAM
write /sys/power/mem_sleep "deep"
