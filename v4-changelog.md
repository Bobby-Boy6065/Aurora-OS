# Aurora OS V4 changelog

- Reused the V3 project files as the starting point; this is a continuation, not a rewrite.
- Added GTK3 searchable full-screen launcher and desktop entry.
- Added GTK3 appearance settings with dark/light theme actions, wallpaper action, and tablet-mode controls.
- Added theme and touch-mode command helpers.
- Integrated launcher/theme/tablet shortcuts into the Aurora top-panel menu.
- Configured LightDM GTK Greeter to use the Aurora wallpaper and Arc Dark theme.
- Added V4 source checks, build/test documentation, and capability/limitation notes.

## Validation
`check-v4.sh` verifies Python source syntax, shell syntax, and desktop-entry parsing. It does not validate package availability, build the ISO, test login/desktop behavior, or prove hardware compatibility.
