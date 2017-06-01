export GO_EASY_ON_ME = 1

ARCHS = armv7 arm64
TARGET = iphone:clang::9.2
SDKVERSION = 9.2

include /var/theos/makefiles/common.mk

TOOL_NAME = clsms
clsms_FILES = main.mm
clsms_FRAMEWORKS = Foundation CoreFoundation
ADDITIONAL_OBJCFLAGS = -fobjc-arc

SUBPROJECTS = Tweak

include /var/theos/makefiles/tool.mk
include /var/theos/makefiles/aggregate.mk
