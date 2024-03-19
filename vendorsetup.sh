# Kernel for Rmx2185
rm -rf kernel/realme/RMX2185
git clone --depth=1 https://github.com/picasso09/android_kernel_RMX2189R -b c05-upstream kernel/realme/RMX2185

# Vendor for RMX2185
rm -rf vendor/realme/RMX2185
git clone --depth=1 https://github.com/picasso09/vendor_tree_RMX2185 -b lineage-18.1-rmui2 vendor/realme/RMX2185

# Hardware OSS parts for RMX2185
# rm -rf hardware/mediatek
# git clone --depth=1 https://github.com/picasso09/android_hardware_mediatek hardware/mediatek

# Mediatek Sepolicy_vndr
# rm -rf device/mediatek/sepolicy_vndr
# git clone --depth=1 https://github.com/picasso09/android_device_mediatek_sepolicy_vndr device/mediatek/sepolicy_vndr

# AOSP 13.0.1 proton-clang need RMX2185 (if use new clang compile got broken)
git clone --depth=1 https://github.com/picasso09/proton-clang prebuilts/clang/host/linux-x86/proton-clang