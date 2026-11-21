# USB boot and install notes

1. Build the ISO on a Debian/Ubuntu Linux machine with the required tools.
2. Boot-test the ISO in a UEFI VM first. Use a disposable virtual disk for installer testing.
3. Use Rufus or Etcher to write `aurora-surfacepro3.iso` to an 8 GB or larger USB drive. Writing erases the USB.
4. On Surface Pro 3, hold Volume Up while pressing Power to enter UEFI setup; check USB boot settings. Firmware menu behavior can vary.
5. Hold Volume Down while pressing Power to boot from USB (typical Surface boot shortcut).
6. Select live mode and test hardware. Do not install until you have backups.
7. If using Calamares, verify installer presence and configuration before starting. This initial project is not a validated disk installer; installation/partitioning needs testing and review.
