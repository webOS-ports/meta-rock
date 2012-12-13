# Current pre-9.1 commit
SRCREV = "${AUTOREV}"
PV = "9.1~git${SRCPV}"

LIC_FILES_CHKSUM = "file://docs/license.html;md5=42d77d95cba529a3637129be87d6555d"
FILESEXTRAPATHS_prepend := "${THISDIR}/mesa-git:"

SRC_URI = "git://anongit.freedesktop.org/git/mesa/mesa;protocol=git \
           file://0002-cross-compile.patch \
           "

SRC_URI += "${@base_contains('DISTRO_FEATURES', 'x11', '', 'file://0004-gross-hack-to-prevent-from-install-libgl.patch', d)}"

S = "${WORKDIR}/git"
