#!/bin/bash

url="https://raw.githubusercontent.com/webp1e/dkill/main/dkill"
insp="/usr/local/bin/dkill"
insp2="/home/$USER/.local/bin/dkill"

echo "DKILL installer"
echo "==============="

# скач
echo -n "скачивание... "
if curl -fsSL "$url" -o "$insp" 2>/dev/null || \
   sudo curl -fsSL "$url" -o "$insp" 2>/dev/null; then
    echo "OK"
else
    echo "ошибка скачивания"
    exit 1
fi

# права
echo -n "выдача прав... "
chmod +x "$insp" 2>/dev/null || sudo chmod +x "$insp"
echo "OK"

# скач2

echo -n "скачивание... "
if curl -fsSL "$url" -o "$insp2" 2>/dev/null || \
   sudo curl -fsSL "$url" -o "$insp2" 2>/dev/null; then
    echo "OK"
else
    echo "ошибка скачивания"
    exit 1
fi

# права2
echo -n "выдача прав... "
chmod +x "$insp2" 2>/dev/null || sudo chmod +x "$insp2"
echo "OK"

echo "установка завершена"
