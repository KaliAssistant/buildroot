################################################################################
#
# yersinia
#
################################################################################

YERSINIA_VERSION = 0.8.2-foxjack
YERSINIA_SOURCE = yersinia-$(YERSINIA_VERSION).tar.xz
YERSINIA_SITE = https://github.com/KaliAssistant/yersinia/releases/download/$(YERSINIA_VERSION)



YERSINIA_DEPENDENCIES = host-pkgconf libpcap libnet ncurses

YERSINIA_CONF_OPTS = \
	--enable-admin \
	--disable-gtk \
	--with-ncurses=$(STAGING_DIR)/usr \
	--with-pcap-includes=$(STAGING_DIR)/usr/include \
	--with-libnet-includes=$(STAGING_DIR)/usr/include

define YERSINIA_REMOVE_EXTRA
	rm -f $(TARGET_DIR)/usr/share/yersinia/yersinia.pcap
endef

YERSINIA_POST_INSTALL_TARGET_HOOKS += YERSINIA_REMOVE_EXTRA

YERSINIA_AUTORECONF = YES

$(eval $(autotools-package))

