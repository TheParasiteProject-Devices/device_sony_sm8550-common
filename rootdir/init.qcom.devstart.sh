#!/system/bin/sh

echo 1 > /sys/kernel/boot_adsp/boot
echo 1 > /sys/kernel/boot_cdsp/boot
echo 1 > /sys/devices/virtual/cvp/cvp/boot
setprop sys.qcom.devup 1
