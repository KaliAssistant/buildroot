GT_VERSION = 8ebbf3eb6fb77a53d6ace0eebf4f5debb779b576
GT_SITE = $(call github,linux-usb-gadgets,gt,$(GT_VERSION))

GT_DEPENDENCIES = libusbgx libconfig
ifdef BR2_PACKAGE_GT_GADGETD
GT_DEPENDENCIES += glib gio
GT_CMAKE_OPTS += -DWITH_GADGETD=ON
else
GT_CMAKE_OPTS += -DWITH_GADGETD=OFF
endif

GT_SUBDIR = source


$(eval $(cmake-package))

