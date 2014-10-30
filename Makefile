TARGET = iphone:clang::7.0

include theos/makefiles/common.mk

export ARCHS = armv7 armv7s arm64

TWEAK_NAME = AirTrafficControl
AirTrafficControl_FILES = Tweak.xm

internal-stage::
	@mkdir -p $(THEOS_STAGING_DIR)/Library/MobileSubstrate/DynamicLibraries
	@cp -r $(THEOS_STAGING_DIR)/../AirTrafficControl.png $(THEOS_STAGING_DIR)/Library/MobileSubstrate/DynamicLibraries

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
