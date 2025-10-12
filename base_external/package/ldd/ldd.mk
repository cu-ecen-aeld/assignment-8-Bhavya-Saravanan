LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-Bhavya-Saravanan.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_VERSION = '4b56c39cbefd54751dbb3ae9cf852624e0ce0b1f'

LDD_MODULE_SUBDIRS = misc-modules
LDD_MODULE_SUBDIRS += scull

define LDD_INSTALL_TARGET_CMDS
    $(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin/
    $(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin/
    $(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin/
    $(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin/
endef

$(eval $(kernel-module))
$(eval $(generic-package))
