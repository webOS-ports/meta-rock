PR_append_x86 = "+rock+gitr${SRCPV}"
SRC_URI_x86 = "git://github.com/halfhalo/${PN};branch=halfhalo/slate;protocol=git"
SRCREV_x86 ="${AUTOREV}"
DEPENDS_append_x86 =" qmake-webos-native"

PR_append_x86-64 = "+rock+gitr${SRCPV}"
SRC_URI_x86-64 = "git://github.com/halfhalo/${PN};branch=halfhalo/slate;protocol=git"
SRCREV_x86-64 ="${AUTOREV}"
DEPENDS_append_x86-64 =" qmake-webos-native"