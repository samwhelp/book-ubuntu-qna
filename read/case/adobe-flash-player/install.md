---
layout: page
title: 有關 Adobe Flash Player 的套件
parent:
  title: 安裝 Adobe Flash Player
  url: '/read/case/adobe-flash-player'
description: >
  Ubuntu環境，有關 Adobe Flash Player 的套件。
  介紹如何安裝，和簡易的套件探索提示。
---

## 原始討論

原始討論「[回覆: opera 36 如何安裝 adobe flash player](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=351832#forumpost351832)」。


## 回覆內容


以下測試是在「Xubuntu 14.04 64位元」，
關於「32位元」我就沒測試了，請自行測試吧。

===========================================

目前我知道的套件有下面三個

* [flashplugin-installer](http://packages.ubuntu.com/trusty/flashplugin-installer)
* [pepperflashplugin-nonfree](http://packages.ubuntu.com/trusty/pepperflashplugin-nonfree)
* adobe-flashplugin

===========================================

## flashplugin-installer

* 安裝指令:

``` sh
$ sudo apt-get install flashplugin-installer
```

* 對「[firefox](http://packages.ubuntu.com/trusty/firefox)」有效
* 在安裝這個套件的時候，透過「[MaintainerScripts](https://wiki.debian.org/MaintainerScripts)」，下載「flash」到相關的位置，
* 可以研究「/var/lib/dpkg/info/flashplugin-installer.postinst」和「/usr/lib/flashplugin-installer/install_plugin」的內容。
* 「/usr/share/package-data-downloads/flashplugin-installer 」


===========================================

## pepperflashplugin-nonfree

* 安裝指令:

``` sh
$ sudo apt-get install update-pepperflashplugin-nonfree
```

* 對「[chromium](http://packages.ubuntu.com/trusty/chromium-browser)」有效，對「opera 36」也有效，因為核心好像也是chrome系的。
* 我觀察到他是下載「Google Chrome」的「deb檔」下來，然後解開，把flash抽出來，放到相關的位置。
* 可以研究「/var/lib/dpkg/info/pepperflashplugin-nonfree.postinst」和「/usr/sbin/update-pepperflashplugin-nonfree」的內容。
* 注意：目前「chrome」已經不提供linux 32位元的版本了。

===========================================

## adobe-flashplugin

可以參考「Ubuntu Wiki / [Getting-Flash](https://wiki.ubuntu.com/Chromium/Getting-Flash)」這一頁的說明

必須要先把「'partner' repository」的來源加進來

編輯「/etc/apt/sources.list」找「partner」，應該可以到兩行，一個是「deb」開頭的，一個是「deb-src」開頭的。
把「deb」開頭的反註解。這一段在「GUI」程式也可以操作，[請自行研究](https://wiki.ubuntu.com/Chromium/Getting-Partner-Flash)。

然後執行「sudo apt-get update」，更新套件資訊。

接著就可以執行

``` sh
$ sudo apt-get install adobe-flashplugin
```

這個就不是在透過「script」下載，這個套件本身就包含「flash plugin」了。

可以執行「dpgk -L adobe-flashplugin」，觀看「adobe-flashplugin」安裝什麼檔案在系統上，可以看到很多路徑。

也可以研究「/var/lib/dpkg/info/adobe-flashplugin.postinst」的內容。

這個套件測試的結果，對「firefox」「chromium」「opera 36」都有效。

===========================================

## 測試

裝完後可以到下面網址看偵測結果，可以看到flash安裝的版本

* [https://www.adobe.com/tw/software/flash/about/](https://www.adobe.com/tw/software/flash/about/)
* [https://www.adobe.com/software/flash/about/](https://www.adobe.com/software/flash/about/)

===========================================

## 更多參考

之前我在這篇「[回覆: Browser Vivaldi stable_1.0.435.38-1 Release](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=351222#forumpost351222)」，有做簡單的紀錄。

探索套件的方法，請到這個「[索引](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=333562#forumpost333562)」，裡面有列了很多案例可以參考。

===========================================
