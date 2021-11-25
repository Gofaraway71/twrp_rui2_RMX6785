#!/sbin/sh
# This script is Needed to Set Automatically Device Props.

prjName=$(cat /proc/oplusVersion/prjVersion)
echo $prjName
resetprop "ro.product.product" "RMX6785"
case $prjName in
    "20682")
        resetprop "ro.product.model" "Realme RMX6785"
        resetprop "ro.build.device" "RMX2151"
        ;;
    *)
        resetprop "ro.product.model" "Realme RMX6785"
        resetprop "ro.build.device" "RMX2001"
        ;;
esac

exit 0
