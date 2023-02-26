ifeq ($(USER), root)
	$(error This script was not made to be run as root!)
endif

ifndef HOME
	$(error Home variable not set!)
endif

ifdef XDG_CONFIG_HOME
	CONFIG = $(XDG_CONFIG_HOME)
else
	CONFIG = $(HOME)/.config
endif

ifdef XDG_DATA_HOME
	DATA = $(XDG_DATA_HOME)
else 
	DATA = $(HOME)/.local/share
endif

mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
mkfile_dir := $(dir $(mkfile_path))
package_home := $(mkfile_dir)home

tracked_files := \
	$(CONFIG)/i3/config \
	$(HOME)/.xinitrc \
	$(HOME)/.bashrc \

tracked_directories := \
	$(CONFIG)/nvim \
	$(CONFIG)/neofetch \
	$(CONFIG)/nnn \
	$(CONFIG)/spicetify \
	$(CONFIG)/polybar \
	$(CONFIG)/btop \
	$(CONFIG)/rofi \
	$(CONFIG)/kitty \
	$(CONFIG)/fish \
	$(DATA)/themes \
	$(DATA)/fonts \

											
home-tracked_files := $(subst $(HOME),,$(tracked_files))
home-tracked_directories := $(subst $(HOME),,$(tracked_directories))

.PHONY: package install uninstall $(home-tracked_files) $(home-tracked_directories)

package: $(home-tracked_files) $(home-tracked_directories)

$(home-tracked_files):
	mkdir -p $(dir $(package_home)$@)
	cp -u $(HOME)$@ $(package_home)$@

$(home-tracked_directories):
	mkdir -p $(package_home)$@
	cp -ru $(HOME)$@/* $(package_home)$@

install:
	cp -rub $(package_home)/* $(HOME)/
