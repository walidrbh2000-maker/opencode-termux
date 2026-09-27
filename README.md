# OpenCode on Termux (Android ARM64)

One-command installer for [OpenCode](https://opencode.ai) on Termux, via the TUR package repository (maintainer: `Hope2333`).

## Install

```bash
pkg install -y git
git clone https://github.com/walidrbh2000-maker/opencode-termux
cd opencode-termux
bash install.sh
```

Or fully non-interactive:

```bash
curl -fsSL https://raw.githubusercontent.com/walidrbh2000-maker/opencode-termux/main/install.sh | bash
```

Then:

```bash
opencode   # configure your provider on first run
```

## What it does

1. Adds the TUR repo (`tur-repo`: `https://tur.kcubeterm.com`)
2. `pkg install opencode` — NDK-built `aarch64` binary + `libstatx-shim.so` (works around Android seccomp blocking `statx()`)
3. Verifies with `opencode --version`

## Update / uninstall

```bash
pkg upgrade opencode      # update
pkg uninstall opencode    # remove
```

## Requirements

- Termux on Android, `aarch64` (`uname -m`)
- Internet

## License

MIT
