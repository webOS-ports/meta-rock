PRINC := "${@int(PRINC) + 1}"
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_envy = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;bareclone=1;branch=${KBRANCH},meta,yocto/pvr;name=machine,meta,pvr"
COMPATIBLE_MACHINE_envy = "cedartrail"

KBRANCH_envy  = "yocto/standard/cedartrail"
KERNEL_FEATURES_append_envy += "bsp/cedartrail/cedartrail-pvr-merge.scc"
KERNEL_FEATURES_append_envy += "cfg/efi-ext.scc"

SRCREV_machine_pn-linux-yocto_envy ?= "1e79e03d115ed177882ab53909a4f3555e434833"
SRCREV_meta_pn-linux-yocto_envy ?= "bf5ee4945ee6d748e6abe16356f2357f76b5e2f0"
SRCREV_pvr_pn-linux-yocto_envy ?= "7828ab82533828b924dbfad5158e274a8bb04df3"



