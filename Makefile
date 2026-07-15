export THEOS ?= /opt/theos
TARGET := iphone:clang:latest:14.0
ARCHS = arm64

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = AovDarksword

AovDarksword_FILES = $(wildcard *.m) $(wildcard Core/*.m) $(wildcard Core/*.c) $(wildcard Game/*.m) $(wildcard HUD/*.m) $(wildcard Mod/*.m) $(wildcard Tweaks/*.m) $(wildcard Utils/*.m)
AovDarksword_FRAMEWORKS = UIKit Foundation CoreGraphics QuartzCore
AovDarksword_CFLAGS = -fobjc-arc -I. -ICore -IGame -IHUD -IMod -ITweaks -IUtils -Wno-deprecated-declarations -Wno-unused-variable -Wno-incomplete-implementation
AovDarksword_CODESIGN_FLAGS = -SAovDarksword.entitlements

include $(THEOS_MAKE_PATH)/application.mk
