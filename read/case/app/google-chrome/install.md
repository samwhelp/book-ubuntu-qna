---
layout: page
title: 如何下指令安裝 Google Chrome
description: >
  Ubuntu環境，如何下載Deb檔，並且下指令安裝 Google Chrome。
parent:
  title: 安裝 Google Chrome
  url: /read/case/app/google-chrome
---

## 原始討論

原始討論「[回覆: ubuntu16.04 無法安裝 google chrome ？？](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=351720#forumpost351720)」。


## 回覆內容

改用下指令的方式，執行「sudo dpkg -i $deb_package」來安裝，例外發生時，可以看到提示訊息。

下載

``` sh
$ wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
```

安裝

``` sh
$ sudo dpkg -i google-chrome-stable_current_amd64.deb
```


我猜測，你這個情況，是某個相依的套件沒有事先安裝，所以導致發生例外了，

只要執行下面的指令，就可以幫你把相依的套件補齊了

``` sh
$ sudo apt-get install -f
```

若上面還不能解決，就執行下面的指令，讓安裝系統恢復可運作的狀態

``` sh
$ sudo apt-get remove chrome-chrome-stable
```

## 實際操作


我在「Xubuntu 16.04 amd64」全新安裝，尚未更新或是安裝新的套件的狀況下測試

====================================================


下載

``` sh
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
```

安裝

``` sh
$ sudo dpkg -i google-chrome-stable_current_amd64.deb
```

顯示

```
Selecting previously unselected package google-chrome-stable.
(Reading database ... 154656 files and directories currently installed.)
Preparing to unpack google-chrome-stable_current_amd64.deb ...
Unpacking google-chrome-stable (50.0.2661.86-1) ...
dpkg: dependency problems prevent configuration of google-chrome-stable:
 google-chrome-stable depends on libappindicator1; however:
  Package libappindicator1 is not installed.

dpkg: error processing package google-chrome-stable (--install):
 dependency problems - leaving unconfigured
Processing triggers for man-db (2.7.5-1) ...
Processing triggers for gnome-menus (3.13.3-6ubuntu3) ...
Processing triggers for desktop-file-utils (0.22-1ubuntu5) ...
Processing triggers for mime-support (3.59ubuntu1) ...
Errors were encountered while processing:
 google-chrome-stable

```


執行

``` sh
$ sudo apt-get install
```

顯示

```
Reading package lists... Done
Building dependency tree
Reading state information... Done
You might want to run 'apt-get -f install' to correct these.
The following packages have unmet dependencies:
 google-chrome-stable : Depends: libappindicator1 but it is not installed
E: Unmet dependencies. Try using -f.

```

這個提示訊息，就有提示你要使用「sudo apt-get install -f」。

所以執行

``` sh
$ sudo apt-get install -f
```

就可以解決了
