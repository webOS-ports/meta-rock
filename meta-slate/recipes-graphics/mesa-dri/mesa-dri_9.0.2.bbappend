#export WANT_LLVM_RELEASE="2.9"
DEPENDS_append_slate =" wayland"
PRINC := "${@int(PRINC) + 1}"
EXTRA_OECONF_slate = "--disable-glu \
                --disable-glw \
                --disable-glut \
                --enable-shared-glapi \
                --enable-gallium --enable-gallium-egl --with-gallium-drivers=i915 \
                --enable-dri --with-dri-drivers=${DRIDRIVERS} --enable-openvg \
                --enable-gbm \
                --enable-gles1 --enable-gles2 --enable-gles3 \
                --enable-egl --with-egl-platforms=drm,wayland,fbdev \
                "
PACKAGES +=" libegl-gallium libgbm-gallium mesa-pipe-i915 mesa-pipe-swrast"
FILES_libegl-gallium = "${libdir}/egl/egl_gallium.so*"
FILES_libgbm-gallium = "${libdir}/gbm/gbm_gallium_drm.so*"
FILES_mesa-pipe-i915 = "${libdir}/gbm/pipe_i915.so*"
FILES_mesa-pipe-swrast = "${libdir}/gbm/pipe_swrast.so*"

IMAGE_INSTALL_append_slate =" mesa-dri-driver-* libgles3-mesa libgles2-mesa mesa-pipe-i915 mesa-pipe-swrast libgbm-gallium libegl-gallium"