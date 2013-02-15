DESCRIPTON = "Startup scripts"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"

PR = "r1"

PACKAGE_ARCH = "${MACHINE_ARCH}"
SRC_URI = "              \
   file://setkeycode-script \
   "
do_install() {
    install -d ${D}${sysconfdir}/init.d
    install -d ${D}${sysconfdir}/rcS.d
    install -d ${D}${sysconfdir}/rc1.d
    install -d ${D}${sysconfdir}/rc2.d
    install -d ${D}${sysconfdir}/rc3.d
    install -d ${D}${sysconfdir}/rc4.d
    install -d ${D}${sysconfdir}/rc5.d
    install -d ${D}${sbindir}
    install -m 0755 ${WORKDIR}/setkeycode-script  ${D}${sysconfdir}/init.d/

    ln -sf ../init.d/setkeycode-script  ${D}${sysconfdir}/rc5.d/S90setkeycode-script

}