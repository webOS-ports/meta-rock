FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
PRINC := "${@int(PRINC) + 6}"
DEPENDS_append_slate +=" directfb tslib"
QT_CONFIG_FLAGS = "${QT4_MACHINE_CONFIG_ARCH_LITE_QPA} \
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