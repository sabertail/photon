#
# Copyright VMware, Inc 2015
#

MKDIR=/bin/mkdir
RM=/bin/rm
RMDIR=/bin/rm -rf
CP=/bin/cp
MV=/bin/mv
TAR=/bin/tar
RPMBUILD=/usr/bin/rpmbuild
SED=/usr/bin/sed
SHASUM=/usr/bin/shasum
PACKER=/usr/local/bin/packer
VAGRANT=/usr/bin/vagrant
VAGRANT_BUILD=vagrant

SRCROOT := $(realpath $(SRCROOT))
MAKEROOT := $(realpath $(MAKEROOT))

PHOTON_STAGE=$(SRCROOT)/stage
PHOTON_TOOLS_DIR=$(PHOTON_STAGE)/tools
PHOTON_TOOLCHAIN_DIR=$(SRCROOT)/support/toolchain
PHOTON_TOOLCHAIN=$(PHOTON_STAGE)/tools-build.tar
PHOTON_TOOLCHAIN_MINIMAL=$(PHOTON_STAGE)/tools.tar.gz
PHOTON_TOOLCHAIN_MIN_LIST=$(PHOTON_TOOLCHAIN_DIR)/tools-minimal.list
PHOTON_TOOLCHAIN_BUILDER=$(PHOTON_TOOLCHAIN_DIR)/mk-tools.sh
PHOTON_TOOLS_MAKE=$(PHOTON_TOOLS_DIR)/bin/make
PHOTON_LOGS_DIR=$(PHOTON_STAGE)/LOGS
PHOTON_RPMS_DIR=$(PHOTON_STAGE)/RPMS
PHOTON_SPECS_DIR=$(SRCROOT)/SPECS
PHOTON_SRCS_DIR=$(PHOTON_STAGE)/SOURCES
PHOTON_PKG_BUILDER_DIR=$(SRCROOT)/support/package-builder
PHOTON_PULL_SOURCES_DIR=$(SRCROOT)/support/pullsources
PHOTON_INSTALLER_DIR=$(SRCROOT)/installer
PHOTON_INSTALLER=$(PHOTON_INSTALLER_DIR)/photonInstaller.py
PHOTON_PACKAGE_BUILDER=$(PHOTON_PKG_BUILDER_DIR)/build_package.py
PHOTON_PULL_SOURCES=$(PHOTON_PULL_SOURCES_DIR)/pullsources.py
PHOTON_CHROOT_CLEANER=$(PHOTON_PKG_BUILDER_DIR)/cleanup-build-root.sh
PHOTON_RPMS_DIR_NOARCH=$(PHOTON_RPMS_DIR)/noarch
PHOTON_RPMS_DIR_X86_64=$(PHOTON_RPMS_DIR)/x86_64
PHOTON_PACKER_TEMPLATES=$(SRCROOT)/support/packer-templates

PHOTON_CHROOT_PATH=/mnt/photonroot
PHOTON_FS_ROOT=/usr/src/photon
PHOTON_CHROOT_RPMS_DIR_NOARCH=$(PHOTON_CHROOT_PATH)/$(PHOTON_FS_ROOT)/RPMS/noarch
PHOTON_CHROOT_RPMS_DIR_X86_64=$(PHOTON_CHROOT_PATH)/$(PHOTON_FS_ROOT)/RPMS/x86_64
PHOTON_CHROOT_BUILD_DIR=$(PHOTON_CHROOT_PATH)/$(PHOTON_FS_ROOT)/BUILD
PHOTON_CHROOT_BUILDROOT_DIR=$(PHOTON_CHROOT_PATH)/$(PHOTON_FS_ROOT)/BUILDROOT
