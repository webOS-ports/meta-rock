DEFAULTTUNE ?= "corei7-avx"

require conf/machine/include/tune-core2.inc

# Extra tune features
TUNEVALID[corei7-avx] = "Enable corei7-avx specific processor optimizations"
TUNE_CCARGS += "${@bb.utils.contains("TUNE_FEATURES", "corei7-avx", "-march=corei7-avx -mavx -mtune=corei7-avx -mfpmath=sse", "", d)}"

# Extra tune selections
AVAILTUNES += "corei7-avx"
TUNE_FEATURES_tune-corei7-avx = "${TUNE_FEATURES_tune-x86} corei7-avx"
BASE_LIB_tune-corei7-avx = "lib"
TUNE_PKGARCH_tune-corei7-avx = "corei7-avx"
PACKAGE_EXTRA_ARCHS_tune-corei7-avx = "${PACKAGE_EXTRA_ARCHS_tune-x86} i386 i486 i586 i686 core2 corei7-avx"

AVAILTUNES += "corei7-avx-64"
TUNE_FEATURES_tune-corei7-avx-64 = "${TUNE_FEATURES_tune-x86-64} corei7-avx"
BASE_LIB_tune-corei7-avx-64 = "lib64"
TUNE_PKGARCH_tune-corei7-avx-64 = "core2_64"
PACKAGE_EXTRA_ARCHS_tune-corei7-avx-64 = "${PACKAGE_EXTRA_ARCHS_tune-x86-64} corei7-avx_64"

AVAILTUNES += "corei7-avx-64-x32"
TUNE_FEATURES_tune-corei7-avx-64-x32 = "${TUNE_FEATURES_tune-x86-64-x32} corei7-avx"
BASE_LIB_tune-corei7-avx-64-x32 = "libx32"
TUNE_PKGARCH_tune-corei7-avx-64-x32 = "core2_64_x32"
PACKAGE_EXTRA_ARCHS_tune-corei7-avx-64-x32 = "${PACKAGE_EXTRA_ARCHS_tune-x86-64-x32} corei7-avx_64_x32"
