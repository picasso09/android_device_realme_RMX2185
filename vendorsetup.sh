# Kernel for RMX2185
rm -rf kernel/realme/RMX2185
git clone --depth=1 https://github.com/picasso09/Dv-kernelRMX2189Q -b wifi kernel/realme/RMX2185

# Vendor Blobs for RMX2185
rm -rf vendor/realme/RMX2185
git clone --depth=1 https://github.com/picasso09/device_vendor_realme_RMX2185 -b arrow-13.1 vendor/realme/RMX2185
rm -rf vendor/realme/RMX2185-ims
git clone https://github.com/picasso09/android_vendor_realme_RMX2185-ims -b arrow-13.1 vendor/realme/RMX2185-ims

# Hardware OSS parts for RMX2185
rm -rf hardware/mediatek
git clone --depth=1 https://github.com/ArrowOS/android_hardware_mediatek -b arrow-13.1 hardware/mediatek

# Mediatek Sepolicy_vndr
rm -rf device/mediatek/sepolicy_vndr
git clone https://github.com/ArrowOS/android_device_mediatek_sepolicy_vndr -b arrow-13.1 device/mediatek/sepolicy_vndr

# AOSP 13.0.1 clang-r353983c1 need RMX2185 (if use new clang compile got broken)
rm -rf prebuilts/clang/host/linux-x86/clang-r353983c1
git clone --depth=1 https://github.com/picasso09/clang-9.0.3-r353983c1 prebuilts/clang/host/linux-x86/clang-r353983c1
