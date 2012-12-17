DEPENDS += "libdrm expat udev"
X11_DEPS += "dri2proto"

DRIDRIVERS = "swrast"
DRIDRIVERS_append_x86 = ",i915,i965"
DRIDRIVERS_append_x86-64 = ",i915,i965"

EXTRA_OECONF += "--disable-gallium --without-gallium-drivers"
EXTRA_OECONF += "--enable-dri --with-dri-drivers=${DRIDRIVERS}"
EXTRA_OECONF += "--enable-gbm"
EXTRA_OECONF += "--enable-gles1 --enable-gles2  --enable-gles3"
EXTRA_OECONF += "--enable-egl --with-egl-platforms=wayland,drm,fbdev,x11"
EXTRA_OECONF += "--disable-glx"
#PACKAGECONFIG[gles] = "--enable-gles1 --enable-gles2, --disable-gles1 --disable-gles2"

#EGL_PLATFORMS  = "drm"
#EGL_PLATFORMS  += "${@base_contains('DISTRO_FEATURES', 'x11', ',x11', '', d)}"
#PACKAGECONFIG[egl] = "--enable-egl --with-egl-platforms=${EGL_PLATFORMS}, --disable-egl"

FILES_${PN}-dbg += "${libdir}/dri/.debug/*"

