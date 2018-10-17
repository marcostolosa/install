#!/bin/bash

rm -Rf /opt/telegram*
rm -Rf /usr/bin/telegram
rm -Rf /usr/share/applications/telegram.desktop

wget "https://telegram.org/dl/desktop/linux" -O telegram.tar.xz
tar Jxf telegram.tar.xz -C /opt/
mv /opt/Telegram*/ /opt/telegram
ln -sf /opt/telegram/Telegram /usr/bin/telegram
echo -e '[Desktop Entry]\n Version=1.0\n Exec=/opt/telegram/Telegram\n Icon=Telegram\n Type=Application\n Categories=Application;Network;' | sudo tee /usr/share/applications/telegram.desktop

chmod +x /usr/share/applications/telegram.desktop
cp /usr/share/applications/telegram.desktop ~/Desktop
