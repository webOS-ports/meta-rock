FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
DEPENDS_x86+="git-replacement-native"
PR := "${PR}.1"

KERNEL_FEATURES_append_x86 += " cfg/smp.scc"

SRC_URI += "file://rock.scc \
            file://rock.cfg \
            file://user-config.cfg \
            file://user-patches.scc \
           "
SRC_URI += "${@base_conditional('TARGET_ARCH', 'i586', 'file://rock-standard-32.scc', 'file://rock-standard-64.scc', d)}"
SRCREV_machine_pn-linux-yocto_sugarbay ?= "${AUTOREV}"
SRCREV_meta_pn-linux-yocto_sugarbay ?= "${AUTOREV}"
