FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

PRINC := "${@int(PRINC) + 1}"

COMPATIBLE_MACHINE_slate = "slate"
COMPATIBLE_MACHINE_slate-64 = "slate"


KBRANCH_slate  = "${@base_conditional('TARGET_ARCH', 'i586', 'standard/base', 'standard/common-pc-64/sugarbay', d)}"
KBRANCH_slate-64  = "${@base_conditional('TARGET_ARCH', 'i586', 'standard/base', 'standard/common-pc-64/sugarbay', d)}"

KMACHINE_slate  = "common-pc"
KMACHINE_slate-64  = "sugarbay"

KERNEL_FEATURES_append_slate += " features/iwlwifi"
KERNEL_FEATURES_append_slate-64 += " features/iwlwifi"

SRC_URI += " file://slate.scc \
             file://slate.cfg \
             file://0001-lsm303dlh-Accelerometer-Kconfig-support.patch \
             file://0002-lsm303dlh-Accelerometer-Makefile-support.patch \
             file://0003-lsm303dlh-Accelerometer-driver-files.patch \
           "
SRC_URI += "${@base_conditional('TARGET_ARCH', 'i586', 'file://32bit.cfg', '', d)}"
