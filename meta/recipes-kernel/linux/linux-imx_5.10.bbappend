# Copyright (C) 2021 AVNET Embedded, MSC Technologies GmbH
# Released under the MIT license (see COPYING.MIT for the terms)

require linux-imx-bsp.inc

DEFCONFIG = "msc_sm2s_imx8mm_defconfig"
SRCREV = "ece1fd91b52788fb58772b587adc9ceb99220af8"

do_copy_defconfig () {
	install -d ${B}
	mkdir -p ${B}
	cp ${S}/arch/arm64/configs/${DEFCONFIG} ${B}/.config
	cp ${S}/arch/arm64/configs/${DEFCONFIG} ${B}/../defconfig
}
