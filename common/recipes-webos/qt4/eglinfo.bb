DESCRIPTION = "Temporary eglinfo script"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
PR = "r2"
SRC_URI ="git://github.com/KDAB/eglinfo.git;protocol=git"
SRCREV = "${AUTOREV}"
PACKAGE_ARCH = "${MACHINE_ARCH}"
inherit webos_qmake