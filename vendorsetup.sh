echo "Cloning Dependencies"
#git config --global credential.helper cache
git clone https://github.com/techyminati/proprietary_vendor_realmeme_RMX2185 -b android-14.0 vendor/realme/RMX2185
#git clone https://github.com/techyminati/android_packages_apps_RealmeParts -b android-13.0 packages/apps/RealmeParts
git clone --depth=1 https://github.com/picasso09/android_kernel_RMX2189R -b c05-upstream
rm -rf prebuilts/clang/host/linux-x86/proton-clang
git clone --depth=1 https://github.com/picasso09/proton-clang prebuilts/clang/host/linux-x86/proton-clang
# rm -rf packages/apps/FMRadio
# git clone https://github.com/techyminati/android_packages_apps_FMRadio packages/apps/FMRadio
echo "Done!"

