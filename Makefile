TARGET = iphone:clang::7.0

include theos/makefiles/common.mk

export ARCHS = armv7 armv7s arm64

TWEAK_NAME = AirTrafficControl
AirTrafficControl_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
