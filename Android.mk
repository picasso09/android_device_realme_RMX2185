#
# Copyright (C) 2018-2022 ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),RMX2185)
  subdir_makefiles=$(call first-makefiles-under,$(LOCAL_PATH))
  $(foreach mk,$(subdir_makefiles),$(info including $(mk) ...)$(eval include $(mk)))

GATEKEEPER_SYMLINK += $(TARGET_OUT_VENDOR)/lib/hw/gatekeeper.default.so
GATEKEEPER_SYMLINK += $(TARGET_OUT_VENDOR)/lib64/hw/gatekeeper.default.so
$(GATEKEEPER_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@mkdir -p $(dir $@)
	$(hide) ln -sf libSoftGatekeeper.so $@

GATEKEEPER_SYMLINK += $(TARGET_OUT_VENDOR)/lib/hw/gatekeeper.mt6765.so
GATEKEEPER_SYMLINK += $(TARGET_OUT_VENDOR)/lib/hw/gatekeeper.oppo6765.so
GATEKEEPER_SYMLINK += $(TARGET_OUT_VENDOR)/lib64/hw/gatekeeper.mt6765.so
GATEKEEPER_SYMLINK += $(TARGET_OUT_VENDOR)/lib64/hw/gatekeeper.oppo6765.so
$(GATEKEEPER_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@mkdir -p $(dir $@)
	$(hide) ln -sf libMcGatekeeper.so $@

ALL_DEFAULT_INSTALLED_MODULES += $(GATEKEEPER_SYMLINK)

VULKAN_SYMLINK += $(TARGET_OUT_VENDOR)/lib/hw/vulkan.mt6765.so
VULKAN_SYMLINK += $(TARGET_OUT_VENDOR)/lib64/hw/vulkan.mt6765.so
$(VULKAN_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@mkdir -p $(dir $@)
	$(hide) ln -sf ../egl/libGLES_meow.so $@

ALL_DEFAULT_INSTALLED_MODULES += $(VULKAN_SYMLINK)

KMSETKEY_SYMLINK += $(TARGET_OUT_VENDOR)/lib/hw/kmsetkey.default.so
KMSETKEY_SYMLINK += $(TARGET_OUT_VENDOR)/lib64/hw/kmsetkey.default.so
$(KMSETKEY_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@mkdir -p $(dir $@)
	$(hide) ln -sf kmsetkey.trustonic.so $@

ALL_DEFAULT_INSTALLED_MODULES += $(KMSETKEY_SYMLINK)

endif
