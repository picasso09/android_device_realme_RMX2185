#! /bin/sh

# Set up ZRAM with a fixed 2GB swap size
echo 1 > /sys/block/zram0/reset
echo 'lz4' > /sys/block/zram0/comp_algorithm
echo 2147483648 > /sys/block/zram0/disksize
echo 160 > /proc/sys/vm/swappiness
echo 60 > /proc/sys/vm/direct_swappiness

sleep 0.5

mkswap /dev/block/zram0
sleep 0.5
swapon -d /dev/block/zram0
