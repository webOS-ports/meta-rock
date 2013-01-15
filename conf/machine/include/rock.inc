
#@DESCRIPTION: Generizized x86 Tablet settings

PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
PREFERRED_VERSION_linux-yocto ?= "3.4%"

DEFAULTTUNE ??= "core2"

require conf/machine/include/ia32-base.inc

SERIAL_CONSOLE=""

MACHINE_FEATURES +=" touchscreen wifi bluetooth zeroconf "
MACHINE_EXTRA_RDEPENDS +=" kernel-modules "
IMAGE_INSTALL_append =" linux-firmware curl opkg wireless-tools e2fsprogs"
WEBOS_IMAGE_EXTRA_INSTALL += "freetype fontconfig connman"