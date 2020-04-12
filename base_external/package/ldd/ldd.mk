##########################################
#
# ldd
#
##########################################

LDD_VERSION = '26616082c8e2014b0c7176e7bf8adb988b76affc'
LDD_SITE = 'git@github.com:cu-ecen-5013/assignment-7-buildroot-and-yocto-kernel-builds-GitRaka.git'
LDD_SITE_METHOD = git

LDD_MODULE_SUBDIRS = misc-modules/
LDD_MODULE_SUBDIRS += scull/

$(eval $(kernel-module))
$(eval $(generic-package))
