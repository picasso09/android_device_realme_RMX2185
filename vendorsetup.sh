echo ' Device Setup'
git clone --depth=1 https://github.com/picasso09/device_vendor_realme_RMX2185 -b lineage-21-ui2 vendor/realme/RMX2185
git clone --depth=1 https://github.com/picasso09/proton-clang prebuilts/clang/host/linux-x86/proton-clang
git clone --depth=1 https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr device/mediatek/sepolicy_vndr
echo 'Done go to cook'
