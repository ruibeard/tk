#!/bin/sh
set -eu

BIN_DIR="${HOME}/.local/bin"
TK_URL="${TK_URL:-https://raw.githubusercontent.com/ruibeard/tk/main/tk}"
TARGET="${BIN_DIR}/tk"
ZSHRC="${HOME}/.zshrc"
PATH_LINE='export PATH="$HOME/.local/bin:$PATH"'

mkdir -p "$BIN_DIR"
curl -fsSL "$TK_URL" -o "$TARGET"
chmod +x "$TARGET"

if [ -f "$ZSHRC" ]; then
    grep -Fqx "$PATH_LINE" "$ZSHRC" || printf '\n%s\n' "$PATH_LINE" >> "$ZSHRC"
else
    printf '%s\n' "$PATH_LINE" > "$ZSHRC"
fi

printf 'Installed tk to %s\n' "$TARGET"
printf 'Open a new shell, then run: tk .\n'
