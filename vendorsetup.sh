#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
# 关于橙狐变量详见 fox_12.1/vendor/recovery/orangefox_build_vars.txt

	export TW_DEFAULT_LANGUAGE="zh_CN"
	export LC_ALL="C"
	export ALLOW_MISSING_DEPENDENCIES=true

	echo -e "\x1b[128mOP4EC1: 开始添加OrangeFox Vars...\x1b[m"
	## 构建信息
	# 设置显示在关于页面里的维护人员名称
	export OF_MAINTAINER=youngguo
	# 设置版本号为日期
	export FOX_VERSION=$(date +%y.%m.%d)

	## 添加功能
	# 使用完整版getprop命令
	export FOX_REPLACE_TOOLBOX_GETPROP=1
	# 支持tar命令
	export FOX_USE_TAR_BINARY=1
	# 支持sed命令
	# export FOX_USE_SED_BINARY=1
	# 支持lz4命令
	# export FOX_USE_LZ4_BINARY=1
	# 支持zstd命令
	export FOX_USE_ZSTD_BINARY=1
	# 使用bash代替sh和ash
	export FOX_USE_BASH_SHELL=1
	export FOX_ASH_IS_BASH=1
	# 添加橙狐的app管理器功能
	export FOX_ENABLE_APP_MANAGER=1
	# 使用完整版grep命令
	export FOX_USE_GREP_BINARY=1
	# 支持lzma, xz命令
	export FOX_USE_XZ_UTILS=1
	# 使用橙狐编译的NANO编辑器
	# export FOX_USE_NANO_EDITOR=1
	# 添加phhusson's lptools工具
	export OF_ENABLE_LPTOOLS=1

	## 添加橙狐特殊处理
	# ramdisk使用lz4压缩
	export OF_USE_LZ4_COMPRESSION=1

	# 当安装MIUI或者在MIUI上安装橙狐zip，使用magisk处理所有boot和recovery镜像，防止橙狐被MIUI官方recovery替换
	export OF_FORCE_MAGISKBOOT_BOOT_PATCH_MIUI=1
	# 避免在已加密设备上应用强制加密补丁
	export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
	# 防止橙狐在解密后重新运行自启动进程
	export OF_NO_RELOAD_AFTER_DECRYPTION=1
	# 禁用检查rom里的compatibility.zip
	export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
	# 使用zip卡刷包的方式安装橙狐后不恢复橙狐的默认设置
	export FOX_RESET_SETTINGS=disabled
	# 删除zip包里的AromaFM（有的设备用不了）
	export FOX_DELETE_AROMAFM=1


	# 为“快速备份”指定默认选择的分区
	export OF_QUICK_BACKUP_LIST="/boot;/data;"
	# 将装载逻辑分区时的一些错误仅显示在日志里
	export OF_IGNORE_LOGICAL_MOUNT_ERRORS=1
	# 禁用橙狐内置的magisk菜单
	# export FOX_DELETE_MAGISK_ADDON=1
	# 使用指定的magisk
	# export FOX_USE_SPECIFIC_MAGISK_ZIP="$HOME/Magisk.zip"
	# 使用指定的magisk版本号，由于magisk 23+使用了新的包装形式，文件路径改变了，橙狐无法获取正确的版本
	# export MAGISK_VER=26.1
	# 当修补recovery/boot镜像时，始终指示magiskboot v24+修补vbmeta标头（自动禁用avb验证？）
	export FOX_PATCH_VBMETA_FLAG=1
	# 在修复或格式化f2fs数据分区之前自动卸载绑定/sdcard
	export OF_UNBIND_SDCARD_F2FS=1
	# 设置默认时区为北京时间
	export OF_DEFAULT_TIMEZONE="TAIST-8;TAIDT"
	# 支持通过修补vbmeta/vbmeta_system禁用avb2.0
	export OF_SUPPORT_VBMETA_AVB2_PATCHING=1
	# 安装压缩包页面选项的最大数量，调小这个值会显示滚动条（大于4小于9时生效，默认为4）
	export OF_OPTIONS_LIST_NUM=9

	# 使橙狐可以刷入具有机型检测限制，与TARGET_OTA_ASSERT_DEVICE冲突
	# export OF_TARGET_DEVICES="OP4EC1,OP4F7FL1"


	echo -e "\x1b[128mOP4EC1: 当你看到这个消息的时候，所有的OrangeFox Var已经添加完毕！\x1b[m"
