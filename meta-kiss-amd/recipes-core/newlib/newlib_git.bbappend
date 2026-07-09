FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
    file://0001-Modified-_exceptional_handler-Modified-the-_exceptio.patch \
    file://0002-Add-missing-declarations-for-xil_printf-to-stdio.h-f.patch \
    file://0003-deleting-the-xil_printf.c-file-as-now-it-part-of-BSP.patch \
    file://0004-deleting-the-xil_printf.o-from-MAKEFILE.patch \
    file://0005-MB-X-intial-commit.patch \
    file://0006-newlib-port-for-microblaze-m64-flag.patch \
    file://0007-fixing-the-bug-in-crt-files-added-addlik-instead-of-.patch \
    file://0008-Added-MB-64-support-to-strcmp-strcpy-strlen-files-Si.patch \
    file://0009-Removing-the-Assembly-implementation-of-64bit-string.patch \
    file://0010-Fixed-the-bug-in-crtinit.s-for-MB-64.patch \
    "

ERROR_QA:remove = "patch-status"

EXTRA_OECONF:append:xilinx-standalone = " \
    --disable-newlib-reent-check-verify \
"

do_configure:prepend() {
    export CC="${CC} -L${S}/libgloss/microblaze"
}
