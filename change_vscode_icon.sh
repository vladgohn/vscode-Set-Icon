#!/bin/bash

REPO_URL="https://raw.githubusercontent.com/vladgohn/vscode-Set-Icon/main"
ICON_URL="$REPO_URL/Icons/Code.icns"
ICON_PATH="$HOME/Icons/Code.icns"
APP_PATH="/Applications/Visual Studio Code.app"

# Создаем папку Icons, если ее еще нет
mkdir -p "$HOME/Icons"

# Скачиваем иконку
curl -L "$ICON_URL" -o "$ICON_PATH"

# Меняем иконку приложения
sudo sips -i "$ICON_PATH"
sudo DeRez -only icns "$ICON_PATH" > /tmp/tmpicns.rsrc
sudo Rez -append /tmp/tmpicns.rsrc -o "$APP_PATH"/Contents/Resources/appIcon.icns
sudo SetFile -a C "$APP_PATH"
sudo touch "$APP_PATH"

# Запускаем Visual Studio Code
open "$APP_PATH"
