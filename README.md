# Tauri AppImage to Flatpak

This is my learnings of trying to get a appimage to flatpak with tauri v1 working...

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

### system used

```
root@gamer:~/flatpak-tauri/app# cargo tauri info

[✔] Environment
    - OS: Ubuntu 20.4.0 X64
    ✔ webkit2gtk-4.0: 2.38.6
    ✔ rsvg2: 2.48.9
    ✔ rustc: 1.80.0 (051478957 2024-07-21)
    ✔ cargo: 1.80.0 (376290515 2024-07-16)
    ✔ rustup: 1.27.1 (54dd3d00f 2024-04-24)
    ✔ Rust toolchain: stable-x86_64-unknown-linux-gnu (environment override by RUSTUP_TOOLCHAIN)
    - node: 20.16.0
    - pnpm: 9.6.0
    - yarn: 1.22.19
    - npm: 10.8.1

[-] Packages
    - tauri [RUST]: 1.7.1
    - tauri-build [RUST]: 1.5.3
    - wry [RUST]: 0.24.10
    - tao [RUST]: 0.16.9
    - tauri-cli [RUST]: 1.6.0
    - @tauri-apps/api [NPM]: 1.6.0
    - @tauri-apps/cli [NPM]: 1.6.0

[-] App
    - build-type: bundle
    - CSP: unset
    - distDir: ../dist
    - devPath: http://localhost:1420/
    - framework: React
    - bundler: Vite
```