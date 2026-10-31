# cappu Android 12：由 generate-blobs.py 从 ELF 清单生成。
# 使用独立模块名，保留原文件名、分区及 32/64 位路径；不禁用 ELF 校验。
LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),cappu)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_bin_gsm0710muxd
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := gsm0710muxd
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_SRC_FILES := proprietary/vendor/bin/gsm0710muxd
LOCAL_SHARED_LIBRARIES := libcutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_bin_hw_android.hardware.audio@2.0-service-mediatek
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := android.hardware.audio@2.0-service-mediatek
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/bin/hw/android.hardware.audio@2.0-service-mediatek
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport liblog libutils libhardware android.hardware.audio@2.0 android.hardware.audio.common@2.0 android.hardware.audio.effect@2.0 android.hardware.soundtrigger@2.0 android.hardware.broadcastradio@1.0 android.hardware.broadcastradio@1.1 cappu_blob_lib_vendor.mediatek.hardware.audio@2.1_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_bin_hw_android.hardware.drm@1.0-service.widevine
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := android.hardware.drm@1.0-service.widevine
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/bin/hw/android.hardware.drm@1.0-service.widevine
LOCAL_SHARED_LIBRARIES := libhidlbase android.hardware.drm@1.0 libbase libhidltransport libhwbinder liblog libutils cappu_blob_lib_libwvhidl libbinder libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_bin_hw_camerahalserver
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := camerahalserver
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/bin/hw/camerahalserver
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libbinder libhwbinder libhidlbase libhidltransport android.hardware.camera.provider@2.4 cappu_blob_lib_vendor.mediatek.hardware.camera.ccap@1.0_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_bin_hw_rilproxy
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := rilproxy
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/bin/hw/rilproxy
LOCAL_SHARED_LIBRARIES := libcutils liblog cappu_blob_lib_librilproxy libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_bin_hw_vendor.mediatek.hardware.mtkcodecservice@1.1-service
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.mtkcodecservice@1.1-service
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/bin/hw/vendor.mediatek.hardware.mtkcodecservice@1.1-service
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport liblog libutils libhardware cappu_blob_lib_vendor.mediatek.hardware.mtkcodecservice@1.1_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_bin_hw_vendor.mediatek.hardware.power@1.1-service
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.power@1.1-service
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/bin/hw/vendor.mediatek.hardware.power@1.1-service
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libhwbinder libhardware libhidlbase libhidltransport android.hardware.power@1.0 cappu_blob_lib_vendor.mediatek.hardware.power@1.1_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_bin_hw_vendor.mediatek.hardware.pq@2.0-service
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.pq@2.0-service
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/bin/hw/vendor.mediatek.hardware.pq@2.0-service
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport liblog libutils libhardware cappu_blob_lib_vendor.mediatek.hardware.pq@2.0_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_bin_lbs_hidl_service
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := lbs_hidl_service
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_SRC_FILES := proprietary/vendor/bin/lbs_hidl_service
LOCAL_SHARED_LIBRARIES := liblog libcutils libbase libhardware libbinder libhidlbase libhidltransport libutils cappu_blob_lib_vendor.mediatek.hardware.lbs@1.0_vendor cappu_blob_lib_lbs_hidl_service-impl libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_bin_md_ctrl
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := md_ctrl
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_SRC_FILES := proprietary/vendor/bin/md_ctrl
LOCAL_SHARED_LIBRARIES := liblog libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_bin_mtkcam-debug
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := mtkcam-debug
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_SRC_FILES := proprietary/vendor/bin/mtkcam-debug
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libhidlbase android.hardware.camera.provider@2.4 libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_bin_mtkrild
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := mtkrild
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_SRC_FILES := proprietary/vendor/bin/mtkrild
LOCAL_SHARED_LIBRARIES := libcutils liblog cappu_blob_lib_librilmtk cappu_blob_lib_librilutilsmtk libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_bin_muxreport
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := muxreport
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_SRC_FILES := proprietary/vendor/bin/muxreport
LOCAL_SHARED_LIBRARIES := libcutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_bin_netdagent
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := netdagent
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_SRC_FILES := proprietary/vendor/bin/netdagent
LOCAL_SHARED_LIBRARIES := libcutils liblog cappu_blob_lib_libforkexecwrap libutils libhwbinder libhidlbase libhidltransport cappu_blob_lib_vendor.mediatek.hardware.netdagent@1.0_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_bin_netdc
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := netdc
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_SRC_FILES := proprietary/vendor/bin/netdc
LOCAL_SHARED_LIBRARIES := libcutils liblog libutils libhidlbase cappu_blob_lib_vendor.mediatek.hardware.netdagent@1.0_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_bin_nvram_agent_binder
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := nvram_agent_binder
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_SRC_FILES := proprietary/vendor/bin/nvram_agent_binder
LOCAL_SHARED_LIBRARIES := libutils libcutils libhardware libhidlbase libhidltransport libbinder cappu_blob_lib_libnvram liblog cappu_blob_lib_vendor.mediatek.hardware.nvram@1.0_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_bin_nvram_daemon
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := nvram_daemon
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_SRC_FILES := proprietary/vendor/bin/nvram_daemon
LOCAL_SHARED_LIBRARIES := libcutils cappu_blob_lib_libnvram cappu_blob_lib_libcustom_nvram cappu_blob_lib_libfile_op cappu_blob_lib_libnvram_daemon_callback liblog cappu_blob_lib_libhwm libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_bin_resize2fs
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := resize2fs
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_SRC_FILES := proprietary/vendor/bin/resize2fs
LOCAL_SHARED_LIBRARIES := libext2fs libext2_com_err libext2_e2p libext2_uuid libext2_blkid libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_bin_rs2spir
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := rs2spir
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_SRC_FILES := proprietary/vendor/bin/rs2spir
LOCAL_SHARED_LIBRARIES := libLLVM libc++ libLLVM_android
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_bin_spir2cl
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := spir2cl
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_SRC_FILES := proprietary/vendor/bin/spir2cl
LOCAL_SHARED_LIBRARIES := libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_bin_stp_dump3
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := stp_dump3
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_SRC_FILES := proprietary/vendor/bin/stp_dump3
LOCAL_SHARED_LIBRARIES := libcutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_bin_thermal
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := thermal
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_SRC_FILES := proprietary/vendor/bin/thermal
LOCAL_SHARED_LIBRARIES := libcutils cappu_blob_lib_libifcutils_mtk liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_bin_thermal_manager
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := thermal_manager
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_SRC_FILES := proprietary/vendor/bin/thermal_manager
LOCAL_SHARED_LIBRARIES := libcutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_bin_wifi2agps
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := wifi2agps
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_SRC_FILES := proprietary/vendor/bin/wifi2agps
LOCAL_SHARED_LIBRARIES := liblog libcutils libnl libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_egl_libEGL_mtk
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libEGL_mtk.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := egl
LOCAL_SRC_FILES := proprietary/vendor/lib/egl/libEGL_mtk.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libIMGegl
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_egl_libEGL_mtk
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libEGL_mtk.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := egl
LOCAL_SRC_FILES := proprietary/vendor/lib64/egl/libEGL_mtk.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libIMGegl
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_egl_libGLESv1_CM_mtk
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libGLESv1_CM_mtk.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := egl
LOCAL_SRC_FILES := proprietary/vendor/lib/egl/libGLESv1_CM_mtk.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libIMGegl cappu_blob_lib_libsrv_um cappu_blob_lib_libusc cappu_blob_lib_libgpu_aux cappu_blob_lib_libgralloc_extra libsync
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_egl_libGLESv1_CM_mtk
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libGLESv1_CM_mtk.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := egl
LOCAL_SRC_FILES := proprietary/vendor/lib64/egl/libGLESv1_CM_mtk.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libIMGegl cappu_blob_lib_libsrv_um cappu_blob_lib_libusc cappu_blob_lib_libgpu_aux cappu_blob_lib_libgralloc_extra libsync
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_egl_libGLESv2_mtk
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libGLESv2_mtk.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := egl
LOCAL_SRC_FILES := proprietary/vendor/lib/egl/libGLESv2_mtk.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libIMGegl cappu_blob_lib_libsrv_um cappu_blob_lib_libusc cappu_blob_lib_libglslcompiler cappu_blob_lib_libgpu_aux cappu_blob_lib_libgralloc_extra libsync
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_egl_libGLESv2_mtk
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libGLESv2_mtk.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := egl
LOCAL_SRC_FILES := proprietary/vendor/lib64/egl/libGLESv2_mtk.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libIMGegl cappu_blob_lib_libsrv_um cappu_blob_lib_libusc cappu_blob_lib_libglslcompiler cappu_blob_lib_libgpu_aux cappu_blob_lib_libgralloc_extra libsync
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_hw_android.hardware.audio@2.0-impl-mediatek
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := android.hardware.audio@2.0-impl-mediatek.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/lib/hw/android.hardware.audio@2.0-impl-mediatek.so
LOCAL_SHARED_LIBRARIES := android.hardware.audio.common-util libbase libcutils libfmq libhardware libhidlbase libhidltransport liblog libutils android.hardware.audio@2.0 android.hardware.audio.common@2.0 android.hardware.audio.common@2.0-util cappu_blob_lib_vendor.mediatek.hardware.audio@2.1_vendor libmedia_helper libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_hw_android.hardware.audio@2.0-impl-mediatek
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := android.hardware.audio@2.0-impl-mediatek.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/lib64/hw/android.hardware.audio@2.0-impl-mediatek.so
LOCAL_SHARED_LIBRARIES := android.hardware.audio.common-util libbase libcutils libfmq libhardware libhidlbase libhidltransport liblog libutils android.hardware.audio@2.0 android.hardware.audio.common@2.0 android.hardware.audio.common@2.0-util cappu_blob_lib_vendor.mediatek.hardware.audio@2.1_vendor libmedia_helper libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_hw_android.hardware.camera.provider@2.4-impl-mediatek
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := android.hardware.camera.provider@2.4-impl-mediatek.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/lib/hw/android.hardware.camera.provider@2.4-impl-mediatek.so
LOCAL_SHARED_LIBRARIES := libcappu_hidl_compat liblog libutils libcutils libhidlbase libhidltransport android.hardware.camera.common@1.0 android.hardware.camera.provider@2.4 android.hardware.camera.device@1.0 android.hardware.camera.device@3.2 cappu_blob_lib_libmtkcam_metadata cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_debugutils cappu_blob_lib_libcam.metadataprovider cappu_blob_lib_libcam.halsensor cappu_blob_lib_libcam.hal3a.v3 cappu_blob_lib_libcam_hwutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_hw_android.hardware.camera.provider@2.4-impl-mediatek
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := android.hardware.camera.provider@2.4-impl-mediatek.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/lib64/hw/android.hardware.camera.provider@2.4-impl-mediatek.so
LOCAL_SHARED_LIBRARIES := libcappu_hidl_compat liblog libutils libcutils libhidlbase libhidltransport android.hardware.camera.common@1.0 android.hardware.camera.provider@2.4 android.hardware.camera.device@1.0 android.hardware.camera.device@3.2 cappu_blob_lib_libmtkcam_metadata cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_debugutils cappu_blob_lib_libcam.metadataprovider cappu_blob_lib_libcam.halsensor cappu_blob_lib_libcam.hal3a.v3 cappu_blob_lib_libcam_hwutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_hw_audio.primary.mt8173
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := audio.primary.mt8173.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/lib/hw/audio.primary.mt8173.so
LOCAL_SHARED_LIBRARIES := libmedia libcutils libutils libhardware_legacy libhardware cappu_blob_lib_libblisrc_vendor libpowermanager cappu_blob_lib_libaudiosetting libaudioutils libtinyalsa libtinycompress cappu_blob_lib_libaudiocomponentengine_vendor cappu_blob_lib_libaudiodcrflt_vendor libaudioroute libaudiospdif cappu_blob_lib_libaudiotoolkit_vendor liblog libaudioclient libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_hw_audio.primary.mt8173
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := audio.primary.mt8173.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/lib64/hw/audio.primary.mt8173.so
LOCAL_SHARED_LIBRARIES := libmedia libcutils libutils libhardware_legacy libhardware cappu_blob_lib_libblisrc_vendor libpowermanager cappu_blob_lib_libaudiosetting libaudioutils libtinyalsa libtinycompress cappu_blob_lib_libaudiocomponentengine_vendor cappu_blob_lib_libaudiodcrflt_vendor libaudioroute libaudiospdif cappu_blob_lib_libaudiotoolkit_vendor liblog libaudioclient libc++
include $(BUILD_PREBUILT)

# 按 ELF 的真实 SONAME 安装，并用 symlink 保留旧 HAL/模块查找路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_hw_gralloc.mt8173
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := gralloc.rogue.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SYMLINKS := gralloc.mt8173.img.so gralloc.mt8173.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/lib/hw/gralloc.mt8173.so
# cappu's stock gralloc needs sw_sync, which Android 12 omits from the generic
# libsync vendor ABI; resolve it through the device-local compatibility library.
LOCAL_SHARED_LIBRARIES := libhardware liblog libion libutils cappu_blob_lib_libion_mtk cappu_blob_lib_libgralloc_extra libcutils libdrm libsync libcappu_sw_sync_compat
include $(BUILD_PREBUILT)

# 按 ELF 的真实 SONAME 安装，并用 symlink 保留旧 HAL/模块查找路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_hw_gralloc.mt8173
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := gralloc.rogue.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SYMLINKS := gralloc.mt8173.img.so gralloc.mt8173.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/lib64/hw/gralloc.mt8173.so
# Keep the ARM64 gralloc on the same device-local sw_sync bridge as the ARM32 blob.
LOCAL_SHARED_LIBRARIES := libhardware liblog libion libutils cappu_blob_lib_libion_mtk cappu_blob_lib_libgralloc_extra libcutils libdrm libsync libcappu_sw_sync_compat
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_hw_hwcomposer.mt8173
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := hwcomposer.mt8173.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/lib/hw/hwcomposer.mt8173.so
# The stock MT8173 hwcomposer imports sw_sync functions hidden from Android 12 libsync.
# Resolve them through the cappu-only vendor bridge, for both legacy bitnesses.
LOCAL_SHARED_LIBRARIES := libui libutils libcutils liblog libsync libion cappu_blob_lib_libbwc cappu_blob_lib_libion_mtk cappu_blob_lib_libdpframework libhardware cappu_blob_lib_libgralloc_extra libbinder libpower libgui cappu_blob_lib_libm4u cappu_blob_lib_libged cappu_blob_lib_libui_ext libhidlbase libhwbinder libhidltransport cappu_blob_lib_libpq_prot cappu_blob_lib_vendor.mediatek.hardware.pq@2.0_vendor android.hardware.power@1.0 cappu_blob_lib_vendor.mediatek.hardware.power@1.1_vendor libc++ libcappu_sw_sync_compat
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_hw_hwcomposer.mt8173
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := hwcomposer.mt8173.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/lib64/hw/hwcomposer.mt8173.so
# The stock MT8173 hwcomposer imports sw_sync functions hidden from Android 12 libsync.
# Resolve them through the cappu-only vendor bridge, for both legacy bitnesses.
LOCAL_SHARED_LIBRARIES := libui libutils libcutils liblog libsync libion cappu_blob_lib_libbwc cappu_blob_lib_libion_mtk cappu_blob_lib_libdpframework libhardware cappu_blob_lib_libgralloc_extra libbinder libpower libgui cappu_blob_lib_libm4u cappu_blob_lib_libged cappu_blob_lib_libui_ext libhidlbase libhwbinder libhidltransport cappu_blob_lib_libpq_prot cappu_blob_lib_vendor.mediatek.hardware.pq@2.0_vendor android.hardware.power@1.0 cappu_blob_lib_vendor.mediatek.hardware.power@1.1_vendor libc++ libcappu_sw_sync_compat
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_hw_memtrack.mt8173
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := memtrack.mt8173.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/lib/hw/memtrack.mt8173.so
LOCAL_SHARED_LIBRARIES := liblog libcutils libhardware cappu_blob_lib_libmemtrack_GL libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_hw_memtrack.mt8173
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := memtrack.mt8173.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/lib64/hw/memtrack.mt8173.so
LOCAL_SHARED_LIBRARIES := liblog libcutils libhardware cappu_blob_lib_libmemtrack_GL libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_hw_power.mt8173
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := power.mt8173.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/lib/hw/power.mt8173.so
LOCAL_SHARED_LIBRARIES := liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_hw_power.mt8173
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := power.mt8173.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/lib64/hw/power.mt8173.so
LOCAL_SHARED_LIBRARIES := liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_hw_vendor.mediatek.hardware.camera.ccap@1.0-impl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.camera.ccap@1.0-impl.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/lib/hw/vendor.mediatek.hardware.camera.ccap@1.0-impl.so
LOCAL_SHARED_LIBRARIES := liblog libutils libhidlbase libhidlmemory libhidltransport cappu_blob_lib_vendor.mediatek.hardware.camera.ccap@1.0_vendor android.hardware.camera.common@1.0 android.hardware.camera.device@3.2 android.hidl.memory@1.0 cappu_blob_lib_libmtkcam_stdutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_hw_vendor.mediatek.hardware.camera.ccap@1.0-impl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.camera.ccap@1.0-impl.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/lib64/hw/vendor.mediatek.hardware.camera.ccap@1.0-impl.so
LOCAL_SHARED_LIBRARIES := liblog libutils libhidlbase libhidlmemory libhidltransport cappu_blob_lib_vendor.mediatek.hardware.camera.ccap@1.0_vendor android.hardware.camera.common@1.0 android.hardware.camera.device@3.2 android.hidl.memory@1.0 cappu_blob_lib_libmtkcam_stdutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_hw_vendor.mediatek.hardware.mtkcodecservice@1.1-impl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.mtkcodecservice@1.1-impl.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/lib/hw/vendor.mediatek.hardware.mtkcodecservice@1.1-impl.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils libhidlmemory cappu_blob_lib_vendor.mediatek.hardware.mtkcodecservice@1.1_vendor android.hidl.allocator@1.0 android.hidl.memory@1.0 libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_hw_vendor.mediatek.hardware.mtkcodecservice@1.1-impl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.mtkcodecservice@1.1-impl.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/lib64/hw/vendor.mediatek.hardware.mtkcodecservice@1.1-impl.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils libhidlmemory cappu_blob_lib_vendor.mediatek.hardware.mtkcodecservice@1.1_vendor android.hidl.allocator@1.0 android.hidl.memory@1.0 libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_hw_vendor.mediatek.hardware.nvram@1.0-impl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.nvram@1.0-impl.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/lib/hw/vendor.mediatek.hardware.nvram@1.0-impl.so
LOCAL_SHARED_LIBRARIES := libbase libcutils libhardware libhidlbase libhidltransport liblog libutils cappu_blob_lib_libnvram cappu_blob_lib_libfile_op cappu_blob_lib_vendor.mediatek.hardware.nvram@1.0_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_hw_vendor.mediatek.hardware.nvram@1.0-impl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.nvram@1.0-impl.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/lib64/hw/vendor.mediatek.hardware.nvram@1.0-impl.so
LOCAL_SHARED_LIBRARIES := libbase libcutils libhardware libhidlbase libhidltransport liblog libutils cappu_blob_lib_libnvram cappu_blob_lib_libfile_op cappu_blob_lib_vendor.mediatek.hardware.nvram@1.0_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_hw_vendor.mediatek.hardware.power@1.1-impl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.power@1.1-impl.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/lib/hw/vendor.mediatek.hardware.power@1.1-impl.so
LOCAL_SHARED_LIBRARIES := liblog libhardware libhwbinder libhidlbase libhidltransport libutils libcutils android.hardware.power@1.0 cappu_blob_lib_vendor.mediatek.hardware.power@1.1_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_hw_vendor.mediatek.hardware.power@1.1-impl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.power@1.1-impl.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/lib64/hw/vendor.mediatek.hardware.power@1.1-impl.so
LOCAL_SHARED_LIBRARIES := liblog libhardware libhwbinder libhidlbase libhidltransport libutils libcutils android.hardware.power@1.0 cappu_blob_lib_vendor.mediatek.hardware.power@1.1_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_hw_vendor.mediatek.hardware.pq@2.0-impl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.pq@2.0-impl.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/lib/hw/vendor.mediatek.hardware.pq@2.0-impl.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils cappu_blob_lib_libpq_prot libhidlmemory cappu_blob_lib_vendor.mediatek.hardware.pq@2.0_vendor android.hidl.allocator@1.0 android.hidl.memory@1.0 libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_hw_vendor.mediatek.hardware.pq@2.0-impl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.pq@2.0-impl.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/lib64/hw/vendor.mediatek.hardware.pq@2.0-impl.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils cappu_blob_lib_libpq_prot libhidlmemory cappu_blob_lib_vendor.mediatek.hardware.pq@2.0_vendor android.hidl.allocator@1.0 android.hidl.memory@1.0 libc++
include $(BUILD_PREBUILT)

# 按 ELF 的真实 SONAME 安装，并用 symlink 保留旧 HAL/模块查找路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_hw_vulkan.mt8173
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vulkan.rogue.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SYMLINKS := vulkan.mt8173.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/lib/hw/vulkan.mt8173.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libsrv_um cappu_blob_lib_libusc cappu_blob_lib_libufwriter liblog libsync
include $(BUILD_PREBUILT)

# 按 ELF 的真实 SONAME 安装，并用 symlink 保留旧 HAL/模块查找路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_hw_vulkan.mt8173
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vulkan.rogue.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SYMLINKS := vulkan.mt8173.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := proprietary/vendor/lib64/hw/vulkan.mt8173.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libsrv_um cappu_blob_lib_libusc cappu_blob_lib_libufwriter liblog libsync
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_lbs_hidl_service-impl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := lbs_hidl_service-impl.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/lbs_hidl_service-impl.so
LOCAL_SHARED_LIBRARIES := liblog libcutils libbase libhardware libbinder libhidlbase libhidltransport libutils cappu_blob_lib_vendor.mediatek.hardware.lbs@1.0_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_lbs_hidl_service-impl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := lbs_hidl_service-impl.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/lbs_hidl_service-impl.so
LOCAL_SHARED_LIBRARIES := liblog libcutils libbase libhardware libbinder libhidlbase libhidltransport libutils cappu_blob_lib_vendor.mediatek.hardware.lbs@1.0_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_lib3a.log
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := lib3a.log.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/lib3a.log.so
LOCAL_SHARED_LIBRARIES := libutils libcutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_lib3a.log
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := lib3a.log.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/lib3a.log.so
LOCAL_SHARED_LIBRARIES := libutils libcutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_lib3a
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := lib3a.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/lib3a.so
LOCAL_SHARED_LIBRARIES := libcutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_lib3a
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := lib3a.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/lib3a.so
LOCAL_SHARED_LIBRARIES := libcutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_lib3a_sample
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := lib3a_sample.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/lib3a_sample.so
LOCAL_SHARED_LIBRARIES := libcutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_lib3a_sample
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := lib3a_sample.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/lib3a_sample.so
LOCAL_SHARED_LIBRARIES := libcutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libBnMtkCodec
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libBnMtkCodec.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libBnMtkCodec.so
LOCAL_SHARED_LIBRARIES := libbinder libutils libcutils libui liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libBnMtkCodec
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libBnMtkCodec.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libBnMtkCodec.so
LOCAL_SHARED_LIBRARIES := libbinder libutils libcutils libui liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libClearMotionFW
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libClearMotionFW.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libClearMotionFW.so
LOCAL_SHARED_LIBRARIES := libutils libcutils liblog libui libion cappu_blob_lib_libdpframework cappu_blob_lib_libvcodecdrv cappu_blob_lib_librrc libc++
include $(BUILD_PREBUILT)

# 按 ELF 的真实 SONAME 安装，并用 symlink 保留旧 HAL/模块查找路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libHEVCdec_sa.ca7.android
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libHEVCdec_sa.ca7.android_ut.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SYMLINKS := libHEVCdec_sa.ca7.android.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libHEVCdec_sa.ca7.android.so
LOCAL_SHARED_LIBRARIES := libcompiler_rt cappu_blob_lib_libvcodec_oal liblog libutils libcutils libstdc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libIMGegl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libIMGegl.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libIMGegl.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libsrv_um libsync cappu_blob_lib_libged cappu_blob_lib_libgralloc_extra libhardware libz libdrm
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libIMGegl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libIMGegl.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libIMGegl.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libsrv_um libsync cappu_blob_lib_libged cappu_blob_lib_libgralloc_extra libhardware libz libdrm
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libJpgDecPipe
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libJpgDecPipe.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libJpgDecPipe.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libSwJpgCodec cappu_blob_lib_libdpframework cappu_blob_lib_libmtkjpeg libion cappu_blob_lib_libion_mtk cappu_blob_lib_libm4u libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libJpgDecPipe
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libJpgDecPipe.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libJpgDecPipe.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libSwJpgCodec cappu_blob_lib_libdpframework cappu_blob_lib_libmtkjpeg libion cappu_blob_lib_libion_mtk cappu_blob_lib_libm4u libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libJpgEncPipe
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libJpgEncPipe.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libJpgEncPipe.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libmtkjpeg libion cappu_blob_lib_libion_mtk cappu_blob_lib_libm4u libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libJpgEncPipe
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libJpgEncPipe.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libJpgEncPipe.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libmtkjpeg libion cappu_blob_lib_libion_mtk cappu_blob_lib_libm4u libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libMtkOmxCore
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libMtkOmxCore.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libMtkOmxCore.so
LOCAL_SHARED_LIBRARIES := libbinder libutils libcutils libui libion liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libMtkOmxCore
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libMtkOmxCore.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libMtkOmxCore.so
LOCAL_SHARED_LIBRARIES := libbinder libutils libcutils libui libion liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libMtkOmxMp3Dec
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libMtkOmxMp3Dec.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libMtkOmxMp3Dec.so
LOCAL_SHARED_LIBRARIES := libutils libcutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libMtkOmxVdecEx
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libMtkOmxVdecEx.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libMtkOmxVdecEx.so
LOCAL_SHARED_LIBRARIES := libcappu_graphics_compat libcappu_legacy_abi libutils libcutils liblog libui libion cappu_blob_lib_libion_mtk cappu_blob_lib_libdpframework cappu_blob_lib_libgralloc_extra cappu_blob_lib_libvcodecdrv cappu_blob_lib_libvcodec_utility libhardware cappu_blob_lib_libClearMotionFW cappu_blob_lib_libmhalImageCodec libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libMtkOmxVenc
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libMtkOmxVenc.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libMtkOmxVenc.so
LOCAL_SHARED_LIBRARIES := libcappu_graphics_compat libcappu_legacy_abi libbinder libutils libcutils liblog libui libion cappu_blob_lib_libion_mtk cappu_blob_lib_libgralloc_extra android.hardware.media@1.0 android.hardware.media.omx@1.0 cappu_blob_lib_libbwc cappu_blob_lib_libvcodecdrv cappu_blob_lib_libvcodec_utility libhardware cappu_blob_lib_libdpframework libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libOpenCL
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libOpenCL.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libOpenCL.so
LOCAL_SHARED_LIBRARIES := libcutils libutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libOpenCL
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libOpenCL.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libOpenCL.so
LOCAL_SHARED_LIBRARIES := libcutils libutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libPQDCjni
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libPQDCjni.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libPQDCjni.so
LOCAL_SHARED_LIBRARIES := libutils libcutils cappu_blob_lib_libpq_prot liblog libhidlbase libhidlmemory cappu_blob_lib_vendor.mediatek.hardware.pq@2.0_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libPQDCjni
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libPQDCjni.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libPQDCjni.so
LOCAL_SHARED_LIBRARIES := libutils libcutils cappu_blob_lib_libpq_prot liblog libhidlbase libhidlmemory cappu_blob_lib_vendor.mediatek.hardware.pq@2.0_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libPQjni
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libPQjni.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libPQjni.so
LOCAL_SHARED_LIBRARIES := libutils libcutils liblog libhidlbase cappu_blob_lib_vendor.mediatek.hardware.pq@2.0_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libPQjni
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libPQjni.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libPQjni.so
LOCAL_SHARED_LIBRARIES := libutils libcutils liblog libhidlbase cappu_blob_lib_vendor.mediatek.hardware.pq@2.0_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libPVROCL
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libPVROCL.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libPVROCL.so
LOCAL_SHARED_LIBRARIES := libc++ libhardware liblog libcutils libdrm libsync
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libPVROCL
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libPVROCL.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libPVROCL.so
LOCAL_SHARED_LIBRARIES := libc++ libhardware liblog libcutils libdrm libsync
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libPVRScopeServices
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libPVRScopeServices.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libPVRScopeServices.so
LOCAL_SHARED_LIBRARIES := liblog libc++ libdrm libsync
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libPVRScopeServices
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libPVRScopeServices.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libPVRScopeServices.so
LOCAL_SHARED_LIBRARIES := liblog libc++ libdrm libsync
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libRSDriver_mtk
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libRSDriver_mtk.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libRSDriver_mtk.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libOpenCL libc++ libz libutils libRS_internal libbcinfo liblog libEGL libGLESv1_CM libGLESv2 libnativewindow
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libRSDriver_mtk
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libRSDriver_mtk.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libRSDriver_mtk.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libOpenCL libc++ libz libutils libRS_internal libbcinfo liblog libEGL libGLESv1_CM libGLESv2 libnativewindow
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libSwJpgCodec
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libSwJpgCodec.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libSwJpgCodec.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libmtkjpeg libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libSwJpgCodec
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libSwJpgCodec.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libSwJpgCodec.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libmtkjpeg libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libacdk
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libacdk.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libacdk.so
LOCAL_SHARED_LIBRARIES := libcappu_memory_heap_base_compat libcutils cappu_blob_lib_libimageio cappu_blob_lib_libcamdrv cappu_blob_lib_libcam.iopipe cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_imgbuf cappu_blob_lib_libcam.halsensor cappu_blob_lib_libmtkcam_metadata cappu_blob_lib_libm4u libhardware libutils libbinder cappu_blob_lib_libmtkcam_fwkutils cappu_blob_lib_libcamalgo cappu_blob_lib_libcam.exif cappu_blob_lib_libfeatureio cappu_blob_lib_libfeatureiodrv cappu_blob_lib_libcameracustom cappu_blob_lib_libcam.camshot liblog cappu_blob_lib_libbwc cappu_blob_lib_libccap cappu_blob_lib_libmtkcam_device1 libhidlbase libhidlmemory libhidltransport android.hardware.camera.device@1.0 android.hardware.camera.common@1.0 android.hardware.graphics.mapper@2.0 android.hidl.allocator@1.0 android.hidl.memory@1.0 cappu_blob_lib_vendor.mediatek.hardware.camera.device@1.1_vendor cappu_blob_lib_libcam_hwutils cappu_blob_lib_libcam.paramsmgr cappu_blob_lib_libcam.client cappu_blob_lib_libcam.camadapter libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libacdk
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libacdk.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libacdk.so
LOCAL_SHARED_LIBRARIES := libcappu_memory_heap_base_compat libcutils cappu_blob_lib_libimageio cappu_blob_lib_libcamdrv cappu_blob_lib_libcam.iopipe cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_imgbuf cappu_blob_lib_libcam.halsensor cappu_blob_lib_libmtkcam_metadata cappu_blob_lib_libm4u libhardware libutils libbinder cappu_blob_lib_libmtkcam_fwkutils cappu_blob_lib_libcamalgo cappu_blob_lib_libcam.exif cappu_blob_lib_libfeatureio cappu_blob_lib_libfeatureiodrv cappu_blob_lib_libcameracustom cappu_blob_lib_libcam.camshot liblog cappu_blob_lib_libbwc cappu_blob_lib_libccap cappu_blob_lib_libmtkcam_device1 libhidlbase libhidlmemory libhidltransport android.hardware.camera.device@1.0 android.hardware.camera.common@1.0 android.hardware.graphics.mapper@2.0 android.hidl.allocator@1.0 android.hidl.memory@1.0 cappu_blob_lib_vendor.mediatek.hardware.camera.device@1.1_vendor cappu_blob_lib_libcam_hwutils cappu_blob_lib_libcam.paramsmgr cappu_blob_lib_libcam.client cappu_blob_lib_libcam.camadapter libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libaedv
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libaedv.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libaedv.so
LOCAL_SHARED_LIBRARIES := libcutils cappu_blob_lib_libmrdumpv liblog libz
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libaedv
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libaedv.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libaedv.so
LOCAL_SHARED_LIBRARIES := libcutils cappu_blob_lib_libmrdumpv liblog libz
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libaudiocompensationfilter_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libaudiocompensationfilter_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libaudiocompensationfilter_vendor.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libcustom_nvram cappu_blob_lib_libnvram libcutils liblog libutils cappu_blob_lib_libaudiocustparam_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libaudiocompensationfilter_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libaudiocompensationfilter_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libaudiocompensationfilter_vendor.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libcustom_nvram cappu_blob_lib_libnvram libcutils liblog libutils cappu_blob_lib_libaudiocustparam_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libaudiocomponentengine_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libaudiocomponentengine_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libaudiocomponentengine_vendor.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libaudiocompensationfilter_vendor cappu_blob_lib_libnvram libcutils liblog libutils cappu_blob_lib_libblisrc32_vendor cappu_blob_lib_libbessound_hd_mtk_vendor cappu_blob_lib_libmtklimiter_vendor cappu_blob_lib_libaudiodcrflt_vendor cappu_blob_lib_libmtkshifter_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libaudiocomponentengine_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libaudiocomponentengine_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libaudiocomponentengine_vendor.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libaudiocompensationfilter_vendor cappu_blob_lib_libnvram libcutils liblog libutils cappu_blob_lib_libblisrc32_vendor cappu_blob_lib_libbessound_hd_mtk_vendor cappu_blob_lib_libmtklimiter_vendor cappu_blob_lib_libaudiodcrflt_vendor cappu_blob_lib_libmtkshifter_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libaudiocustparam_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libaudiocustparam_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libaudiocustparam_vendor.so
LOCAL_SHARED_LIBRARIES := libcutils liblog libutils cappu_blob_lib_libnvram cappu_blob_lib_libcustom_nvram libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libaudiocustparam_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libaudiocustparam_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libaudiocustparam_vendor.so
LOCAL_SHARED_LIBRARIES := libcutils liblog libutils cappu_blob_lib_libnvram cappu_blob_lib_libcustom_nvram libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libaudiodcrflt_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libaudiodcrflt_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libaudiodcrflt_vendor.so
LOCAL_SHARED_LIBRARIES := liblog libcutils cappu_blob_lib_libmtk_drvb libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libaudiodcrflt_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libaudiodcrflt_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libaudiodcrflt_vendor.so
LOCAL_SHARED_LIBRARIES := liblog libcutils cappu_blob_lib_libmtk_drvb libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libaudioprimarydevicehalifclient
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libaudioprimarydevicehalifclient.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libaudioprimarydevicehalifclient.so
LOCAL_SHARED_LIBRARIES := libcutils liblog libutils libbase libhwbinder libhidlbase android.hardware.audio@2.0 android.hardware.audio.common@2.0 android.hardware.audio.common@2.0-util libmedia_helper libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libaudioprimarydevicehalifclient
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libaudioprimarydevicehalifclient.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libaudioprimarydevicehalifclient.so
LOCAL_SHARED_LIBRARIES := libcutils liblog libutils libbase libhwbinder libhidlbase android.hardware.audio@2.0 android.hardware.audio.common@2.0 android.hardware.audio.common@2.0-util libmedia_helper libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libaudiosetting
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libaudiosetting.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libaudiosetting.so
LOCAL_SHARED_LIBRARIES := libcutils libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libaudiosetting
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libaudiosetting.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libaudiosetting.so
LOCAL_SHARED_LIBRARIES := libcutils libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libaudiotoolkit_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libaudiotoolkit_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libaudiotoolkit_vendor.so
LOCAL_SHARED_LIBRARIES := libcutils liblog libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libaudiotoolkit_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libaudiotoolkit_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libaudiotoolkit_vendor.so
LOCAL_SHARED_LIBRARIES := libcutils liblog libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libbessound_hd_mtk_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libbessound_hd_mtk_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libbessound_hd_mtk_vendor.so
LOCAL_SHARED_LIBRARIES := liblog libcutils cappu_blob_lib_libmtk_drvb libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libbessound_hd_mtk_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libbessound_hd_mtk_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libbessound_hd_mtk_vendor.so
LOCAL_SHARED_LIBRARIES := liblog libcutils cappu_blob_lib_libmtk_drvb libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libblisrc32_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libblisrc32_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libblisrc32_vendor.so
LOCAL_SHARED_LIBRARIES := libcutils cappu_blob_lib_libmtk_drvb libutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libblisrc32_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libblisrc32_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libblisrc32_vendor.so
LOCAL_SHARED_LIBRARIES := libcutils cappu_blob_lib_libmtk_drvb libutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libblisrc_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libblisrc_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libblisrc_vendor.so
LOCAL_SHARED_LIBRARIES := liblog libcutils cappu_blob_lib_libmtk_drvb libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libblisrc_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libblisrc_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libblisrc_vendor.so
LOCAL_SHARED_LIBRARIES := liblog libcutils cappu_blob_lib_libmtk_drvb libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libbwc
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libbwc.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libbwc.so
LOCAL_SHARED_LIBRARIES := libcutils liblog libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libbwc
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libbwc.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libbwc.so
LOCAL_SHARED_LIBRARIES := libcutils liblog libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.camadapter
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.camadapter.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcam.camadapter.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libbinder libui cappu_blob_lib_libaedv cappu_blob_lib_libmtkcam_fwkutils cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_imgbuf cappu_blob_lib_libcam_utils cappu_blob_lib_libcam1_utils cappu_blob_lib_libcam.paramsmgr cappu_blob_lib_libcam.exif cappu_blob_lib_libcam.exif.v3 cappu_blob_lib_libcam_mmp cappu_blob_lib_libcam_hwutils cappu_blob_lib_libcamdrv cappu_blob_lib_libimageio cappu_blob_lib_libfeatureio cappu_blob_lib_libcam.camshot cappu_blob_lib_libcam.camnode cappu_blob_lib_libJpgEncPipe cappu_blob_lib_libdpframework cappu_blob_lib_libcameracustom cappu_blob_lib_libcam.halsensor cappu_blob_lib_libcam.iopipe cappu_blob_lib_libcam.utils.cpuctrl libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.camadapter
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.camadapter.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcam.camadapter.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libbinder libui cappu_blob_lib_libaedv cappu_blob_lib_libmtkcam_fwkutils cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_imgbuf cappu_blob_lib_libcam_utils cappu_blob_lib_libcam1_utils cappu_blob_lib_libcam.paramsmgr cappu_blob_lib_libcam.exif cappu_blob_lib_libcam.exif.v3 cappu_blob_lib_libcam_mmp cappu_blob_lib_libcam_hwutils cappu_blob_lib_libcamdrv cappu_blob_lib_libimageio cappu_blob_lib_libfeatureio cappu_blob_lib_libcam.camshot cappu_blob_lib_libcam.camnode cappu_blob_lib_libJpgEncPipe cappu_blob_lib_libdpframework cappu_blob_lib_libcameracustom cappu_blob_lib_libcam.halsensor cappu_blob_lib_libcam.iopipe cappu_blob_lib_libcam.utils.cpuctrl libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.camnode
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.camnode.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcam.camnode.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libcam_mmp cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_imgbuf cappu_blob_lib_libcam_hwutils cappu_blob_lib_libaedv cappu_blob_lib_libcam.halsensor cappu_blob_lib_libcam.iopipe cappu_blob_lib_libfeatureio cappu_blob_lib_libcameracustom libui libnativewindow cappu_blob_lib_libmtkcam_fwkutils cappu_blob_lib_libcam.paramsmgr cappu_blob_lib_libcamdrv cappu_blob_lib_libcamalgo cappu_blob_lib_libdpframework cappu_blob_lib_libgralloc_extra cappu_blob_lib_libcam.utils.cpuctrl libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.camnode
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.camnode.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcam.camnode.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libcam_mmp cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_imgbuf cappu_blob_lib_libcam_hwutils cappu_blob_lib_libaedv cappu_blob_lib_libcam.halsensor cappu_blob_lib_libcam.iopipe cappu_blob_lib_libfeatureio cappu_blob_lib_libcameracustom libui libnativewindow cappu_blob_lib_libmtkcam_fwkutils cappu_blob_lib_libcam.paramsmgr cappu_blob_lib_libcamdrv cappu_blob_lib_libcamalgo cappu_blob_lib_libdpframework cappu_blob_lib_libgralloc_extra cappu_blob_lib_libcam.utils.cpuctrl libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.camshot
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.camshot.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcam.camshot.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_imgbuf cappu_blob_lib_libcam_hwutils cappu_blob_lib_libcam.exif cappu_blob_lib_libcam.camnode cappu_blob_lib_libcam.halsensor cappu_blob_lib_libcam.iopipe cappu_blob_lib_libfeatureiodrv cappu_blob_lib_libfeatureio cappu_blob_lib_libcamdrv libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.camshot
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.camshot.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcam.camshot.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_imgbuf cappu_blob_lib_libcam_hwutils cappu_blob_lib_libcam.exif cappu_blob_lib_libcam.camnode cappu_blob_lib_libcam.halsensor cappu_blob_lib_libcam.iopipe cappu_blob_lib_libfeatureiodrv cappu_blob_lib_libfeatureio cappu_blob_lib_libcamdrv libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.client
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.client.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcam.client.so
LOCAL_SHARED_LIBRARIES := libcappu_graphics_compat liblog libutils libcutils libbinder libui libion cappu_blob_lib_libion_mtk libhardware cappu_blob_lib_libmtkcam_fwkutils cappu_blob_lib_libcam_mmp cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_imgbuf cappu_blob_lib_libcam_utils cappu_blob_lib_libcam.utils cappu_blob_lib_libcam.paramsmgr cappu_blob_lib_libcamdrv cappu_blob_lib_libfeatureio cappu_blob_lib_libdpframework cappu_blob_lib_libJpgEncPipe cappu_blob_lib_libcam.exif cappu_blob_lib_libcameracustom cappu_blob_lib_libgralloc_extra libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.client
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.client.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcam.client.so
LOCAL_SHARED_LIBRARIES := libcappu_graphics_compat liblog libutils libcutils libbinder libui libion cappu_blob_lib_libion_mtk libhardware cappu_blob_lib_libmtkcam_fwkutils cappu_blob_lib_libcam_mmp cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_imgbuf cappu_blob_lib_libcam_utils cappu_blob_lib_libcam.utils cappu_blob_lib_libcam.paramsmgr cappu_blob_lib_libcamdrv cappu_blob_lib_libfeatureio cappu_blob_lib_libdpframework cappu_blob_lib_libJpgEncPipe cappu_blob_lib_libcam.exif cappu_blob_lib_libcameracustom cappu_blob_lib_libgralloc_extra libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.device1
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.device1.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcam.device1.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libmtkcam_fwkutils cappu_blob_lib_libcam_mmp cappu_blob_lib_libcam_hwutils cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libcam_utils cappu_blob_lib_libcam1_utils cappu_blob_lib_libcam.paramsmgr cappu_blob_lib_libcam.client cappu_blob_lib_libcam.camadapter cappu_blob_lib_libaedv cappu_blob_lib_libcam.halsensor cappu_blob_lib_libfeatureio cappu_blob_lib_libcamdrv libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.device1
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.device1.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcam.device1.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libmtkcam_fwkutils cappu_blob_lib_libcam_mmp cappu_blob_lib_libcam_hwutils cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libcam_utils cappu_blob_lib_libcam1_utils cappu_blob_lib_libcam.paramsmgr cappu_blob_lib_libcam.client cappu_blob_lib_libcam.camadapter cappu_blob_lib_libaedv cappu_blob_lib_libcam.halsensor cappu_blob_lib_libfeatureio cappu_blob_lib_libcamdrv libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.exif
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.exif.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcam.exif.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.exif
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.exif.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcam.exif.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.exif.v3
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.exif.v3.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcam.exif.v3.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.exif.v3
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.exif.v3.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcam.exif.v3.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.hal3a.v3.dng
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.hal3a.v3.dng.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcam.hal3a.v3.dng.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libfeatureiodrv cappu_blob_lib_libmtkcam_metadata libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.hal3a.v3.dng
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.hal3a.v3.dng.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcam.hal3a.v3.dng.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libfeatureiodrv cappu_blob_lib_libmtkcam_metadata libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.hal3a.v3
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.hal3a.v3.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcam.hal3a.v3.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libfeatureiodrv cappu_blob_lib_libcamdrv cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libcam_utils cappu_blob_lib_libcam.utils cappu_blob_lib_libcam.halsensor cappu_blob_lib_libcamalgo cappu_blob_lib_libcam.iopipe cappu_blob_lib_libmtkcam_metadata cappu_blob_lib_libcam.metadataprovider android.frameworks.sensorservice@1.0 android.hardware.sensors@1.0 libsensorndkbridge libhidlbase libhidltransport cappu_blob_lib_libcam.hal3a.v3.dng cappu_blob_lib_lib3a cappu_blob_lib_libnvram cappu_blob_lib_libcam.exif cappu_blob_lib_libcameracustom cappu_blob_lib_libcam_mmp cappu_blob_lib_libdpframework libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.hal3a.v3
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.hal3a.v3.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcam.hal3a.v3.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libfeatureiodrv cappu_blob_lib_libcamdrv cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libcam_utils cappu_blob_lib_libcam.utils cappu_blob_lib_libcam.halsensor cappu_blob_lib_libcamalgo cappu_blob_lib_libcam.iopipe cappu_blob_lib_libmtkcam_metadata cappu_blob_lib_libcam.metadataprovider android.frameworks.sensorservice@1.0 android.hardware.sensors@1.0 libsensorndkbridge libhidlbase libhidltransport cappu_blob_lib_libcam.hal3a.v3.dng cappu_blob_lib_lib3a cappu_blob_lib_libnvram cappu_blob_lib_libcam.exif cappu_blob_lib_libcameracustom cappu_blob_lib_libcam_mmp cappu_blob_lib_libdpframework libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.halsensor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.halsensor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcam.halsensor.so
LOCAL_SHARED_LIBRARIES := liblog libcutils libutils cappu_blob_lib_libcameracustom cappu_blob_lib_libcamdrv cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libcam_utils cappu_blob_lib_libmtkcam_metadata libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.halsensor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.halsensor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcam.halsensor.so
LOCAL_SHARED_LIBRARIES := liblog libcutils libutils cappu_blob_lib_libcameracustom cappu_blob_lib_libcamdrv cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libcam_utils cappu_blob_lib_libmtkcam_metadata libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.iopipe
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.iopipe.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcam.iopipe.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libcam_hwutils cappu_blob_lib_libimageio_plat_drv cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_imgbuf cappu_blob_lib_libmtkcam_metadata cappu_blob_lib_libcam.halsensor cappu_blob_lib_libimageio cappu_blob_lib_libcamdrv cappu_blob_lib_libdpframework cappu_blob_lib_libJpgEncPipe libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.iopipe
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.iopipe.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcam.iopipe.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libcam_hwutils cappu_blob_lib_libimageio_plat_drv cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_imgbuf cappu_blob_lib_libmtkcam_metadata cappu_blob_lib_libcam.halsensor cappu_blob_lib_libimageio cappu_blob_lib_libcamdrv cappu_blob_lib_libdpframework cappu_blob_lib_libJpgEncPipe libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.metadataprovider
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.metadataprovider.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcam.metadataprovider.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libcam_utils cappu_blob_lib_libmtkcam_metadata libcamera_metadata cappu_blob_lib_libcam.halsensor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.metadataprovider
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.metadataprovider.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcam.metadataprovider.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libcam_utils cappu_blob_lib_libmtkcam_metadata libcamera_metadata cappu_blob_lib_libcam.halsensor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.paramsmgr
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.paramsmgr.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcam.paramsmgr.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libmtkcam_fwkutils cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libcam_utils cappu_blob_lib_libcam_hwutils cappu_blob_lib_libcam.halsensor cappu_blob_lib_libfeatureio libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.paramsmgr
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.paramsmgr.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcam.paramsmgr.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libmtkcam_fwkutils cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libcam_utils cappu_blob_lib_libcam_hwutils cappu_blob_lib_libcam.halsensor cappu_blob_lib_libfeatureio libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.utils.cpuctrl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.utils.cpuctrl.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcam.utils.cpuctrl.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libhidlbase libhidltransport libhwbinder android.hardware.power@1.0 cappu_blob_lib_vendor.mediatek.hardware.power@1.1_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.utils.cpuctrl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.utils.cpuctrl.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcam.utils.cpuctrl.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libhidlbase libhidltransport libhwbinder android.hardware.power@1.0 cappu_blob_lib_vendor.mediatek.hardware.power@1.1_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.utils.sensorlistener
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.utils.sensorlistener.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcam.utils.sensorlistener.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.utils.sensorlistener
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.utils.sensorlistener.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcam.utils.sensorlistener.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.utils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.utils.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcam.utils.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libmtkcam_fwkutils cappu_blob_lib_libmtkcam_stdutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam.utils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam.utils.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcam.utils.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libmtkcam_fwkutils cappu_blob_lib_libmtkcam_stdutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam1_utils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam1_utils.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcam1_utils.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libmtkcam_fwkutils cappu_blob_lib_libmtkcam_stdutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam1_utils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam1_utils.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcam1_utils.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libmtkcam_fwkutils cappu_blob_lib_libmtkcam_stdutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam3_hwnode
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam3_hwnode.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcam3_hwnode.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_imgbuf cappu_blob_lib_libmtkcam_metadata cappu_blob_lib_libcam.metadataprovider cappu_blob_lib_libcam.hal3a.v3 cappu_blob_lib_libcam.iopipe cappu_blob_lib_libcam.halsensor cappu_blob_lib_libfeatureio cappu_blob_lib_libcamdrv cappu_blob_lib_libcam.exif.v3 cappu_blob_lib_libdngop cappu_blob_lib_libcam.utils.sensorlistener libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam3_hwnode
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam3_hwnode.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcam3_hwnode.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_imgbuf cappu_blob_lib_libmtkcam_metadata cappu_blob_lib_libcam.metadataprovider cappu_blob_lib_libcam.hal3a.v3 cappu_blob_lib_libcam.iopipe cappu_blob_lib_libcam.halsensor cappu_blob_lib_libfeatureio cappu_blob_lib_libcamdrv cappu_blob_lib_libcam.exif.v3 cappu_blob_lib_libdngop cappu_blob_lib_libcam.utils.sensorlistener libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam3_hwpipeline
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam3_hwpipeline.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcam3_hwpipeline.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libhidlbase libhidltransport libhwbinder android.hardware.power@1.0 cappu_blob_lib_vendor.mediatek.hardware.power@1.1_vendor cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_metadata cappu_blob_lib_libcam3_utils cappu_blob_lib_libcam3_pipeline cappu_blob_lib_libcam3_hwnode cappu_blob_lib_libcam.halsensor cappu_blob_lib_libcam.hal3a.v3 cappu_blob_lib_libbwc cappu_blob_lib_libcam_hwutils cappu_blob_lib_libfeatureio libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam3_hwpipeline
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam3_hwpipeline.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcam3_hwpipeline.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libhidlbase libhidltransport libhwbinder android.hardware.power@1.0 cappu_blob_lib_vendor.mediatek.hardware.power@1.1_vendor cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_metadata cappu_blob_lib_libcam3_utils cappu_blob_lib_libcam3_pipeline cappu_blob_lib_libcam3_hwnode cappu_blob_lib_libcam.halsensor cappu_blob_lib_libcam.hal3a.v3 cappu_blob_lib_libbwc cappu_blob_lib_libcam_hwutils cappu_blob_lib_libfeatureio libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam3_pipeline
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam3_pipeline.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcam3_pipeline.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_imgbuf cappu_blob_lib_libcam3_utils cappu_blob_lib_libmtkcam_metadata libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam3_pipeline
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam3_pipeline.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcam3_pipeline.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_imgbuf cappu_blob_lib_libcam3_utils cappu_blob_lib_libmtkcam_metadata libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam3_utils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam3_utils.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcam3_utils.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_imgbuf cappu_blob_lib_libmtkcam_metadata libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam3_utils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam3_utils.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcam3_utils.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_imgbuf cappu_blob_lib_libmtkcam_metadata libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam_hwutils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam_hwutils.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcam_hwutils.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libcam_mmp libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam_hwutils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam_hwutils.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcam_hwutils.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libcam_mmp libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam_mmp
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam_mmp.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcam_mmp.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam_mmp
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam_mmp.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcam_mmp.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam_platform
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam_platform.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcam_platform.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libcamdrv cappu_blob_lib_libcam.device1 libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam_platform
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam_platform.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcam_platform.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libcamdrv cappu_blob_lib_libcam.device1 libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam_utils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam_utils.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcam_utils.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libmtkcam_fwkutils cappu_blob_lib_libmtkcam_stdutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcam_utils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcam_utils.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcam_utils.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils cappu_blob_lib_libmtkcam_fwkutils cappu_blob_lib_libmtkcam_stdutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcamalgo
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcamalgo.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcamalgo.so
LOCAL_SHARED_LIBRARIES := liblog libcutils libEGL libGLESv2 libgui libutils libbinder libui cappu_blob_lib_libmtk_drvb cappu_blob_lib_libcamdrv cappu_blob_lib_libperfservicenative libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcamalgo
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcamalgo.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcamalgo.so
LOCAL_SHARED_LIBRARIES := liblog libcutils libEGL libGLESv2 libgui libutils libbinder libui cappu_blob_lib_libmtk_drvb cappu_blob_lib_libcamdrv cappu_blob_lib_libperfservicenative libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcamdrv
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcamdrv.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcamdrv.so
LOCAL_SHARED_LIBRARIES := liblog libcutils cappu_blob_lib_libm4u cappu_blob_lib_libbwc cappu_blob_lib_libcam_mmp cappu_blob_lib_libcameracustom cappu_blob_lib_libcam.exif libion cappu_blob_lib_libion_mtk libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcamdrv
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcamdrv.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcamdrv.so
LOCAL_SHARED_LIBRARIES := liblog libcutils cappu_blob_lib_libm4u cappu_blob_lib_libbwc cappu_blob_lib_libcam_mmp cappu_blob_lib_libcameracustom cappu_blob_lib_libcam.exif libion cappu_blob_lib_libion_mtk libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcameracustom
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcameracustom.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcameracustom.so
LOCAL_SHARED_LIBRARIES := liblog libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcameracustom
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcameracustom.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcameracustom.so
LOCAL_SHARED_LIBRARIES := liblog libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libccap
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libccap.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libccap.so
LOCAL_SHARED_LIBRARIES := libcutils libstdc++ libpixelflinger liblog cappu_blob_lib_libccci_util libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libccap
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libccap.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libccap.so
LOCAL_SHARED_LIBRARIES := libcutils libstdc++ libpixelflinger liblog cappu_blob_lib_libccci_util libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libccci_util
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libccci_util.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libccci_util.so
LOCAL_SHARED_LIBRARIES := liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libccci_util
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libccci_util.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libccci_util.so
LOCAL_SHARED_LIBRARIES := liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcustom_nvram
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcustom_nvram.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcustom_nvram.so
LOCAL_SHARED_LIBRARIES := libcutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcustom_nvram
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcustom_nvram.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcustom_nvram.so
LOCAL_SHARED_LIBRARIES := libcutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcvsd_mtk
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcvsd_mtk.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libcvsd_mtk.so
LOCAL_SHARED_LIBRARIES := liblog libcutils cappu_blob_lib_libmtk_drvb libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libcvsd_mtk
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libcvsd_mtk.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libcvsd_mtk.so
LOCAL_SHARED_LIBRARIES := liblog libcutils cappu_blob_lib_libmtk_drvb libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libdirect-coredump
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libdirect-coredump.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libdirect-coredump.so
LOCAL_SHARED_LIBRARIES := libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libdirect-coredump
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libdirect-coredump.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libdirect-coredump.so
LOCAL_SHARED_LIBRARIES := libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libdngop
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libdngop.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libdngop.so
LOCAL_SHARED_LIBRARIES := libcutils liblog cappu_blob_lib_libmtk_drvb libui libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libdngop
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libdngop.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libdngop.so
LOCAL_SHARED_LIBRARIES := libcutils liblog cappu_blob_lib_libmtk_drvb libui libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libdpframework
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libdpframework.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libdpframework.so
# The stock MTK display framework imports sw_sync functions hidden from Android 12 libsync.
# Keep the legacy API shim device-local and available to both library variants.
LOCAL_SHARED_LIBRARIES := libutils libion libcutils liblog libsync libhardware libhidlbase libhidlmemory cappu_blob_lib_libion_mtk cappu_blob_lib_libgralloc_extra cappu_blob_lib_libm4u cappu_blob_lib_vendor.mediatek.hardware.pq@2.0_vendor cappu_blob_lib_libpq_prot libnativewindow libc++ libcappu_sw_sync_compat
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libdpframework
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libdpframework.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libdpframework.so
# The stock MTK display framework imports sw_sync functions hidden from Android 12 libsync.
# Keep the legacy API shim device-local and available to both library variants.
LOCAL_SHARED_LIBRARIES := libutils libion libcutils liblog libsync libhardware libhidlbase libhidlmemory cappu_blob_lib_libion_mtk cappu_blob_lib_libgralloc_extra cappu_blob_lib_libm4u cappu_blob_lib_vendor.mediatek.hardware.pq@2.0_vendor cappu_blob_lib_libpq_prot libnativewindow libc++ libcappu_sw_sync_compat
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libfeatureio
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libfeatureio.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libfeatureio.so
LOCAL_SHARED_LIBRARIES := liblog libcutils libutils cappu_blob_lib_libmtkcam_fwkutils cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_imgbuf cappu_blob_lib_libcam.utils cappu_blob_lib_libcamdrv cappu_blob_lib_libcam.halsensor cappu_blob_lib_libcamalgo cappu_blob_lib_libfeatureiodrv cappu_blob_lib_libcam.iopipe cappu_blob_lib_libmtkcam_metadata android.frameworks.sensorservice@1.0 android.hardware.sensors@1.0 libsensorndkbridge libhidlbase libhidltransport cappu_blob_lib_libJpgEncPipe libbinder cappu_blob_lib_libnvramagentclient cappu_blob_lib_libcam_hwutils cappu_blob_lib_lib3a cappu_blob_lib_lib3a_sample cappu_blob_lib_libnvram cappu_blob_lib_libcam.exif cappu_blob_lib_libcameracustom cappu_blob_lib_libcam_mmp cappu_blob_lib_libdpframework cappu_blob_lib_libn3d3a libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libfeatureio
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libfeatureio.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libfeatureio.so
LOCAL_SHARED_LIBRARIES := liblog libcutils libutils cappu_blob_lib_libmtkcam_fwkutils cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_imgbuf cappu_blob_lib_libcam.utils cappu_blob_lib_libcamdrv cappu_blob_lib_libcam.halsensor cappu_blob_lib_libcamalgo cappu_blob_lib_libfeatureiodrv cappu_blob_lib_libcam.iopipe cappu_blob_lib_libmtkcam_metadata android.frameworks.sensorservice@1.0 android.hardware.sensors@1.0 libsensorndkbridge libhidlbase libhidltransport cappu_blob_lib_libJpgEncPipe libbinder cappu_blob_lib_libnvramagentclient cappu_blob_lib_libcam_hwutils cappu_blob_lib_lib3a cappu_blob_lib_lib3a_sample cappu_blob_lib_libnvram cappu_blob_lib_libcam.exif cappu_blob_lib_libcameracustom cappu_blob_lib_libcam_mmp cappu_blob_lib_libdpframework cappu_blob_lib_libn3d3a libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libfeatureiodrv
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libfeatureiodrv.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libfeatureiodrv.so
LOCAL_SHARED_LIBRARIES := liblog libcutils libutils cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libcam_utils cappu_blob_lib_libcamdrv cappu_blob_lib_libcam.halsensor cappu_blob_lib_libcam.iopipe libbinder cappu_blob_lib_libnvramagentclient cappu_blob_lib_libcam_hwutils cappu_blob_lib_libnvram cappu_blob_lib_libcameracustom libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libfeatureiodrv
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libfeatureiodrv.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libfeatureiodrv.so
LOCAL_SHARED_LIBRARIES := liblog libcutils libutils cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libcam_utils cappu_blob_lib_libcamdrv cappu_blob_lib_libcam.halsensor cappu_blob_lib_libcam.iopipe libbinder cappu_blob_lib_libnvramagentclient cappu_blob_lib_libcam_hwutils cappu_blob_lib_libnvram cappu_blob_lib_libcameracustom libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libfile_op
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libfile_op.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libfile_op.so
LOCAL_SHARED_LIBRARIES := libcutils cappu_blob_lib_libnvram cappu_blob_lib_libcustom_nvram liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libfile_op
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libfile_op.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libfile_op.so
LOCAL_SHARED_LIBRARIES := libcutils cappu_blob_lib_libnvram cappu_blob_lib_libcustom_nvram liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libforkexecwrap
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libforkexecwrap.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libforkexecwrap.so
LOCAL_SHARED_LIBRARIES := libcutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libfpspolicy
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libfpspolicy.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libfpspolicy.so
LOCAL_SHARED_LIBRARIES := libutils libcutils liblog libhidlbase libhidltransport libhwbinder cappu_blob_lib_vendor.mediatek.hardware.dfps@1.0_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libfpspolicy
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libfpspolicy.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libfpspolicy.so
LOCAL_SHARED_LIBRARIES := libutils libcutils liblog libhidlbase libhidltransport libhwbinder cappu_blob_lib_vendor.mediatek.hardware.dfps@1.0_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libged
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libged.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libged.so
LOCAL_SHARED_LIBRARIES := libcutils libutils liblog libsync libnativewindow libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libged
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libged.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libged.so
LOCAL_SHARED_LIBRARIES := libcutils libutils liblog libsync libnativewindow libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libglslcompiler
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libglslcompiler.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libglslcompiler.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libsrv_um cappu_blob_lib_libusc
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libglslcompiler
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libglslcompiler.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libglslcompiler.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libsrv_um cappu_blob_lib_libusc
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libgpu_aux
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libgpu_aux.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libgpu_aux.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libdpframework liblog libutils libcutils libhardware cappu_blob_lib_libgralloc_extra libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libgpu_aux
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libgpu_aux.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libgpu_aux.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libdpframework liblog libutils libcutils libhardware cappu_blob_lib_libgralloc_extra libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libgralloc_extra
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libgralloc_extra.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libgralloc_extra.so
LOCAL_SHARED_LIBRARIES := libhardware libcutils libutils liblog libion cappu_blob_lib_libged libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libgralloc_extra
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libgralloc_extra.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libgralloc_extra.so
LOCAL_SHARED_LIBRARIES := libhardware libcutils libutils liblog libion cappu_blob_lib_libged libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libh264enc_sa.ca7
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libh264enc_sa.ca7.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libh264enc_sa.ca7.so
LOCAL_SHARED_LIBRARIES := libcappu_legacy_abi libcompiler_rt libcutils libutils liblog cappu_blob_lib_libvcodec_oal cappu_blob_lib_libvcodec_utility libstdc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libh264enc_sb.ca7
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libh264enc_sb.ca7.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libh264enc_sb.ca7.so
LOCAL_SHARED_LIBRARIES := libcappu_legacy_abi libcompiler_rt libcutils libutils liblog cappu_blob_lib_libvcodec_oal cappu_blob_lib_libvcodec_utility libstdc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libhwm
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libhwm.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libhwm.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libnvram liblog cappu_blob_lib_libfile_op libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libhwm
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libhwm.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libhwm.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libnvram liblog cappu_blob_lib_libfile_op libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libifcutils_mtk
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libifcutils_mtk.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libifcutils_mtk.so
LOCAL_SHARED_LIBRARIES := libcutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libifcutils_mtk
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libifcutils_mtk.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libifcutils_mtk.so
LOCAL_SHARED_LIBRARIES := libcutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libimageio
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libimageio.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libimageio.so
LOCAL_SHARED_LIBRARIES := liblog libcutils cappu_blob_lib_libimageio_plat_drv cappu_blob_lib_libcamdrv cappu_blob_lib_libm4u libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libimageio
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libimageio.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libimageio.so
LOCAL_SHARED_LIBRARIES := liblog libcutils cappu_blob_lib_libimageio_plat_drv cappu_blob_lib_libcamdrv cappu_blob_lib_libm4u libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libimageio_plat_drv
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libimageio_plat_drv.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libimageio_plat_drv.so
LOCAL_SHARED_LIBRARIES := liblog libcutils cappu_blob_lib_libcamdrv cappu_blob_lib_libm4u cappu_blob_lib_libdpframework libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libimageio_plat_drv
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libimageio_plat_drv.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libimageio_plat_drv.so
LOCAL_SHARED_LIBRARIES := liblog libcutils cappu_blob_lib_libcamdrv cappu_blob_lib_libm4u cappu_blob_lib_libdpframework libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libion_mtk
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libion_mtk.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libion_mtk.so
LOCAL_SHARED_LIBRARIES := libion liblog cappu_blob_lib_libion_ulit libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libion_mtk
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libion_mtk.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libion_mtk.so
LOCAL_SHARED_LIBRARIES := libion liblog cappu_blob_lib_libion_ulit libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libion_ulit
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libion_ulit.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libion_ulit.so
LOCAL_SHARED_LIBRARIES := libutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libion_ulit
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libion_ulit.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libion_ulit.so
LOCAL_SHARED_LIBRARIES := libutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libksensor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libksensor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libksensor.so
LOCAL_SHARED_LIBRARIES := liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libksensor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libksensor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libksensor.so
LOCAL_SHARED_LIBRARIES := liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libm4u
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libm4u.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libm4u.so
LOCAL_SHARED_LIBRARIES := libcutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libm4u
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libm4u.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libm4u.so
LOCAL_SHARED_LIBRARIES := libcutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmemtrack_GL
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmemtrack_GL.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libmemtrack_GL.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libsrv_um liblog
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmemtrack_GL
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmemtrack_GL.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libmemtrack_GL.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libsrv_um liblog
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmhalImageCodec
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmhalImageCodec.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libmhalImageCodec.so
LOCAL_SHARED_LIBRARIES := liblog libcutils libutils cappu_blob_lib_libJpgDecPipe cappu_blob_lib_libJpgEncPipe cappu_blob_lib_libdpframework libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmhalImageCodec
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmhalImageCodec.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libmhalImageCodec.so
LOCAL_SHARED_LIBRARIES := liblog libcutils libutils cappu_blob_lib_libJpgDecPipe cappu_blob_lib_libJpgEncPipe cappu_blob_lib_libdpframework libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmmprofile
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmmprofile.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libmmprofile.so
LOCAL_SHARED_LIBRARIES := libcutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmmprofile
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmmprofile.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libmmprofile.so
LOCAL_SHARED_LIBRARIES := libcutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmp4enc_sa.ca7
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmp4enc_sa.ca7.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libmp4enc_sa.ca7.so
LOCAL_SHARED_LIBRARIES := libcompiler_rt libcutils liblog cappu_blob_lib_libvcodec_utility cappu_blob_lib_libvcodec_oal libstdc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmp4enc_xa.ca7
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmp4enc_xa.ca7.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libmp4enc_xa.ca7.so
LOCAL_SHARED_LIBRARIES := libcompiler_rt libcutils liblog cappu_blob_lib_libvcodec_utility cappu_blob_lib_libvcodec_oal libstdc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmrdumpv
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmrdumpv.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libmrdumpv.so
LOCAL_SHARED_LIBRARIES := liblog libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmrdumpv
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmrdumpv.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libmrdumpv.so
LOCAL_SHARED_LIBRARIES := liblog libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmsbc_mtk
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmsbc_mtk.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libmsbc_mtk.so
LOCAL_SHARED_LIBRARIES := liblog libcutils cappu_blob_lib_libmtk_drvb libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmsbc_mtk
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmsbc_mtk.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libmsbc_mtk.so
LOCAL_SHARED_LIBRARIES := liblog libcutils cappu_blob_lib_libmtk_drvb libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtcloader
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtcloader.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libmtcloader.so
LOCAL_SHARED_LIBRARIES := liblog libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtk_drvb
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtk_drvb.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libmtk_drvb.so
LOCAL_SHARED_LIBRARIES := libcutils libutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtk_drvb
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtk_drvb.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libmtk_drvb.so
LOCAL_SHARED_LIBRARIES := libcutils libutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtkcam_debugutils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtkcam_debugutils.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libmtkcam_debugutils.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtkcam_debugutils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtkcam_debugutils.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libmtkcam_debugutils.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtkcam_device1
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtkcam_device1.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libmtkcam_device1.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libhidlbase libhidlmemory libhidltransport android.hardware.camera.device@1.0 android.hardware.graphics.mapper@2.0 android.hidl.allocator@1.0 android.hidl.memory@1.0 cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libcam_utils cappu_blob_lib_libcam1_utils cappu_blob_lib_libmtkcam_fwkutils cappu_blob_lib_libmtkcam_metadata cappu_blob_lib_libcam_hwutils cappu_blob_lib_libcam.paramsmgr cappu_blob_lib_libcam.client cappu_blob_lib_libcam.camadapter cappu_blob_lib_libcam.utils.cpuctrl cappu_blob_lib_vendor.mediatek.hardware.camera.device@1.1_vendor cappu_blob_lib_libcam.halsensor cappu_blob_lib_libfeatureio cappu_blob_lib_libcamdrv libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtkcam_device1
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtkcam_device1.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libmtkcam_device1.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libhidlbase libhidlmemory libhidltransport android.hardware.camera.device@1.0 android.hardware.graphics.mapper@2.0 android.hidl.allocator@1.0 android.hidl.memory@1.0 cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libcam_utils cappu_blob_lib_libcam1_utils cappu_blob_lib_libmtkcam_fwkutils cappu_blob_lib_libmtkcam_metadata cappu_blob_lib_libcam_hwutils cappu_blob_lib_libcam.paramsmgr cappu_blob_lib_libcam.client cappu_blob_lib_libcam.camadapter cappu_blob_lib_libcam.utils.cpuctrl cappu_blob_lib_vendor.mediatek.hardware.camera.device@1.1_vendor cappu_blob_lib_libcam.halsensor cappu_blob_lib_libfeatureio cappu_blob_lib_libcamdrv libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtkcam_device3
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtkcam_device3.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libmtkcam_device3.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libhidlbase libhidltransport android.hardware.camera.device@3.2 cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_debugutils cappu_blob_lib_libmtkcam_metadata cappu_blob_lib_libmtkcam_device3_app cappu_blob_lib_libcam.metadataprovider cappu_blob_lib_libcam3_hwpipeline libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtkcam_device3
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtkcam_device3.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libmtkcam_device3.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libhidlbase libhidltransport android.hardware.camera.device@3.2 cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_debugutils cappu_blob_lib_libmtkcam_metadata cappu_blob_lib_libmtkcam_device3_app cappu_blob_lib_libcam.metadataprovider cappu_blob_lib_libcam3_hwpipeline libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtkcam_device3_app
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtkcam_device3_app.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libmtkcam_device3_app.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libhidlbase libfmq android.hardware.camera.device@3.2 cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_metadata cappu_blob_lib_libmtkcam_debugutils cappu_blob_lib_libmtkcam_grallocutils cappu_blob_lib_libmtkcam_imgbuf cappu_blob_lib_libcam3_utils libnativewindow libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtkcam_device3_app
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtkcam_device3_app.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libmtkcam_device3_app.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libhidlbase libfmq android.hardware.camera.device@3.2 cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_metadata cappu_blob_lib_libmtkcam_debugutils cappu_blob_lib_libmtkcam_grallocutils cappu_blob_lib_libmtkcam_imgbuf cappu_blob_lib_libcam3_utils libnativewindow libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtkcam_fwkutils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtkcam_fwkutils.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libmtkcam_fwkutils.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtkcam_fwkutils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtkcam_fwkutils.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libmtkcam_fwkutils.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtkcam_grallocutils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtkcam_grallocutils.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libmtkcam_grallocutils.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libgralloc_extra liblog libutils libsync libcutils libui cappu_blob_lib_libmtkcam_stdutils libhidlbase libhardware android.hardware.graphics.allocator@2.0 android.hardware.graphics.mapper@2.0 libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtkcam_grallocutils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtkcam_grallocutils.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libmtkcam_grallocutils.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libgralloc_extra liblog libutils libsync libcutils libui cappu_blob_lib_libmtkcam_stdutils libhidlbase libhardware android.hardware.graphics.allocator@2.0 android.hardware.graphics.mapper@2.0 libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtkcam_imgbuf
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtkcam_imgbuf.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libmtkcam_imgbuf.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libnativewindow libion cappu_blob_lib_libion_mtk cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_debugutils cappu_blob_lib_libmtkcam_grallocutils cappu_blob_lib_libgralloc_extra libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtkcam_imgbuf
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtkcam_imgbuf.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libmtkcam_imgbuf.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libnativewindow libion cappu_blob_lib_libion_mtk cappu_blob_lib_libmtkcam_stdutils cappu_blob_lib_libmtkcam_debugutils cappu_blob_lib_libmtkcam_grallocutils cappu_blob_lib_libgralloc_extra libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtkcam_metadata
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtkcam_metadata.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libmtkcam_metadata.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libhidlbase cappu_blob_lib_libmtkcam_stdutils libcamera_metadata libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtkcam_metadata
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtkcam_metadata.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libmtkcam_metadata.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libhidlbase cappu_blob_lib_libmtkcam_stdutils libcamera_metadata libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtkcam_stdutils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtkcam_stdutils.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libmtkcam_stdutils.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libsync libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtkcam_stdutils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtkcam_stdutils.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libmtkcam_stdutils.so
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libsync libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtkjpeg
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtkjpeg.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libmtkjpeg.so
LOCAL_SHARED_LIBRARIES := libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtkjpeg
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtkjpeg.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libmtkjpeg.so
LOCAL_SHARED_LIBRARIES := libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtklimiter_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtklimiter_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libmtklimiter_vendor.so
LOCAL_SHARED_LIBRARIES := liblog libcutils cappu_blob_lib_libmtk_drvb libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtklimiter_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtklimiter_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libmtklimiter_vendor.so
LOCAL_SHARED_LIBRARIES := liblog libcutils cappu_blob_lib_libmtk_drvb libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtkshifter_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtkshifter_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libmtkshifter_vendor.so
LOCAL_SHARED_LIBRARIES := liblog libcutils cappu_blob_lib_libmtk_drvb libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libmtkshifter_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libmtkshifter_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libmtkshifter_vendor.so
LOCAL_SHARED_LIBRARIES := liblog libcutils cappu_blob_lib_libmtk_drvb libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libn3d3a
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libn3d3a.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libn3d3a.so
LOCAL_SHARED_LIBRARIES := libcutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libn3d3a
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libn3d3a.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libn3d3a.so
LOCAL_SHARED_LIBRARIES := libcutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libnativecheck-jni
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libnativecheck-jni.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libnativecheck-jni.so
LOCAL_SHARED_LIBRARIES := libcutils cappu_blob_lib_libmtk_drvb liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libnativecheck-jni
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libnativecheck-jni.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libnativecheck-jni.so
LOCAL_SHARED_LIBRARIES := libcutils cappu_blob_lib_libmtk_drvb liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libnvram
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libnvram.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libnvram.so
LOCAL_SHARED_LIBRARIES := libcutils cappu_blob_lib_libcustom_nvram cappu_blob_lib_libnvram_platform libbase liblog cappu_blob_lib_libnvram_sec libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libnvram
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libnvram.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libnvram.so
LOCAL_SHARED_LIBRARIES := libcutils cappu_blob_lib_libcustom_nvram cappu_blob_lib_libnvram_platform libbase liblog cappu_blob_lib_libnvram_sec libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libnvram_daemon_callback
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libnvram_daemon_callback.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libnvram_daemon_callback.so
LOCAL_SHARED_LIBRARIES := liblog cappu_blob_lib_libcustom_nvram cappu_blob_lib_libnvram libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libnvram_daemon_callback
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libnvram_daemon_callback.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libnvram_daemon_callback.so
LOCAL_SHARED_LIBRARIES := liblog cappu_blob_lib_libcustom_nvram cappu_blob_lib_libnvram libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libnvram_platform
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libnvram_platform.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libnvram_platform.so
LOCAL_SHARED_LIBRARIES := libcutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libnvram_platform
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libnvram_platform.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libnvram_platform.so
LOCAL_SHARED_LIBRARIES := libcutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libnvram_sec
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libnvram_sec.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libnvram_sec.so
LOCAL_SHARED_LIBRARIES := libcutils cappu_blob_lib_libcustom_nvram liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libnvram_sec
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libnvram_sec.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libnvram_sec.so
LOCAL_SHARED_LIBRARIES := libcutils cappu_blob_lib_libcustom_nvram liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libnvramagentclient
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libnvramagentclient.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libnvramagentclient.so
LOCAL_SHARED_LIBRARIES := libutils libcutils liblog libbinder cappu_blob_lib_libnvram libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libnvramagentclient
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libnvramagentclient.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libnvramagentclient.so
LOCAL_SHARED_LIBRARIES := libutils libcutils liblog libbinder cappu_blob_lib_libnvram libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libperfctl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libperfctl.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libperfctl.so
LOCAL_SHARED_LIBRARIES := libcutils libgui libui libutils libexpat liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libperfctl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libperfctl.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libperfctl.so
LOCAL_SHARED_LIBRARIES := libcutils libgui libui libutils libexpat liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libperfframeinfo_jni
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libperfframeinfo_jni.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libperfframeinfo_jni.so
LOCAL_SHARED_LIBRARIES := libcutils cappu_blob_lib_libperfctl liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libperfframeinfo_jni
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libperfframeinfo_jni.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libperfframeinfo_jni.so
LOCAL_SHARED_LIBRARIES := libcutils cappu_blob_lib_libperfctl liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libperfservice
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libperfservice.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libperfservice.so
LOCAL_SHARED_LIBRARIES := libcutils libui libutils liblog libexpat cappu_blob_lib_libfpspolicy android.hardware.power@1.0 cappu_blob_lib_vendor.mediatek.hardware.power@1.1_vendor cappu_blob_lib_vendor.mediatek.hardware.dfps@1.0_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libperfservice
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libperfservice.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libperfservice.so
LOCAL_SHARED_LIBRARIES := libcutils libui libutils liblog libexpat cappu_blob_lib_libfpspolicy android.hardware.power@1.0 cappu_blob_lib_vendor.mediatek.hardware.power@1.1_vendor cappu_blob_lib_vendor.mediatek.hardware.dfps@1.0_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libperfservicenative
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libperfservicenative.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libperfservicenative.so
LOCAL_SHARED_LIBRARIES := liblog libbinder libcutils libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libperfservicenative
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libperfservicenative.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libperfservicenative.so
LOCAL_SHARED_LIBRARIES := liblog libbinder libcutils libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libpowerhalwrap
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libpowerhalwrap.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libpowerhalwrap.so
LOCAL_SHARED_LIBRARIES := liblog libbinder libcutils libutils libhidlbase libhidltransport libhwbinder android.hardware.power@1.0 cappu_blob_lib_vendor.mediatek.hardware.power@1.1_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libpowerhalwrap
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libpowerhalwrap.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libpowerhalwrap.so
LOCAL_SHARED_LIBRARIES := liblog libbinder libcutils libutils libhidlbase libhidltransport libhwbinder android.hardware.power@1.0 cappu_blob_lib_vendor.mediatek.hardware.power@1.1_vendor libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libpq_cust
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libpq_cust.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libpq_cust.so
LOCAL_SHARED_LIBRARIES := libcutils cappu_blob_lib_libdpframework libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libpq_cust
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libpq_cust.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libpq_cust.so
LOCAL_SHARED_LIBRARIES := libcutils cappu_blob_lib_libdpframework libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libpq_prot
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libpq_prot.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libpq_prot.so
LOCAL_SHARED_LIBRARIES := liblog libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libpq_prot
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libpq_prot.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libpq_prot.so
LOCAL_SHARED_LIBRARIES := liblog libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libratconfig
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libratconfig.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libratconfig.so
LOCAL_SHARED_LIBRARIES := libutils liblog libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libratconfig
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libratconfig.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libratconfig.so
LOCAL_SHARED_LIBRARIES := libutils liblog libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_librilmtk
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := librilmtk.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/librilmtk.so
LOCAL_SHARED_LIBRARIES := liblog libutils libbinder libcutils libhardware_legacy librilutils cappu_blob_lib_librilutilsmtk libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_librilmtk
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := librilmtk.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/librilmtk.so
LOCAL_SHARED_LIBRARIES := liblog libutils libbinder libcutils libhardware_legacy librilutils cappu_blob_lib_librilutilsmtk libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_librilproxy
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := librilproxy.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/librilproxy.so
LOCAL_SHARED_LIBRARIES := liblog libutils libbinder libcutils libhardware_legacy cappu_blob_lib_librilproxyutils android.hardware.radio@1.0 android.hardware.radio@1.1 android.hardware.radio.deprecated@1.0 libhidlbase libhidltransport libhwbinder cappu_blob_lib_vendor.mediatek.hardware.radio.deprecated@1.1_vendor cappu_blob_lib_vendor.mediatek.hardware.radio@2.0_vendor cappu_blob_lib_librilutilsmtk libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_librilproxy
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := librilproxy.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/librilproxy.so
LOCAL_SHARED_LIBRARIES := liblog libutils libbinder libcutils libhardware_legacy cappu_blob_lib_librilproxyutils android.hardware.radio@1.0 android.hardware.radio@1.1 android.hardware.radio.deprecated@1.0 libhidlbase libhidltransport libhwbinder cappu_blob_lib_vendor.mediatek.hardware.radio.deprecated@1.1_vendor cappu_blob_lib_vendor.mediatek.hardware.radio@2.0_vendor cappu_blob_lib_librilutilsmtk libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_librilproxyutils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := librilproxyutils.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/librilproxyutils.so
LOCAL_SHARED_LIBRARIES := libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_librilproxyutils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := librilproxyutils.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/librilproxyutils.so
LOCAL_SHARED_LIBRARIES := libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_librilutilsmtk
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := librilutilsmtk.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/librilutilsmtk.so
LOCAL_SHARED_LIBRARIES := libcutils libutils liblog cappu_blob_lib_libratconfig libcrypto libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_librilutilsmtk
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := librilutilsmtk.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/librilutilsmtk.so
LOCAL_SHARED_LIBRARIES := libcutils libutils liblog cappu_blob_lib_libratconfig libcrypto libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_librrc
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := librrc.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/librrc.so
LOCAL_SHARED_LIBRARIES := libutils libcutils liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libspeech_enh_lib
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libspeech_enh_lib.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libspeech_enh_lib.so
LOCAL_SHARED_LIBRARIES := libcutils libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libspeech_enh_lib
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libspeech_enh_lib.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libspeech_enh_lib.so
LOCAL_SHARED_LIBRARIES := libcutils libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libsrv_um
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libsrv_um.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libsrv_um.so
LOCAL_SHARED_LIBRARIES := liblog libc++ libutils cappu_blob_lib_libged libcutils libdrm libsync
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libsrv_um
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libsrv_um.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libsrv_um.so
LOCAL_SHARED_LIBRARIES := liblog libc++ libutils cappu_blob_lib_libged libcutils libdrm libsync
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libstagefrighthw
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libstagefrighthw.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libstagefrighthw.so
LOCAL_SHARED_LIBRARIES := libbinder libutils libcutils liblog libui libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libstagefrighthw
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libstagefrighthw.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libstagefrighthw.so
LOCAL_SHARED_LIBRARIES := libbinder libutils libcutils liblog libui libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libsysenv
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libsysenv.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libsysenv.so
LOCAL_SHARED_LIBRARIES := liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libsysenv
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libsysenv.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libsysenv.so
LOCAL_SHARED_LIBRARIES := liblog libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libudf
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libudf.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libudf.so
LOCAL_SHARED_LIBRARIES := liblog libbacktrace libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libudf
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libudf.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libudf.so
LOCAL_SHARED_LIBRARIES := liblog libbacktrace libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libufwriter
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libufwriter.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libufwriter.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libusc cappu_blob_lib_libsrv_um libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libufwriter
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libufwriter.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libufwriter.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libusc cappu_blob_lib_libsrv_um libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libui_ext
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libui_ext.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libui_ext.so
LOCAL_SHARED_LIBRARIES := libutils libcutils liblog libhardware libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libui_ext
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libui_ext.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libui_ext.so
LOCAL_SHARED_LIBRARIES := libutils libcutils liblog libhardware libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libusc
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libusc.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libusc.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libsrv_um
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libusc
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libusc.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libusc.so
LOCAL_SHARED_LIBRARIES := cappu_blob_lib_libsrv_um
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libvc1dec_sa.ca7
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libvc1dec_sa.ca7.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libvc1dec_sa.ca7.so
LOCAL_SHARED_LIBRARIES := libcompiler_rt libcutils liblog cappu_blob_lib_libvcodec_oal cappu_blob_lib_libvcodec_utility libstdc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libvcodec_oal
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libvcodec_oal.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libvcodec_oal.so
LOCAL_SHARED_LIBRARIES := libstdc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libvcodec_utility
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libvcodec_utility.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libvcodec_utility.so
LOCAL_SHARED_LIBRARIES := libcutils cappu_blob_lib_libbwc cappu_blob_lib_libm4u libion cappu_blob_lib_libion_mtk liblog cappu_blob_lib_libgralloc_extra cappu_blob_lib_libmtk_drvb libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libvcodec_utility
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libvcodec_utility.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libvcodec_utility.so
LOCAL_SHARED_LIBRARIES := libcutils cappu_blob_lib_libbwc cappu_blob_lib_libm4u libion cappu_blob_lib_libion_mtk liblog cappu_blob_lib_libgralloc_extra cappu_blob_lib_libmtk_drvb libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libvcodecdrv
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libvcodecdrv.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libvcodecdrv.so
LOCAL_SHARED_LIBRARIES := libcutils liblog cappu_blob_lib_libvcodec_utility cappu_blob_lib_libvcodec_oal cappu_blob_lib_libmp4enc_sa.ca7 cappu_blob_lib_libvp8dec_sa.ca7 cappu_blob_lib_libvc1dec_sa.ca7 cappu_blob_lib_libmtk_drvb libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libvp8dec_sa.ca7
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libvp8dec_sa.ca7.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libvp8dec_sa.ca7.so
LOCAL_SHARED_LIBRARIES := libcompiler_rt libcutils liblog cappu_blob_lib_libvcodec_oal libstdc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libvp8enc_sa.ca7
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libvp8enc_sa.ca7.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libvp8enc_sa.ca7.so
LOCAL_SHARED_LIBRARIES := libcompiler_rt libcutils libutils liblog cappu_blob_lib_libvcodec_oal cappu_blob_lib_libvcodec_utility libstdc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libvp9dec_sa.ca7
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libvp9dec_sa.ca7.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libvp9dec_sa.ca7.so
LOCAL_SHARED_LIBRARIES := libcompiler_rt libcutils liblog cappu_blob_lib_libvcodec_oal cappu_blob_lib_libvcodec_utility cappu_blob_lib_libmmprofile libstdc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libvt_custom
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libvt_custom.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libvt_custom.so
LOCAL_SHARED_LIBRARIES := libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libwvhidl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libwvhidl.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/libwvhidl.so
# Widevine's generated protobuf code requires runtime 3.0.0. Use the private
# cappu 3.0.0 library directly; Android 12's 3.9.1 runtime aborts VerifyVersion.
LOCAL_SYSTEM_SHARED_LIBRARIES := libc libm libdl
LOCAL_SHARED_LIBRARIES := libprotobuf-cpp-lite-cappu-legacy android.hardware.drm@1.0 android.hidl.memory@1.0 libcutils libhidlbase libhidlmemory libhidltransport libhwbinder liblog libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_libwvhidl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libwvhidl.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/libwvhidl.so
# Widevine's generated protobuf code requires runtime 3.0.0. Use the private
# cappu 3.0.0 library directly; Android 12's 3.9.1 runtime aborts VerifyVersion.
LOCAL_SYSTEM_SHARED_LIBRARIES := libc libm libdl
LOCAL_SHARED_LIBRARIES := libprotobuf-cpp-lite-cappu-legacy android.hardware.drm@1.0 android.hidl.memory@1.0 libcutils libhidlbase libhidlmemory libhidltransport libhwbinder liblog libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_mediadrm_libwvdrmengine
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libwvdrmengine.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := mediadrm
LOCAL_SRC_FILES := proprietary/vendor/lib/mediadrm/libwvdrmengine.so
# Widevine's generated protobuf code requires runtime 3.0.0. Use the private
# cappu 3.0.0 library directly; Android 12's 3.9.1 runtime aborts VerifyVersion.
LOCAL_SYSTEM_SHARED_LIBRARIES := libc libm libdl
LOCAL_SHARED_LIBRARIES := libprotobuf-cpp-lite-cappu-legacy libcutils liblog libstagefright_foundation libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_mediadrm_libwvdrmengine
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := libwvdrmengine.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := mediadrm
LOCAL_SRC_FILES := proprietary/vendor/lib64/mediadrm/libwvdrmengine.so
# Widevine's generated protobuf code requires runtime 3.0.0. Use the private
# cappu 3.0.0 library directly; Android 12's 3.9.1 runtime aborts VerifyVersion.
LOCAL_SYSTEM_SHARED_LIBRARIES := libc libm libdl
LOCAL_SHARED_LIBRARIES := libprotobuf-cpp-lite-cappu-legacy libcutils liblog libstagefright_foundation libutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_mtk-ril
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := mtk-ril.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/mtk-ril.so
LOCAL_SHARED_LIBRARIES := libcutils libutils libnetutils cappu_blob_lib_libifcutils_mtk cappu_blob_lib_librilmtk librilutils cappu_blob_lib_libsysenv liblog cappu_blob_lib_librilutilsmtk cappu_blob_lib_libratconfig libhardware_legacy libssl libcrypto libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_mtk-ril
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := mtk-ril.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/mtk-ril.so
LOCAL_SHARED_LIBRARIES := libcutils libutils libnetutils cappu_blob_lib_libifcutils_mtk cappu_blob_lib_librilmtk librilutils cappu_blob_lib_libsysenv liblog cappu_blob_lib_librilutilsmtk cappu_blob_lib_libratconfig libhardware_legacy libssl libcrypto libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_mtk-rilproxy
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := mtk-rilproxy.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/mtk-rilproxy.so
LOCAL_SHARED_LIBRARIES := liblog libbinder libcutils libutils cappu_blob_lib_librilproxy cappu_blob_lib_librilproxyutils cappu_blob_lib_libratconfig libcrypto cappu_blob_lib_libaudioprimarydevicehalifclient cappu_blob_lib_libnvram cappu_blob_lib_librilutilsmtk libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_mtk-rilproxy
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := mtk-rilproxy.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/mtk-rilproxy.so
LOCAL_SHARED_LIBRARIES := liblog libbinder libcutils libutils cappu_blob_lib_librilproxy cappu_blob_lib_librilproxyutils cappu_blob_lib_libratconfig libcrypto cappu_blob_lib_libaudioprimarydevicehalifclient cappu_blob_lib_libnvram cappu_blob_lib_librilutilsmtk libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_vendor.mediatek.hardware.audio@2.1_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.audio@2.1_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/vendor.mediatek.hardware.audio@2.1_vendor.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils android.hardware.audio.common@2.0 android.hardware.audio@2.0 libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_vendor.mediatek.hardware.audio@2.1_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.audio@2.1_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/vendor.mediatek.hardware.audio@2.1_vendor.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils android.hardware.audio.common@2.0 android.hardware.audio@2.0 libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_vendor.mediatek.hardware.camera.ccap@1.0_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.camera.ccap@1.0_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/vendor.mediatek.hardware.camera.ccap@1.0_vendor.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils android.hardware.camera.common@1.0 libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_vendor.mediatek.hardware.camera.ccap@1.0_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.camera.ccap@1.0_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/vendor.mediatek.hardware.camera.ccap@1.0_vendor.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils android.hardware.camera.common@1.0 libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_vendor.mediatek.hardware.camera.device@1.1_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.camera.device@1.1_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/vendor.mediatek.hardware.camera.device@1.1_vendor.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils android.hardware.camera.common@1.0 android.hardware.camera.device@1.0 libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_vendor.mediatek.hardware.camera.device@1.1_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.camera.device@1.1_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/vendor.mediatek.hardware.camera.device@1.1_vendor.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils android.hardware.camera.common@1.0 android.hardware.camera.device@1.0 libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_vendor.mediatek.hardware.dfps@1.0_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.dfps@1.0_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/vendor.mediatek.hardware.dfps@1.0_vendor.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_vendor.mediatek.hardware.dfps@1.0_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.dfps@1.0_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/vendor.mediatek.hardware.dfps@1.0_vendor.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_vendor.mediatek.hardware.lbs@1.0_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.lbs@1.0_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/vendor.mediatek.hardware.lbs@1.0_vendor.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_vendor.mediatek.hardware.lbs@1.0_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.lbs@1.0_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/vendor.mediatek.hardware.lbs@1.0_vendor.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_vendor.mediatek.hardware.mtkcodecservice@1.1_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.mtkcodecservice@1.1_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/vendor.mediatek.hardware.mtkcodecservice@1.1_vendor.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_vendor.mediatek.hardware.mtkcodecservice@1.1_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.mtkcodecservice@1.1_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/vendor.mediatek.hardware.mtkcodecservice@1.1_vendor.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_vendor.mediatek.hardware.netdagent@1.0_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.netdagent@1.0_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/vendor.mediatek.hardware.netdagent@1.0_vendor.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_vendor.mediatek.hardware.nvram@1.0_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.nvram@1.0_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/vendor.mediatek.hardware.nvram@1.0_vendor.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_vendor.mediatek.hardware.nvram@1.0_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.nvram@1.0_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/vendor.mediatek.hardware.nvram@1.0_vendor.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_vendor.mediatek.hardware.power@1.1_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.power@1.1_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/vendor.mediatek.hardware.power@1.1_vendor.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils android.hardware.power@1.0 libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_vendor.mediatek.hardware.power@1.1_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.power@1.1_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/vendor.mediatek.hardware.power@1.1_vendor.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils android.hardware.power@1.0 libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_vendor.mediatek.hardware.pq@2.0_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.pq@2.0_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/vendor.mediatek.hardware.pq@2.0_vendor.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_vendor.mediatek.hardware.pq@2.0_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.pq@2.0_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/vendor.mediatek.hardware.pq@2.0_vendor.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_vendor.mediatek.hardware.radio.deprecated@1.1_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.radio.deprecated@1.1_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/vendor.mediatek.hardware.radio.deprecated@1.1_vendor.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils android.hardware.radio.deprecated@1.0 android.hardware.radio@1.0 libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_vendor.mediatek.hardware.radio.deprecated@1.1_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.radio.deprecated@1.1_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/vendor.mediatek.hardware.radio.deprecated@1.1_vendor.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils android.hardware.radio.deprecated@1.0 android.hardware.radio@1.0 libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_vendor.mediatek.hardware.radio@2.0_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.radio@2.0_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib/vendor.mediatek.hardware.radio@2.0_vendor.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils android.hardware.radio@1.0 android.hardware.radio@1.1 libc++
include $(BUILD_PREBUILT)

# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。
include $(CLEAR_VARS)
LOCAL_MODULE := cappu_blob_lib_vendor.mediatek.hardware.radio@2.0_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_INSTALLED_MODULE_STEM := vendor.mediatek.hardware.radio@2.0_vendor.so
LOCAL_STRIP_MODULE := false
LOCAL_CHECK_ELF_FILES := true
LOCAL_MULTILIB := 64
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := proprietary/vendor/lib64/vendor.mediatek.hardware.radio@2.0_vendor.so
LOCAL_SHARED_LIBRARIES := libhidlbase libhidltransport libhwbinder liblog libutils libcutils android.hardware.radio@1.0 android.hardware.radio@1.1 libc++
include $(BUILD_PREBUILT)

endif
