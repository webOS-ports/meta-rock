PR_append_x86 = "+rock+gitr${SRCPV}"
SRC_URI_x86 = "git://github.com/halfhalo/qt;branch=rock/master;protocol=git"
SRCREV_x86 ="${AUTOREV}"
PR_append_slate = "+rock+gitr${SRCPV}"
SRC_URI_slate = "git://github.com/halfhalo/qt;branch=rock/master;protocol=git"
SRCREV_slate ="${AUTOREV}"
DEPENDS_append_envy= " cdv-pvr-driver directfb"
QT_CONFIG_FLAGS_rock ?= "${QT4_MACHINE_CONFIG_ARCH_LITE_QPA} \
                   ${QT_ENDIAN} -crossarch ${QT_ARCH} \
                   -release -opensource -confirm-license \
                   -no-cups -no-nis -no-exceptions \
                   -no-accessibility -no-qt3support -no-xmlpatterns -no-multimedia -no-phonon -no-phonon-backend \
                   -no-svg -no-webkit -no-javascript-jit -no-scripttools -no-dbus -no-sql-sqlite -no-sql-psql -no-sql-mysql \
                   -no-libtiff -no-libmng -no-gstreamer -no-audio-backend -no-gtkstyle \
                   -reduce-relocations -reduce-exports -force-pkg-config -glib -qt-zlib -system-freetype -qt-kbd-linuxinput \
                   -prefix ${prefix} -datadir ${libdir}/qmake-webos \
                   -xplatform qws/linux-rock-g++ -no-neon -no-rpath -DQT_QWS_CLIENTBLIT -DQT_NO_DYNAMIC_CAST -DPALM_DEVICE \
                   -qt-mouse-pc -qt-mouse-qvfb -qt-mouse-linuxinput \
                   -plugin-gfx-directfb -no-opengl -DMESA_EGL_NO_X11_HEADERS \
                   -make 'libs' \
                   -qconfig palm"
QT_CONFIG_FLAGS_slate ?= "${QT4_MACHINE_CONFIG_ARCH_LITE_QPA} \
                   ${QT_ENDIAN} -crossarch ${QT_ARCH} \
                   -release -opensource -confirm-license \
                   -no-cups -no-nis -no-exceptions \
                   -no-accessibility -no-qt3support -no-xmlpatterns -no-multimedia -no-phonon -no-phonon-backend \
                   -no-svg -no-webkit -no-javascript-jit -no-scripttools -no-dbus -no-sql-sqlite -no-sql-psql -no-sql-mysql \
                   -no-libtiff -no-libmng -no-gstreamer -no-audio-backend -no-gtkstyle \
                   -reduce-relocations -reduce-exports -force-pkg-config -glib -qt-zlib -system-freetype -qt-kbd-linuxinput \
                   -prefix ${prefix} -datadir ${libdir}/qmake-webos \
                   -xplatform qws/linux-rock-g++ -no-neon -no-rpath -DQT_QWS_CLIENTBLIT -DQT_NO_DYNAMIC_CAST -DPALM_DEVICE \
                   -qt-mouse-pc -qt-mouse-qvfb -qt-mouse-linuxinput \
                   -plugin-gfx-directfb -no-opengl -DMESA_EGL_NO_X11_HEADERS \
                   -make 'libs' \
                   -qconfig palm"				   
QT_CONFIG_FLAGS_envy ?= "${QT4_MACHINE_CONFIG_ARCH_LITE_QPA} \
                   ${QT_ENDIAN} -crossarch ${QT_ARCH} \
                   -release -opensource -confirm-license \
                   -no-cups -no-nis -no-exceptions \
                   -no-accessibility -no-qt3support -no-xmlpatterns -no-multimedia -no-phonon -no-phonon-backend \
                   -no-svg -no-webkit -no-javascript-jit -no-scripttools -no-dbus -no-sql-sqlite -no-sql-psql -no-sql-mysql \
                   -no-libtiff -no-libmng -no-gstreamer -no-audio-backend -no-gtkstyle \
                   -reduce-relocations -reduce-exports -force-pkg-config -glib -qt-zlib -system-freetype -qt-kbd-linuxinput \
                   -prefix ${prefix} -datadir ${libdir}/qmake-webos \
                   -xplatform qws/linux-cedartrail-g++ -no-neon -no-rpath -DQT_QWS_CLIENTBLIT -DQT_NO_DYNAMIC_CAST -DPALM_DEVICE -DMESA_EGL_NO_X11_HEADERS \
                   -qt-mouse-pc -qt-mouse-qvfb -qt-mouse-linuxinput \
                   -plugin-gfx-directfb -plugin-gfx-powervr -plugin-gfx-egl -opengl es2 \
                   -make 'libs' \
                   -qconfig palm"
do_install_append() {
    oe_libinstall -C ${PALM_BUILD_DIR}/plugins/platforms -so libqpalm ${D}/${libdir}
}
PACKAGES =+ "${PN}-support"
FILES_${PN}-support = "${libdir}/libqpalm.so"
RDEPENDS_${PN} += "${PN}-support"