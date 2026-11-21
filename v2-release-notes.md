# Aurora OS V2 — desktop layer

V2 adds a more coherent desktop customization layer to the live-build project:

- Plank dock and Picom compositor autostart entries for XFCE sessions
- Aurora GTK appearance preference, Papirus icon theme, Noto Sans typography
- Original Aurora SVG wallpaper and app icon
- Aurora Control Center (GTK3 quick-launch panel for XFCE's real settings utilities)
- Welcome page and desktop launchers
- Package set expanded with dock, compositor, GTK runtime, and system utilities

## Status / limitations

This is a source-level project update. It has not been built into an ISO or tested on Surface hardware in this environment. XFCE and its settings utilities provide the underlying controls; the Aurora Control Center is a launcher, not a replacement settings backend. Dock/compositor behavior depends on graphics drivers and can be disabled if performance is poor. Installer safety, touch/pen, rotation, sleep, cameras, and battery reporting still require live hardware tests.
