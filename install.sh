#!/bin/bash

echo 'Установка тем'
aurman -S osx-arc-shadow xcursor-breeze-serie-obsidian papirus-maia-icon-theme-git --noconfirm

echo 'Качаем и устанавливаем настройки Xfce'
cd ~
wget https://github.com/archroot/theme_installer_for_xfce/raw/master/files/.config.tar.gz
tar -xzf .config.tar.gz -C ~

echo 'Ставим лого ArchLinux в меню'
wget https://github.com/archroot/theme_installer_for_xfce/raw/master/files/archlinux_logo.png
sudo mv -f ~/archlinux_logo.png /usr/share/pixmaps/archlinux_logo.png

echo 'Ставим обои на рабочий стол'
wget https://github.com/archroot/theme_installer_for_xfce/raw/master/files/Deepin_Linux_Manjaro.jpg
sudo mv -f ~/Deepin_Linux_Manjaro.jpg /usr/share/backgrounds/xfce/

echo 'Установка завершена!'
rm -rf ~/install.sh
rm -rf ~/.config.tar.gz

echo 'Выход без сохранения сеанса!'
xfce4-session-logout -f -l
