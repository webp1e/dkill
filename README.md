# dkill
простой сканер dns уязвимостей написанный на bash

для установки установите 
sudo pacman -S bind-tools

зайдите в директорию с файлом
а после введите следующее
```mv dkill .local/bin/```
```sudo chmod +x .local/bin/dkill```

готово! вы установили dkill

как запустить?
введите следующее
dkill {dns сервера} {домен сервера}

пример
```dkill 8.8.8.8 example.org```
