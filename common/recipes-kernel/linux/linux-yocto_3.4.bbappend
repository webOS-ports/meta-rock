FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
PR := "${PR}.1"

KERNEL_FEATURES_append_x86 += " cfg/smp.scc"

SRC_URI += "file://rock.scc \
            file://rock.cfg \
            file://user-config.cfg \
            file://user-patches.scc \
           "
KERNEL_FEATURES_append += "cfg/efi-ext.scc cfg/efi.scc"
SRC_URI += "${@base_conditional('TARGET_ARCH', 'i586', 'file://rock-standard-32.scc', 'file://rock-standard-64.scc', d)}"

