FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

PR := "${PR}.1"

KERNEL_FEATURES_append_x86 += " cfg/smp.scc"

SRC_URI += "file://rock-standard.scc \
            file://rock.scc \
            file://rock.cfg \
            file://user-config.cfg \
            file://user-patches.scc \
           "

SRCREV_machine_pn-linux-yocto_sugarbay ?= "${AUTOREV}"
SRCREV_meta_pn-linux-yocto_sugarbay ?= "${AUTOREV}"
