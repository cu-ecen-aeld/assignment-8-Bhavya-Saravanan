################################################################################
# aesdchar - out-of-tree kernel module package
################################################################################

AESDCHAR_SITE  = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-Bhavya-Saravanan.git'
AESDCHAR_SITE_METHOD = git
AESDCHAR_GIT_SUBMODULES  = YES
AESDCHAR_VERSION  = 'f428c9e4bcf9f044fa357d3192fca1edb13be417'

AESDCHAR_MODULE_SUBDIRS = aesd-char-driver

define AESDCHAR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar-start-stop.sh $(TARGET_DIR)/etc/init.d/S97aesdchar
endef

$(eval $(kernel-module))
$(eval $(generic-package))
