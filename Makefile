PACKAGE_VERSION=$(THEOS_PACKAGE_BASE_VERSION)

include $(THEOS)/makefiles/common.mk

export TARGET = iphone:clang:12.1.2:12.0
export ARCHS = arm64 arm64e

TWEAK_NAME = NDTVNoAds
NDTVNoAds_FILES = Tweak.xm
$(TWEAK_NAME)_CFLAGS = -Wno-deprecated-declarations

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 NDTV"
