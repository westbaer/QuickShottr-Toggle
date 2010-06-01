LIBRARY_NAME = QSSToggle
QSSToggle_OBJC_FILES = Tweak.m
QSSToggle_FRAMEWORKS = Foundation
QSSToggle_INSTALL_PATH = /var/mobile/Library/SBSettings/Toggles/QuickShottr/

FRAMEWORKDIR=$(FW_PROJECT_DIR)/../framework

include ../framework/makefiles/common.mk
include ../framework/makefiles/library.mk
