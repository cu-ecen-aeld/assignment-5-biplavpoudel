
##############################################################
#
# LDD
#
##############################################################

#Referencing assignment7 git contents
LDD_VERSION = a336fded1af28acee682e91b940f671be70386ed
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-biplavpoudel.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_MODULE_SUBDIRS = misc-modules scull 

$(eval $(kernel-module))
$(eval $(generic-package))