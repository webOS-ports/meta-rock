FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

PR := "${PR}.1"

KERNEL_FEATURES_append_x86 += " cfg/smp.scc"

SRC_URI += "file://rock-standard.scc \
            file://rock.scc \
            file://rock.cfg \
            file://user-config.cfg \
            file://user-patches.scc \
           "

SRCREV_machine_pn-linux-yocto_sugarbay ?= "6297e4c1d57e1063bfce297c2e12392348598559"
SRCREV_meta_pn-linux-yocto_sugarbay ?= "a8cf77018b0faa0d29f1483ff4e5a2034dc8edd5"
