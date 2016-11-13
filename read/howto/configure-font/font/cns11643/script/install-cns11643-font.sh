#!/usr/bin/env bash

# 手動安裝「全字庫字型(CNS11643)」
# http://data.gov.tw/node/5961
# http://data.gov.tw/node/gov/resource/27234
# http://www.cns11643.gov.tw/

## 確認「/usr/local/share/fonts/CNS11643」這個資料夾是否存在
if [ -a /usr/local/share/fonts/CNS11643 ]; then
	echo 'Directory exits: /usr/local/share/fonts/CNS11643'
	echo 'Please remove /usr/local/share/fonts/CNS11643 first!'
	echo '$ sudo rm /usr/local/share/fonts/CNS11643 -rf'
	exit;
fi

## 建立工作資料夾
mkdir ~/tmp -p
cd ~/tmp

## 下載
wget -c http://www.cns11643.gov.tw/AIDB/Open_Data.zip

## 刪除資料夾「Open_Data」和「cns11643」 (若有的話)
rm ./Open_Data -rf
rm ./CNS11643 -rf

## 解壓縮
unzip -O big5 Open_Data.zip

## 更名「Fonts資料夾」
mv Open_Data/Fonts ./CNS11643

## 移到「系統資料夾」
sudo mv CNS11643 /usr/local/share/fonts/

## 更改「Owner」和「Group」
sudo chown root:staff /usr/local/share/fonts/CNS11643 -R

## 更改「檔案權限」
sudo chmod 644 /usr/local/share/fonts/CNS11643/*

## 更改「資料夾權限」
sudo chmod 755 /usr/local/share/fonts/CNS11643

## 更新「字型暫存資料」(安裝字型)
sudo fc-cache -fv
