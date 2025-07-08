################################################################################
#
# hping
#
################################################################################

HPING_VERSION = 3.0.0-foxjack
HPING_SOURCE = hping-$(HPING_VERSION).tar.xz
HPING_SITE = https://github.com/KaliAssistant/hping/releases/download/$(HPING_VERSION)


HPING_DEPENDENCIES = libpcap

# Optional Tcl support
ifeq ($(BR2_PACKAGE_TCL),y)
HPING_DEPENDENCIES += tcl
HPING_CONF_OPTS += --with-libtcl=$(STAGING_DIR)/usr
else
HPING_CONF_OPTS += --disable-tcl
endif

HPING_CONF_OPTS += \
	--with-libpcap=$(STAGING_DIR)/usr \
	--disable-static \
	--enable-shared

HPING_AUTORECONF = YES

$(eval $(autotools-package))

