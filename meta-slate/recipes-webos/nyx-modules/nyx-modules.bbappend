FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
PRINC := "${@int(PRINC) + 3}"

SRC_URI_append_x86= " \
    file://0001-Tweak-Touchpanel-for-slate.patch \
	file://0002-Add-slate-config.patch \
    file://0003-Don-t-use-touchscreen0-since-that-is-linked-to-wacom.patch"