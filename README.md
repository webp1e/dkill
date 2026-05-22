# dkill
простой сканер dns уязвимостей написанный на bash

для запуска установите 
```sudo pacman -S bind-tools```

скачать инсталлер

```curl -O https://raw.githubusercontent.com/webp1e/dkill/main/installer.sh```

дать права и запустить
```chmod +x install.sh```
```./install.sh```

готово! вы установили dkill


как запустить?

введите следующее
dkill {dns сервера} {домен сервера}

пример
```dkill 8.8.8.8 example.org```
