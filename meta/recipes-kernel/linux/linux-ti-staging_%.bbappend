# Copyright (C) 2022 AVNET Embedded, MSC Technologies GmbH
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append += " \
    file://sm2s-am62xx.cfg \
    file://0001-spi-cadence-quadspi-Add-multi-chipselect-support-for.patch \
    file://0001-mtd-Added-W25N02JW-nand-spi-support.patch \
    file://0001-sm2s-am62xx-Added-required-DTS-changes-for-smarc-mod.patch \
"

KERNEL_CONFIG_FRAGMENTS_append = " ${WORKDIR}/sm2s-am62xx.cfg"

