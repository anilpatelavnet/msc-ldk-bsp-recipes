FILESEXTRAPATHS_prepend := "${THISDIR}:"

SRC_URI_append = " file://sm2s-am62xx.cfg"

KERNEL_CONFIG_FRAGMENTS_append = " ${WORKDIR}/sm2s-am62xx.cfg"

