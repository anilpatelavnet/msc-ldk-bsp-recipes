# Copyright (C) 2022 AVNET Embedded, MSC Technologies GmbH

require ../../meta-msc-ldk-core.git/recipes-core/images/msc-image-base.bb
require ../../meta-arago.git/meta-arago-distro/recipes-core/images/tisdk-base-image.bb

IMAGE_FEATURES_remove += "\
    ssh-server-openssh \
"

PACKAGECONFIG_append_pn-qtmultimedia = " \
        gstreamer \
"

FONT_PACKAGES = " \
        fontconfig-utils \
        liberation-fonts \
        ttf-bitstream-vera \
        ttf-dejavu-common \
        ttf-dejavu-sans \
        ttf-dejavu-sans-mono \
"

TI_SDK_PACKAGES = " \
        ${@bb.utils.contains('MACHINE_FEATURES','gpu','packagegroup-arago-tisdk-graphics','',d)} \
        ${@bb.utils.contains('MACHINE_FEATURES','gpu','packagegroup-arago-tisdk-gtk','',d)} \
        ${@bb.utils.contains('MACHINE_FEATURES','gpu','packagegroup-arago-tisdk-qte','',d)} \
        packagegroup-arago-tisdk-connectivity \
        packagegroup-arago-tisdk-matrix \
        packagegroup-arago-tisdk-matrix-extra \
        packagegroup-arago-tisdk-multimedia \
"

IMAGE_INSTALL_append += " \
	dropbear \
	ruby \
        \
        qttools \
        qtbase-plugins \
        qtbase-tools \
        qtscript \
        qtdeclarative \
        qtdeclarative-plugins \
        qtdeclarative-tools \
        qtdeclarative-qmlplugins \
        qtmultimedia \
        qtmultimedia-plugins \
        qtmultimedia-qmlplugins \
        qtlocation \
        qtsvg \
        qtsvg-plugins \
        qtsensors \
        qtserialport \
        qtimageformats-plugins \
        qtsystems \
        qtsystems-tools \
        qtsystems-qmlplugins \
        qtquickcontrols \
        qtquickcontrols2 \
        qtquickcontrols-qmlplugins \
        qtgraphicaleffects \
        qtgraphicaleffects-qmlplugins \
        \
	${FONT_PACKAGES} \
	${TI_SDK_PACKAGES} \
"

export IMAGE_BASENAME = "msc-image-qt5"

