PR_append_x86 = "+rock+gitr${SRCPV}"
DEPENDS_append_x86 =" luna-sysmgr-common"
SRC_URI_x86 = "git://github.com/halfhalo/${PN};branch=rock/master;protocol=git"
SRCREV_x86 ="${AUTOREV}"

PR_append_x86-64 = "+rock+gitr${SRCPV}"
DEPENDS_append_x86-64 =" luna-sysmgr-common"
SRC_URI_x86-64 = "git://github.com/halfhalo/${PN};branch=rock/gallium;protocol=git"
SRCREV_x86-64 ="${AUTOREV}"