#Copyright (C) 2019 AVNET Integrated, MSC Technologies GmbH
#@TYPE: Machine
#@NAME: MSC sm2s-imx8mm
#@SOC: i.MX8M
#@DESCRIPTION: Machine configuration for sm2s-imx8mm

include conf/machine/include/imx-preferred-env.inc

KERNEL_DEVICETREE += " \
	msc/msc-sm2s-imx8mm-qc-001.dtb \
	msc/msc-sm2s-imx8mm-qc-001-ep1.dtb \
	"

UBOOT_CONFIG ??= "sd"
UBOOT_CONFIG[sd] = "msc_sm2s_imx8mm_config,sdcard"
MACHINE_FEATURES += " pci wifi bluetooth "
SPL_BINARY = "spl/u-boot-spl.bin"

# Set DDR FIRMWARE
DDR_FIRMWARE_NAME = " \
	lpddr4_pmu_train_1d_imem.bin \
	lpddr4_pmu_train_1d_dmem.bin \
	lpddr4_pmu_train_2d_imem.bin \
	lpddr4_pmu_train_2d_dmem.bin \
	"

# Set imx-mkimage boot target
IMXBOOT_TARGETS = " \
	flash-sm2s-imx8mm \
	"

# Set Serial console
SERIAL_CONSOLE = "115200 ttymxc0"

IMAGE_BOOTLOADER = "imx-boot"
IMAGE_FSTYPES = " sdcard "

BOOT_SPACE = "65536"

LOADADDR = ""
UBOOT_SUFFIX = "bin"
UBOOT_MAKE_TARGET = ""
IMX_BOOT_SEEK = "33"

IMAGE_BOOTFILES_DEPENDS += "imx-m4-demos:do_deploy"
IMAGE_BOOTFILES += " \
	imx8mm_m4_TCM_hello_world.bin \
	imx8mm_m4_TCM_rpmsg_lite_pingpong_rtos_linux_remote.bin \
	imx8mm_m4_TCM_rpmsg_lite_str_echo_rtos.bin \
	imx8mm_m4_TCM_sai_low_power_audio.bin \
	"

IMAGE_INSTALL_append += " \
	weston \
	weston-init \
	weston-examples \
	\
	"

IMAGE_INSTALL_remove += " peak-linux-driver "