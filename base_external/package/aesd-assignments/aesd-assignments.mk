
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_ASSIGNMENTS_VERSION = db4f5d23d8a94c767f020944c20eb053d75f9e3b
AESD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-5013/assignment-3-manual-kernel-and-root-filesystem-build-GitRaka.git
AESD_ASSIGNMENTS_SITE_METHOD = git

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

#TODO: Add required executables or scripts below
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/writer $(@D)/tester.sh $(@D)/finder.sh $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/aesdsocket $(TARGET_DIR)/usr/bin
        $(INSTALL) -m 0755 $(@D)/aesdsocket-start-stop.sh $(TARGET_DIR)/etc/init.d/S99aesdsocket
endef
$(eval $(generic-package))
