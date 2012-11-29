FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

PR := "${PR}.2"

COMPATIBLE_MACHINE_slate = "slate"

KBRANCH_slate  = "standard/default/common-pc/sugarbay"

KMACHINE_slate  = "slate"

KERNEL_FEATURES_append_slate += " features/iwlwifi"

SRC_URI += " file://slate.scc \
             file://slate.cfg"

SRCREV_machine_pn-linux-yocto_sugarbay ?= "${AUTOREV}"
SRCREV_meta_pn-linux-yocto_sugarbay ?= "${AUTOREV}"
