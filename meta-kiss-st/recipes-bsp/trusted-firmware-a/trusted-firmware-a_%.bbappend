COMPATIBLE_MACHINE:stompduck = "^stompduck$"

# trusted-firmware-a can depend on "u-boot", we have "u-boot-kiss"
# Here the dependency is only needed for stompduck.
DEPENDS:append:stompduck = " virtual/bootloader optee-os"

FILES:${PN} += "${FIRMWARE_DIR}/tf-a-stm32mp157a-dk1.stm32"
