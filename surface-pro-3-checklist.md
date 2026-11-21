# Surface Pro 3 hardware validation checklist

Test from live USB before installation. Results depend on device revision, firmware, and kernel.

- [ ] UEFI USB boot
- [ ] Intel graphics / native 2160x1440 display
- [ ] Touch input and multi-touch
- [ ] Surface Pen pressure/buttons (if present)
- [ ] Type Cover keyboard and touchpad
- [ ] Wi-Fi connection
- [ ] Bluetooth
- [ ] Speakers, headphone output, microphone
- [ ] Front and rear cameras
- [ ] Brightness keys and volume keys
- [ ] Battery status and charging
- [ ] Screen rotation / orientation sensor
- [ ] Suspend, resume, and sleep battery drain
- [ ] Mini DisplayPort external monitor
- [ ] USB ports

If any item fails, record the exact device, kernel version (`uname -r`), and logs (`journalctl -b`). Surface-specific kernels and firmware may improve compatibility, but should be added only after verifying their distribution support and package source.
