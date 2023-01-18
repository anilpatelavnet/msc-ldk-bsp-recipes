# Copyright (C) 2022 AVNET Embedded, MSC Technologies GmbH

require ../../meta-msc-ldk-core.git/recipes-core/images/msc-image-base.bb
require ../../yocto.git/meta/recipes-graphics/images/core-image-weston.bb

IMAGE_INSTALL_append += "\
        can-utils iproute2 \
        "

