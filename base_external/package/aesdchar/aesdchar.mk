##########################################
#
# aesdchar
#
##########################################

AESDCHAR_VERSION = 'db4f5d23d8a94c767f020944c20eb053d75f9e3b'
AESDCHAR_SITE = 'git@github.com:cu-ecen-5013/assignment-3-manual-kernel-and-root-filesystem-build-GitRaka.git'
AESDCHAR_SITE_METHOD = git

AESDCHAR_MODULE_SUBDIRS = aesd-char-driver/

$(eval $(kernel-module))
$(eval $(generic-package))
