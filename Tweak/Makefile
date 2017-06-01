export GO_EASY_ON_ME = 1

export THEOS=/var/theos

ARCHS = armv7 arm64
TARGET = iphone:clang::9.2
SDKVERSION = 9.2

include /var/theos/makefiles/common.mk

TWEAK_NAME = CLSMS
CLSMS_FILES = Tweak.xm
CLSMS_FRAMEWORKS = Foundation CoreFoundation CoreTelephony
ADDITIONAL_OBJCFLAGS = -fobjc-arc

include /var/theos/makefiles/tweak.mk
