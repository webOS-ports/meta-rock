FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

PRINC := "${@int(PRINC) + 1}"

COMPATIBLE_MACHINE_slate = "slate"

KBRANCH_slate  = "standard/common-pc-64/sugarbay"
KMACHINE_slate  = "sugarbay"

KERNEL_FEATURES_append_slate += " features/iwlwifi"

SRC_URI += " file://slate.scc \
             file://slate.cfg \
             file://0001-lsm303dlh-Accelerometer-Kconfig-support.patch \
             file://0002-lsm303dlh-Accelerometer-Makefile-support.patch \
             file://0003-lsm303dlh-Accelerometer-driver-files.patch \
           "