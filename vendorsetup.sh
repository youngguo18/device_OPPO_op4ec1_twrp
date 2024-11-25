#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
# ���ڳȺ�������� fox_12.1/vendor/recovery/orangefox_build_vars.txt

	export TW_DEFAULT_LANGUAGE="zh_CN"
	export LC_ALL="C"
	export ALLOW_MISSING_DEPENDENCIES=true

	echo -e "\x1b[128mOP4EC1: ��ʼ���OrangeFox Vars...\x1b[m"
	## ������Ϣ
	# ������ʾ�ڹ���ҳ�����ά����Ա����
	export OF_MAINTAINER=youngguo
	# ���ð汾��Ϊ����
	export FOX_VERSION=$(date +%y.%m.%d)

	## ��ӹ���
	# ʹ��������getprop����
	export FOX_REPLACE_TOOLBOX_GETPROP=1
	# ֧��tar����
	export FOX_USE_TAR_BINARY=1
	# ֧��sed����
	# export FOX_USE_SED_BINARY=1
	# ֧��lz4����
	# export FOX_USE_LZ4_BINARY=1
	# ֧��zstd����
	export FOX_USE_ZSTD_BINARY=1
	# ʹ��bash����sh��ash
	export FOX_USE_BASH_SHELL=1
	export FOX_ASH_IS_BASH=1
	# ��ӳȺ���app����������
	export FOX_ENABLE_APP_MANAGER=1
	# ʹ��������grep����
	export FOX_USE_GREP_BINARY=1
	# ֧��lzma, xz����
	export FOX_USE_XZ_UTILS=1
	# ʹ�óȺ������NANO�༭��
	# export FOX_USE_NANO_EDITOR=1
	# ���phhusson's lptools����
	export OF_ENABLE_LPTOOLS=1

	## ��ӳȺ����⴦��
	# ramdiskʹ��lz4ѹ��
	export OF_USE_LZ4_COMPRESSION=1

	# ����װMIUI������MIUI�ϰ�װ�Ⱥ�zip��ʹ��magisk��������boot��recovery���񣬷�ֹ�Ⱥ���MIUI�ٷ�recovery�滻
	export OF_FORCE_MAGISKBOOT_BOOT_PATCH_MIUI=1
	# �������Ѽ����豸��Ӧ��ǿ�Ƽ��ܲ���
	export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
	# ��ֹ�Ⱥ��ڽ��ܺ�������������������
	export OF_NO_RELOAD_AFTER_DECRYPTION=1
	# ���ü��rom���compatibility.zip
	export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
	# ʹ��zip��ˢ���ķ�ʽ��װ�Ⱥ��󲻻ָ��Ⱥ���Ĭ������
	export FOX_RESET_SETTINGS=disabled
	# ɾ��zip�����AromaFM���е��豸�ò��ˣ�
	export FOX_DELETE_AROMAFM=1


	# Ϊ�����ٱ��ݡ�ָ��Ĭ��ѡ��ķ���
	export OF_QUICK_BACKUP_LIST="/boot;/data;"
	# ��װ���߼�����ʱ��һЩ�������ʾ����־��
	export OF_IGNORE_LOGICAL_MOUNT_ERRORS=1
	# ���óȺ����õ�magisk�˵�
	# export FOX_DELETE_MAGISK_ADDON=1
	# ʹ��ָ����magisk
	# export FOX_USE_SPECIFIC_MAGISK_ZIP="$HOME/Magisk.zip"
	# ʹ��ָ����magisk�汾�ţ�����magisk 23+ʹ�����µİ�װ��ʽ���ļ�·���ı��ˣ��Ⱥ��޷���ȡ��ȷ�İ汾
	# export MAGISK_VER=26.1
	# ���޲�recovery/boot����ʱ��ʼ��ָʾmagiskboot v24+�޲�vbmeta��ͷ���Զ�����avb��֤����
	export FOX_PATCH_VBMETA_FLAG=1
	# ���޸����ʽ��f2fs���ݷ���֮ǰ�Զ�ж�ذ�/sdcard
	export OF_UNBIND_SDCARD_F2FS=1
	# ����Ĭ��ʱ��Ϊ����ʱ��
	export OF_DEFAULT_TIMEZONE="TAIST-8;TAIDT"
	# ֧��ͨ���޲�vbmeta/vbmeta_system����avb2.0
	export OF_SUPPORT_VBMETA_AVB2_PATCHING=1
	# ��װѹ����ҳ��ѡ��������������С���ֵ����ʾ������������4С��9ʱ��Ч��Ĭ��Ϊ4��
	export OF_OPTIONS_LIST_NUM=9

	# ʹ�Ⱥ�����ˢ����л��ͼ�����ƣ���TARGET_OTA_ASSERT_DEVICE��ͻ
	# export OF_TARGET_DEVICES="OP4EC1,OP4F7FL1"


	echo -e "\x1b[128mOP4EC1: ���㿴�������Ϣ��ʱ�����е�OrangeFox Var�Ѿ������ϣ�\x1b[m"
