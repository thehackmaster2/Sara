#!/data/data/com.termux/files/usr/bin/bash

# Update and install packages
pkg update -y && pkg upgrade -y
pkg install aapt wget python python-pip zipalign imagemagick openjdk-17 -y

# Install Pillow (Python library)
pip install Pillow

# Download and set up Apktool
wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool
wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.8.1.jar

# Move Apktool to Termux's $PREFIX/bin (no sudo needed)
mv apktool $PREFIX/bin/apktool && chmod +x $PREFIX/bin/apktool
mv apktool_2.8.1.jar $PREFIX/bin/apktool.jar && chmod +x $PREFIX/bin/apktool.jar

# Verify installation
echo "Installation complete!"
apktool --version