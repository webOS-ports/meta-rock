FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
PRINC := "${@int(PRINC) + 6}"
SRC_URI_append_x86 = " \
    file://0001-Add-mkspec.patch"
do_install_append() {
    oe_libinstall -C ${PALM_BUILD_DIR}/plugins/platforms -so libqpalm ${D}/${libdir}
}