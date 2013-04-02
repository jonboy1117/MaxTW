echo 0 > /sys/devices/system/cpu/cpufreq/busfreq_level_lock
echo userspace >  /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo 1000000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed

sleep 50
echo ondemand > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo -1 > /sys/devices/system/cpu/cpufreq/busfreq_level_lock
sleep 5

echo 5 > /sys/devices/system/cpu/cpufreq/ondemand/down_differential
echo 90 > /sys/devices/system/cpu/cpufreq/ondemand/up_threshold

echo 25 > /sys/devices/system/cpu/cpufreq/busfreq_up_threshold
