# Tauri AppImage to Flatpak

This is my learnings of trying to get a appimage to flatpak with tauri v1 working...

## Status
currently it segfaults when starting the app:
```
[📦 com.test.Test ~]# /app/bin/test
/app/bin/test-wrapped: ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), statically linked, BuildID[sha1]=4e3572800bcf592883a92979b01cc49c9c0a2e4a, for GNU/Linux 3.2.0, stripped
Starting the test app...
Segmentation fault
```

## Setup

Build the tauri app
```
# in the app dir
pnpm i
pnpm tauri build
```

Start the flatpak build (will take ~1 hour to compile webkitgtk, subsquent runs will use `builddir` cache)
```
# in the com.test.Test dir
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