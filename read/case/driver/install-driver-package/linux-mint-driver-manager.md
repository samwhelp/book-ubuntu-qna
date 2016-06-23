---
layout: page
title: Linux Mint環境，探索套件「driver-manager」
description: >
  Linux Mint環境，探索套件「driver-manager」。
parent:
  title: 透過安裝驅動程式套件的方式，來安裝驅動程式
  url: /read/case/driver/install-driver-package
---


## 原始討論

* 原始討論「[回覆: linux mint 安裝顯示卡問題](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=353068#forumpost353068)」


## 回覆內容

先說聲抱歉，我沒意識到樓主問的是「Linux Mint」，
而且一直以為「Linux Mint」用的是一樣的程式

我剛測了一下，上面那個圖的程式，非我上面「[回覆](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=353058#forumpost353058)」說的那個程式，先釐清一下。


## 測試環境

* Linux Mint 17.3 (Mate)

## 測試步驟

先從開始功能表，將那個程式啟動

然後執行

``` sh
$ ps aux | grep driver
```

顯示

```
user      2431  0.0  0.5  24964  5764 ?        S    17:52   0:00 /usr/bin/python /usr/bin/driver-manager
user      2432  0.0  0.0   4448   668 ?        S    17:52   0:00 sh -c gksu  --message "<b>Please enter your password to launch the driver manager</b>" /usr/lib/linuxmint/mintDrivers/mintDrivers.py
user      2433  0.1  1.6 474632 17068 ?        Sl   17:52   0:00 gksu --message <b>Please enter your password to launch the driver manager</b> /usr/lib/linuxmint/mintDrivers/mintDrivers.py
user      2682  0.0  0.2  12004  2368 pts/2    S+   17:59   0:00 grep --colour=auto driver
```


執行

``` sh
$ whereis driver-manager
```

顯示

```
driver-manager: /usr/bin/driver-manager /usr/bin/X11/driver-manager
```

執行

``` sh
$ dpkg -S /usr/bin/driver-manager
```

顯示

```
mintdrivers: /usr/bin/driver-manager
```

表示「/usr/bin/driver-manager」屬於「mintdrivers」這個套件。

執行下面指令，列出「mintdrivers」這個套件裝了那些檔案在系統。

``` sh
$ dpkg -L mintdrivers
```

顯示

```
/.
/usr
/usr/share
/usr/share/applications
/usr/share/applications/kde4
/usr/share/applications/kde4/mintdrivers.desktop
/usr/share/applications/mintdrivers.desktop
/usr/share/linuxmint
/usr/share/linuxmint/mintDrivers
/usr/share/linuxmint/mintDrivers/icons
/usr/share/linuxmint/mintDrivers/icons/broadcom.png
/usr/share/linuxmint/mintDrivers/icons/nvidia.png
/usr/share/linuxmint/mintDrivers/icons/ati.png
/usr/share/linuxmint/mintDrivers/icons/virtualbox.png
/usr/share/linuxmint/mintDrivers/icons/generic.png
/usr/share/pixmaps
/usr/share/pixmaps/mintdrivers.svg
/usr/share/icons
/usr/share/icons/hicolor
/usr/share/icons/hicolor/scalable
/usr/share/icons/hicolor/scalable/apps
/usr/share/icons/hicolor/scalable/apps/driver-manager.svg
/usr/share/icons/hicolor/48x48
/usr/share/icons/hicolor/48x48/apps
/usr/share/icons/hicolor/48x48/apps/driver-manager.png
/usr/share/doc
/usr/share/doc/mintdrivers
/usr/share/doc/mintdrivers/copyright
/usr/share/doc/mintdrivers/changelog.gz
/usr/bin
/usr/bin/driver-manager
/usr/lib
/usr/lib/linuxmint
/usr/lib/linuxmint/mintDrivers
/usr/lib/linuxmint/mintDrivers/mintDrivers.py
/usr/lib/linuxmint/mintDrivers/main.ui
/usr/bin/mintdrivers
```

執行

``` sh
$ cat /usr/share/applications/mintdrivers.desktop | grep Exec
```

顯示

```
Exec=driver-manager
```


執行

``` sh
$ ls -l /usr/bin/mintdrivers
```

顯示

```
lrwxrwxrwx 1 root root 14 Jun 10 16:58 /usr/bin/mintdrivers -> driver-manager
```

所以可以執行「mintdrivers」或是執行「driver-manager」，
就會出現該設定視窗(啟動開始會先詢問你密碼)。


## 小結

在「Linux Mint」，一樣有「ubuntu-drivers」這個指令可以執行，用法應該一樣。

也有「software-properties-gtk」這個指令可以執行，
不過這個指令就沒有「--open-tab」這個參數了，
可以閱讀「man software-properties-gtk」，
然後也不會有「額外的驅動程式」那個頁籤，可以直接執行看結果。


報告完畢

:-)
