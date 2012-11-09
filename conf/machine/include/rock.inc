
#@DESCRIPTION: Generizized x86 Tablet settings

PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
PREFERRED_VERSION_linux-yocto ?= "3.4%"

DEFAULTTUNE ??= "core2"

require conf/machine/include/ia32-base.inc

SERIAL_CONSOLE=""

MACHINE_FEATURES +=" touchscreen wifi bluetooth zeroconf "
MACHINE_EXTRA_RDEPENDS +=" kernel-modules"
WEBOS_IMAGE_EXTRA_INSTALL += "linux-firmware curl opkg wireless-tools e2fsprogs man freetype fontconfig connman webkit-webos-dev"

DISTRO_FEATURES_append =" directfb+gtk "