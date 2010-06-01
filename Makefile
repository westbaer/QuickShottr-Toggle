LIBRARY_NAME = Toggle
Toggle_OBJC_FILES = Tweak.m
Toggle_FRAMEWORKS = Foundation
Toggle_INSTALL_PATH = /var/mobile/Library/SBSettings/Toggles/QuickShottr/

FRAMEWORKDIR=$(FW_PROJECT_DIR)/../framework

include ../framework/makefiles/common.mk
include ../framework/makefiles/library.mk
