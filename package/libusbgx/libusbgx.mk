################################################################################
#
# libusbgx
#
################################################################################

LIBUSBGX_VERSION = dbedf16f80c5b4e1807ea4f80cc89d1f15d36f0a
LIBUSBGX_SITE = $(call github,linux-usb-gadgets,libusbgx,$(LIBUSBGX_VERSION))
LIBUSBGX_LICENSE = GPL-2.0+ (examples), LGPL-2.1+ (library)
LIBUSBGX_LICENSE_FILES = COPYING COPYING.LGPL
LIBUSBGX_DEPENDENCIES = host-pkgconf libconfig
LIBUSBGX_AUTORECONF = YES
LIBUSBGX_INSTALL_STAGING = YES

$(eval $(autotools-package))
