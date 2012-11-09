FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

PR := "${PR}.2"

COMPATIBLE_MACHINE_slate = "slate"

KBRANCH_slate  = "standard/default/common-pc/sugarbay"

KMACHINE_slate  = "slate"

KERNEL_FEATURES_append_slate += " features/iwlwifi"

SRC_URI += " file://slate.scc \
             file://slate.cfg"

SRCREV_machine_pn-linux-yocto_sugarbay ?= "6297e4c1d57e1063bfce297c2e12392348598559"
SRCREV_meta_pn-linux-yocto_sugarbay ?= "a8cf77018b0faa0d29f1483ff4e5a2034dc8edd5"
