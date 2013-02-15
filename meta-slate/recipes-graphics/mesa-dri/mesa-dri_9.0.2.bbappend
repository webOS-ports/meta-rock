DEPENDS_append_slate =" wayland"
PRINC := "${@int(PRINC) + 1}"
EXTRA_OECONF = "--disable-glu \
                --disable-glw \
                --disable-glut \
                --enable-shared-glapi"
EXTRA_OECONF += "--enable-gallium --enable-gallium-egl"
EXTRA_OECONF += "--enable-dri --with-dri-drivers=${DRIDRIVERS} --enable-openvg"
EXTRA_OECONF += "--enable-gbm"
EXTRA_OECONF += "--enable-gles1 --enable-gles2 --enable-gles3"
EXTRA_OECONF += "--enable-egl --with-egl-platforms=drm,wayland,fbdev"
FILES_libgles3-mesa = "${libdir}/libGLESv3.so.*"
IMAGE_INSTALL_append_slate +=" mesa-dri-driver-* libgles3-mesa libgles2-mesa"