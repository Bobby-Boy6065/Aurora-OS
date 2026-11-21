#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"
if [[ $EUID -ne 0 ]]; then echo "Run with sudo: sudo $0" >&2; exit 1; fi
if ! command -v lb >/dev/null 2>&1; then echo "Missing live-build. Install it first: sudo apt install live-build" >&2; exit 1; fi
mkdir -p build
rm -f "$ROOT/build/aurora-surfacepro3.iso"
# live-build configuration is set here to keep the project reproducible.
lb config \
  --distribution trixie \
  --architectures amd64 \
  --archive-areas "main contrib non-free non-free-firmware" \
  --binary-images iso-hybrid \
  --bootloaders grub-efi \
  --debian-installer false \
  --mirror-bootstrap http://deb.debian.org/debian/ \
  --mirror-chroot http://deb.debian.org/debian/ \
  --mirror-chroot-security http://security.debian.org/debian-security/ \
  --mirror-binary http://deb.debian.org/debian/ \
  --mirror-binary-security http://security.debian.org/debian-security/
lb build
ISO=$(find "$ROOT" -maxdepth 1 -type f -name '*.iso' -print -quit || true)
if [[ -n "$ISO" ]]; then cp "$ISO" "$ROOT/build/aurora-surfacepro3.iso"; echo "ISO created: $ROOT/build/aurora-surfacepro3.iso"; else echo "Build completed but ISO was not located automatically. Inspect live-build output." >&2; fi
