#!/bin/bash

modules_url="http://sourceforge.net/projects/chromeeos/files/profiles/devices/chromeos_laptop/chromeos_laptop-modules-3.13.tar.gz/download"
modules_archives="chromeos_laptop-modules.tar.gz"

echo "Downloading ChromeOS laptop modules for kernel 3.13..."
curl -o "$modules_archives" -L -O "$modules_url"

echo "Extracting ChromeOS laptop modules..."
tar -xvf $modules_archives

echo "Installing ChromeOS laptop modules..."
cd chromeos_laptop/
sudo cp -f chromeos_laptop.ko /lib/modules/3.13.0-30-generic/kernel/drivers/platform/chrome/
sudo cp -f i2c-designware*.ko /lib/modules/3.13.0-30-generic/kernel/drivers/i2c/

echo "ChromeOS laptop modules installation finished..."
exit 0
