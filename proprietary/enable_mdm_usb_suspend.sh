#!/system/bin/sh
echo on > /sys/devices/platform/ohci-omap3/usb2/power/control
for i in 1 2 3 4 5 6
do
    echo "Checking ttyUSB0 $i times"
    if [ -c /dev/ttyUSB0 ]
    then
       break
    else
       /system/bin/sleep 5
    fi
done
echo auto > /sys/devices/platform/ohci-omap3/usb2/2-1/power/control
echo auto > /sys/devices/platform/ohci-omap3/usb2/power/control
echo "Enabled MDM USB auto suspend"
