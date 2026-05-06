
##############################################################
#
# LDD
#
##############################################################

#Referencing assignment7 git contents
LDD_VERSION = 5bce7935f68575fb6a1190277f4c4e4571cab762
LDD_SITE = git@github.com:cu-ecen-aeld/assignments-7-biplavpoudel.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_MODULE_SUBDIRS = scull misc-modules

# define LDD_BUILD_CMDS
# 	$(MAKE) $(TARGET_CONFIGURE_OPTS) CC="$(TARGET_CC)" -C $(@D)/misc-modules all
# 	$(MAKE) $(TARGET_CONFIGURE_OPTS) CC="$(TARGET_CC)" -C $(@D)/scull all
# endef

# Adding our misc-modules and scull utilities/scripts and its init script to the installation steps below
define LDD_INSTALL_TARGET_CMDS
	@echo "Installing scull driver, faulty driver and hello module from ${LDD_SITE} into rootfs..."
	@(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
	@(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin
	@(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin
	@(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))