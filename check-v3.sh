#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
python3 -m py_compile "$ROOT/config/includes.chroot/usr/bin/aurora-panel" "$ROOT/config/includes.chroot/usr/bin/aurora-control-center"
while IFS= read -r f; do bash -n "$f"; done < <(find "$ROOT/scripts" -type f -name '*.sh')
if grep -RInE 'TODO|placeholder|fake progress' "$ROOT/config/includes.chroot"; then
  echo 'Review placeholder-like content above.'
fi
echo 'Aurora V3 syntax checks passed (Python compilation and shell syntax).'
