SUMMARY = "A free implementation of the OpenGL API"
DESCRIPTION = "Mesa is an open-source implementation of the OpenGL specification - \
a system for rendering interactive 3D graphics.  \
A variety of device drivers allows Mesa to be used in many different environments \
ranging from software emulation to complete hardware acceleration for modern GPUs. \
Mesa is used as part of the overall Direct Rendering Infrastructure and X.org \
environment."

HOMEPAGE = "http://mesa3d.org"
BUGTRACKER = "https://bugs.freedesktop.org"
SECTION = "x11"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://docs/license.html;md5=03ccdc4c379c4289aecfb8892c546f67"

INC_PR = "r3"
PE = "2"

DEPENDS = "libxml2-native makedepend-native flex-native bison-native libdrm"

PROVIDES = "virtual/libgl virtual/libgles1 virtual/libgles2 virtual/egl"

# for mesa-dri and mesa-xlib
FILESEXTRAPATHS_append := "${THISDIR}/mesa:"

inherit autotools pkgconfig pythonnative

EXTRA_OECONF = "--with-egl-platforms=drm --with-dri-drivers="i915,swrast" --enable-shared-glapi \
                --enable-gles1 --enable-gles2 \
                --disable-glw  \
                --disable-glut --disable-gallium --without-gallium-drivers --disable-glx"

# Multiple virtual/gl providers being built breaks staging
EXCLUDE_FROM_WORLD = "1"

# ie mesa-dri could be empty and mesa-dri-dev RDEPENDS on it
ALLOW_EMPTY_${PN} = "1"

PACKAGES =+ "libegl libdri libegl-dev libegl-dbg \
             libglu libglu-dev \
             libosmesa libosmesa-dev \
             libgl libgl-dev \
             libglapi libglapi-dev \
             libgbm libgbm-dev \
             libgles1 libgles1-dev \
             libgles2 libgles2-dev \
            "

FILES_libegl = "${libdir}/libEGL.so.* ${libdir}/egl/*.so"
FILES_libgbm = "${libdir}/libgbm.so.*"
FILES_libgles1 = "${libdir}/libGLESv1*.so.*"
FILES_libgles2 = "${libdir}/libGLESv2.so.*"
FILES_libgl = "${libdir}/libGL.so.*"
FILES_libglapi = "${libdir}/libglapi.so.*"
FILES_libglu = "${libdir}/libGLU.so.*"
FILES_libosmesa = "${libdir}/libOSMesa.so.*"
FILES_libdri = "${libdir}/dri/*.so"

FILES_libegl-dev = "${libdir}/libEGL.* ${includedir}/EGL ${includedir}/KHR ${libdir}/pkgconfig/egl.pc"
FILES_libgbm-dev = "${libdir}/libgbm* ${libdir}/pkgconfig/gbm.pc ${includedir}/gbm.h"
FILES_libgl-dev = "${libdir}/libGL.* ${includedir}/GL ${libdir}/pkgconfig/gl.pc"
FILES_libglapi-dev = "${libdir}/libglapi.*"
FILES_libgles1-dev = "${libdir}/libGLESv1*.* ${includedir}/GLES ${libdir}/pkgconfig/glesv1*.pc"
FILES_libgles2-dev = "${libdir}/libGLESv2.* ${includedir}/GLES2 ${libdir}/pkgconfig/glesv2.pc"
FILES_libglu-dev = "${libdir}/libGLU.* ${includedir}/GL/glu*.h ${libdir}/pkgconfig/glu.pc"
FILES_libosmesa-dev = "${libdir}/libOSMesa.* ${includedir}/osmesa.h"

FILES_${PN}-dbg += "${libdir}/dri/.debug/*"
FILES_libegl-dbg += "${libdir}/egl/.debug/*"
DEPENDS += "mesa-dri-glsl-native"

SRC_URI = "ftp://ftp.freedesktop.org/pub/mesa/${PV}/MesaLib-${PV}.tar.bz2 \
           file://0001-Compile-with-uclibc.patch \
           file://0002-cross-compile.patch \
           file://0003-fix-for-x32.patch \
           file://no-x11-headers.patch \
           "
SRC_URI += "${@base_contains('DISTRO_FEATURES', 'x11-gl', '', 'file://0004-gross-hack-to-prevent-from-install-libgl.patch', d)}"

S = "${WORKDIR}/Mesa-${PV}"

SRC_URI[md5sum] = "d546f988adfdf986cff45b1efa2d8a46"
SRC_URI[sha256sum] = "02ed19f4f5f6535dda03a9932a81438aa78ea723ebba1f39a3d49a70a4e1d07e"

do_configure_prepend() {
  export WANT_LLVM_RELEASE=2.9
  export MESA_EGL_NO_X11_HEADERS=true
  echo `which llvm-config` 
  #check for python not python2, because python-native does not stage python2 binary/link
  sed -i 's/AC_CHECK_PROGS(\[PYTHON2\], \[python2 python\])/AC_CHECK_PROGS(\[PYTHON2\], \[python python\])/g' ${S}/configure.ac
  # We need builtin_compiler built for buildhost arch instead of target (is provided by mesa-dri-glsl-native)"
  sed -i "s#\./builtin_compiler#${STAGING_BINDIR_NATIVE}/glsl/builtin_compiler#g" ${S}/src/glsl/Makefile
}
FILES_${PN}-dbg += "${libdir}/dri/.debug/*"

PR = "${INC_PR}.1"
