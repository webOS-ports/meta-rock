FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_slate += "file://no-x11-headers.patch"
PRINC := "${@int(PRINC) + 1}"
