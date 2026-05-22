#!/bin/bash

FILE_URL="https://raw.githubusercontent.com/webp1e/dkill/main/dkill"
INSTALL_PATH="/usr/local/bin/dkill"

echo "DKILL installer"
echo "==============="

# скач
echo -n "скачивание... "
if curl -fsSL "$FILE_URL" -o "$INSTALL_PATH" 2>/dev/null || \
   sudo curl -fsSL "$FILE_URL" -o "$INSTALL_PATH" 2>/dev/null; then
    echo "OK"
else
    echo "ошибка скачивания"
    exit 1
fi

# права
echo -n "выдача прав... "
chmod +x "$INSTALL_PATH" 2>/dev/null || sudo chmod +x "$INSTALL_PATH"
echo "OK"

echo "готово — запускай: dkill"