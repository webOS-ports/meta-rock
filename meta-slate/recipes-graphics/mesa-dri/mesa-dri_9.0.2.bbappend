DEPENDS_append_slate =" wayland"
PRINC := "${@int(PRINC) + 1}"
EXTRA_OECONF = "--disable-glu \
                --disable-glw \
                --disable-glut \
                --enable-shared-glapi"
EXTRA_OECONF += "--enable-gallium --enable-gallium-egl --with-gallium-drivers=i915"
EXTRA_OECONF += "--enable-dri --with-dri-drivers=${DRIDRIVERS} --enable-openvg"
EXTRA_OECONF += "--enable-gbm"
EXTRA_OECONF += "--enable-gles1 --enable-gles2 --enable-gles3"
EXTRA_OECONF += "--enable-egl --with-egl-platforms=drm,wayland,fbdev"
PACKAGES +=" libgles3-mesa libegl-gallium libgbm-gallium \
   mesa-pipe-i915 mesa-pipe-swrast \
   "
FILES_libgles3-mesa = "${libdir}/libGLESv3.so.*"
FILES_libegl-gallium = "${libdir}/egl/egl_gallium.so.*"
FILES_libgbm-gallium = "${libdir}/gbm/gbm_gallium_drm.so.*"
FILES_mesa-pipe-i915 = "${libdir}/gbm/pipe_i915.so.*"
FILES_mesa-pipe-swrast = "${libdir}/gbm/pipe_swrast.so.*"

IMAGE_INSTALL_append_slate +=" mesa-dri-driver-* libgles3-mesa libgles2-mesa mesa-pipe-i915 mesa-pipe-swrast libgbm-gallium libegl-gallium"