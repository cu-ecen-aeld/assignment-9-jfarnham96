
##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = c3be71e709a102e7136a5a566de8dfed3d4a98bd
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-jfarnham96.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_MODULE_SUBDIRS = misc-modules scull
LDD_MODULE_MAKE_OPTS = KVERSION=$(LINUX_VERSION_PROBED)

define LDD_INSTALL_TARGET_CMDS
    $(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
    $(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin

	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin
    $(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
