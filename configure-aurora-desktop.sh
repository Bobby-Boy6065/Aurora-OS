#!/usr/bin/env bash
# Optional post-install customization for XFCE users. Run as the logged-in desktop user.
set -euo pipefail
WALL=/usr/share/aurora/aurora-wallpaper.svg
command -v xfconf-query >/dev/null || { echo 'Install XFCE first.' >&2; exit 1; }
# XFCE desktop wallpaper settings (per workspace; harmless if property absent).
for property in /backdrop/screen0/monitor0/workspace0/last-image /backdrop/screen0/monitor0/workspace1/last-image; do
  xfconf-query -c xfce4-desktop -p "$property" -n -t string -s "$WALL" 2>/dev/null || true
done
mkdir -p "$HOME/.config/autostart"
cp /etc/skel/.config/autostart/aurora-plank.desktop "$HOME/.config/autostart/" 2>/dev/null || true
cp /etc/skel/.config/autostart/aurora-picom.desktop "$HOME/.config/autostart/" 2>/dev/null || true
printf 'Aurora desktop settings applied. Log out and back in if needed.\n'
