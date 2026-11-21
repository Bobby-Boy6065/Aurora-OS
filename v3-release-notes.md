# Aurora OS V3 — Desktop Edition

V3 adds a GTK3 top bar with Aurora, Applications, Files, Store, Settings, Wi-Fi and Sound launchers, a clock, and quick links. It adds application launchers for Aurora Store and Aurora Applications, a V3 welcome guide, a GTK palette stylesheet, and a syntax-check script.


## What is functional
- Top bar opens common real system utilities and settings.
- Applications menu launches installed desktop applications.
- Store launches GNOME Software (repositories and Flatpak integration depend on setup/network configuration).
- Settings opens the project's existing Control Center.
- GTK scripts are syntax-checkable without building an ISO.

## Limitations
- Top bar currently is a simple GTK window, not a full compositor shell; window positioning/stacking can vary by XFCE and compositor.
- Menu entries launch commands; some commands may not be installed or enabled in the live image.
- GNOME Software is a package frontend, not a branded Aurora marketplace with curated catalog.
- No ISO build or physical Surface test has been performed in this environment.
