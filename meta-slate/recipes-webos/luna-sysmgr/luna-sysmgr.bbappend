FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
PRINC := "${@int(PRINC) + 6}"
SRC_URI_append_slate =" \
                        file://0001-Add-slate.pri-file-and-modify-sysmgr.pro-to-load-it.patch \
                        file://0002-Tweak-keyboardmapping-for-slate.patch \
                        file://0003-Tweak-Media-for-Slate.patch"
