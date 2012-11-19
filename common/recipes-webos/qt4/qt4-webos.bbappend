FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
PRINC := "${@int(PRINC) + 6}"
SRC_URI_append_x86 = " \
    file://0001-Add-mkspec.patch"