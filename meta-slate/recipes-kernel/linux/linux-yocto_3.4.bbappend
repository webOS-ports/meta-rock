FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

PR := "${PR}.2"

COMPATIBLE_MACHINE_slate = "slate"

KBRANCH_slate  = "${@base_conditional('TARGET_ARCH', 'i586', 'standard/default/common-pc-64/sugarbay', 'standard/default/common-pc/sugarbay', d)}"

KMACHINE_slate  = "slate"

KERNEL_FEATURES_append_slate += " features/iwlwifi"

SRC_URI += " file://slate.scc \
             file://slate.cfg \
           "
SRC_URI += "${@base_conditional('TARGET_ARCH', 'i586', '', 'file://32bit.cfg', d)}"

SRCREV_machine_pn-linux-yocto_sugarbay ?= "${AUTOREV}"
SRCREV_meta_pn-linux-yocto_sugarbay ?= "${AUTOREV}"
