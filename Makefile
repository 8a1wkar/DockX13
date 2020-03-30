
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DockX13

DockX13_FILES = Tweak.x
DockX13_CFLAGS = -fobjc-arc
DockX13_EXTRA_FRAMEWORKS += Cephei
DockX13_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += dockx13prefs
include $(THEOS_MAKE_PATH)/aggregate.mk
