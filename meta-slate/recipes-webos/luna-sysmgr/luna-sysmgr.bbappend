SRC_URI = "${OPENWEBOS_GIT_REPO}/${PN};branch=master;protocol=git"
SRCREV = "5cf6e26a3c0a860d8134321fa305783946245013"
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
PRINC := "${@int(PRINC) + 6}"


SRC_URI_append_slate =" \
                        file://0001-Add-slate.pri-file-and-modify-sysmgr.pro-to-load-it.patch \
                        file://0003-Tweak-Media-for-Slate.patch \
                        file://0004-add-luna-slate-conf-file.patch \
                        file://0006-disable-webos-in-webappmgr.patch \
                        file://disable-vsync-on-qpa.patch"
