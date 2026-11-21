# Aurora OS V4 Build and Test

## Build prerequisites (Debian/Ubuntu host)

```bash
sudo apt update
sudo apt install live-build debootstrap xorriso squashfs-tools grub-efi-amd64-bin grub-pc-bin mtools dosfstools rsync
```

## Build ISO

From the extracted project root:

```bash
sudo ./scripts/build-iso.sh
```

This uses Debian live-build and downloads packages. Output ISO placement depends on live-build output; the build script attempts to copy the produced ISO into `build/aurora-surfacepro3.iso`.


## Source checks

```bash
./scripts/check-v4.sh
```

## Virtual-machine test (before hardware)
- Create an x86_64 VM with UEFI firmware.
- Assign at least 4 GB RAM, 2 CPU cores, and 40 GB virtual disk.
- Boot the ISO and test live desktop, launcher, apps, Wi-Fi UI, theme controls, and tablet toggle.
- Never install to or erase the Surface internal disk before live-session testing and backing up important files.


## Surface Pro 3 USB boot
1. Write the ISO to USB with Rufus or Etcher.
2. Shut down the Surface.
3. Hold Volume Down and press Power to boot from USB.
4. Test live-session features before installing.
5. Use installer only after confirming disk layout and backing up the device.

The V4 package is source-only and has not been built into an ISO or tested on physical Surface hardware.
