FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

PRINC := "${@int(PRINC) + 1}"

KERNEL_FEATURES_append_x86 += " cfg/smp.scc"

SRC_URI += "file://rock-standard.scc \
            file://rock.scc \
            file://rock.cfg \
            file://user-config.cfg \
            file://user-patches.scc \
           "
