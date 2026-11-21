#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
BIN="$ROOT/config/includes.chroot/usr/bin"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
python3 - "$BIN" "$TMP" <<'PY'
import pathlib,sys
src=pathlib.Path(sys.argv[1]); out=pathlib.Path(sys.argv[2])
files=[src/'aurora-panel',src/'aurora-control-center',src/'aurora-launcher',src/'aurora-appearance']
for f in files:
    compile(f.read_text(),str(f),'exec')
    print('Python syntax OK:',f.name)
PY
for script in "$BIN/aurora-theme-switch" "$BIN/aurora-tablet-mode" "$ROOT/scripts/build-iso.sh" "$ROOT/scripts/configure-aurora-desktop.sh"; do bash -n "$script"; echo "Shell syntax OK: $script"; done
python3 - "$ROOT/config/includes.chroot/usr/share/applications" <<'PY'
import configparser,pathlib,sys
p=pathlib.Path(sys.argv[1])
for f in sorted(p.glob('*.desktop')):
    c=configparser.ConfigParser(interpolation=None,strict=False)
    c.read(f,encoding='utf-8')
    if 'Desktop Entry' not in c: raise SystemExit(f'Invalid desktop entry: {f}')
    print('Desktop entry parsed:',f.name)
PY
printf 'Aurora V4 checks passed.\n'
