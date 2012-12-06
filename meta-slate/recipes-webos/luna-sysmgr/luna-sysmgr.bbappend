FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
PRINC := "${@int(PRINC) + 6}"
SRC_URI = "${OPENWEBOS_GIT_REPO}/${PN};branch=master;protocol=git"
SRCREV ="b4111d005cda96b88cb335139e3cf0761d5067f1"
SRC_URI_append_slate =" \
                        file://0001-Add-slate.pri-file-and-modify-sysmgr.pro-to-load-it.patch \
                        file://0003-Tweak-Media-for-Slate.patch \
                        file://0004-add-luna-slate-conf-file.patch "
