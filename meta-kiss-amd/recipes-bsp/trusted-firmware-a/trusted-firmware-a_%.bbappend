FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append:zynqmp = " \
    file://0002-Revert-feat-zynqmp-enable-ENABLE_LTO-flag.patch \
"

COMPATIBLE_MACHINE:zynqmp = "^zynqmp$"
