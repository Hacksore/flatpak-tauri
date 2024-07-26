# Tauri AppImage to Flatpak

This is my notes of trying to get a flatpak to appimage working...

## Setup

Build the tauri app
```
pnpm i
pnpm tauri build
```

Start the flatpak build
```
make
```

## Debugging the flatpak
https://docs.flatpak.org/en/latest/debugging.html
You can enter the shell via this command.
```
flatpak run --command=sh --devel com.test.Test
```