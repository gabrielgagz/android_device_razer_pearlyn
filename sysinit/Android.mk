LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE		:= hcidump.sh
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/hcidump.sh
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := inithsic.control.bt.sh
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/hsic.control.bt.sh
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.ath3k.bt.sh
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.ath3k.bt.sh
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.crda.sh
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.crda.sh
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.qcom.audio.sh
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.qcom.audio.sh
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.qcom.bt.sh
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/init.qcom.bt.sh
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.qcom.coex.sh
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/init.qcom.coex.sh
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.qcom.efs.sync.sh
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/init.qcom.efs.sync.sh
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.qcom.fm.sh
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.qcom.fm.sh
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.qcom.modem_links.sh
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.qcom.modem_links.sh
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.qcom.post_boot.sh
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.qcom.post_boot.sh
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.qcom.sdio.sh
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.qcom.sdio.sh
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.qcom.wifi.sh
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.qcom.wifi.sh
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := qca6234-service.sh
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/qca6234-service.sh
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := sec_config
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/sec_config
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := usf_post_boot.sh
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/usf_post_boot.sh
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := valiService.conf
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/valiService.conf
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := vold.fstab
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/vold.fstab
include $(BUILD_PREBUILT)
