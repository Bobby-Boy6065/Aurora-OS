# Aurora OS V4 — Desktop Experience Increment

## Added
- Full-screen GTK3 launcher (`aurora-launcher`) with app search, touch-friendly tiles, and Escape dismissal.
- V4 menu-bar integration for launcher, appearance presets, and tablet/desktop mode.
- Dark/light XFCE theme helper (`aurora-theme-switch dark|light`).
- Touch panel adjustment helper (`aurora-tablet-mode on|off`) with larger panel and auto-hide behavior.
- LightDM GTK greeter configuration using Aurora wallpaper and Arc Dark theme.
- Desktop launcher entry for Aurora Applications.
- Additional appearance, touch-keyboard, and window-management packages.

## Functional scope
- Launcher app tiles start real installed Linux programs. App list entries may need adjusting if a package is absent.
- Theme and tablet helpers call XFCE `xfconf-query` and are intended to run inside an XFCE user session.
- Login screen settings configure LightDM GTK Greeter. They do not create a custom authentication system.
- Existing XFCE/WM tools remain responsible for window movement, resizing, maximize, workspaces and Alt+Tab.

## Not yet implemented / unverified
- Custom Aurora compositor/window manager, proprietary-style dock magnification, live wallpaper engine, automatic touchscreen gesture service, automated tablet detection, graphical disk installer end-to-end validation, and a finished recovery environment.
- No ISO build, Surface Pro 3 hardware test, Secure Boot test, Wi-Fi test, pen test, or internal-disk installation was performed in this environment.
