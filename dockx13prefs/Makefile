
include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = Dockx13Prefs

Dockx13Prefs_FILES = DockX13.m
Dockx13Prefs_INSTALL_PATH = /Library/PreferenceBundles
Dockx13Prefs_FRAMEWORKS = UIKit
Dockx13Prefs_PRIVATE_FRAMEWORKS = Preferences
Dockx13Prefs_CFLAGS = -fobjc-arc
Dockx13Prefs_EXTRA_FRAMEWORKS = Cephei CepheiPrefs

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/Dockx13Prefs.plist$(ECHO_END)
