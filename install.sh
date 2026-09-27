#!/data/data/com.termux/files/usr/bin/bash
# install.sh — Install OpenCode on Termux (Android ARM64) via TUR repo
# Usage: curl -fsSL https://raw.githubusercontent.com/walidrbh2000-maker/opencode-termux/main/install.sh | bash
set -euo pipefail

echo "==> [1/3] Adding TUR repository..."
pkg install -y tur-repo 2>/dev/null || true

echo "==> [2/3] Installing opencode..."
pkg update -y
pkg install -y opencode

echo "==> [3/3] Verifying..."
opencode --version

echo ""
echo "✅ OpenCode installed. Run: opencode"
echo "   (Optional compat tools: pkg install glibc-runner)"
