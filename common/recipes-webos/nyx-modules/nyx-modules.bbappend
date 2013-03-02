WEBOS_TARGET_MACHINE_IMPL_x86 = "device"
DEPENDS_append_x86="udev mtdev"
PR_append_x86 = "+rock+gitr${SRCPV}"
SRC_URI_x86 = "git://github.com/halfhalo/${PN};branch=udev-working;protocol=git"
SRCREV_x86 ="${AUTOREV}"


WEBOS_TARGET_MACHINE_IMPL_x86-64 = "device"
DEPENDS_append_x86-64="udev mtdev"
PR_append_x86-64 = "+rock+gitr${SRCPV}"
SRC_URI_x86-64 = "git://github.com/halfhalo/${PN};branch=udev;protocol=git"
SRCREV_x86-64 ="${AUTOREV}"