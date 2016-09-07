---
layout: page
title: tar的「change directory用法」注意事項
description: >
  tar的「change directory用法」注意事項
date: 2016-09-07 13:44:45 +0800
parent:
  title: 檔案的打包以及壓縮與解壓縮
  url: /read/case/file-archiving-and-compression
---


## 原始討論

原始討論「[回覆: 請問tar壓縮的時候要怎麼去掉"全部"的路徑](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=354682#forumpost354682)」。


## 回覆內容


紀錄測試結果

## 操作環境

* Xubuntu 16.04 (64位元) 英文界面
* [file-roller](http://packages.ubuntu.com/xenial/file-roller) 3.16.5 (Archive Manager 壓縮管理員)

## 前置作業

執行下面指令，產生測試資料

``` sh
cd /tmp
mkdir bb/cc/dd -p
touch bb/cc/dd/files
touch bb/cc/files
```

執行

``` sh
$ tree bb/
```

顯示

```
bb/
└── cc
    ├── dd
    │   └── files
    └── files

2 directories, 2 files
```

## 測試一 ([#2](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=354412#forumpost354412))

### 打包壓縮

執行

``` sh
$ tar cvzf aa.1.tar.gz -C bb/cc .
```

顯示

```
./
./files
./dd/
./dd/files
```

### 觀看檔案列表 (使用 tar)

執行

``` sh
$ tar tzf aa.1.tar.gz
```

或是執行

``` sh
$ tar tf aa.1.tar.gz
```

顯示

```
./
./files
./dd/
./dd/files
```

### 觀看檔案列表 (使用 vim)

執行

``` sh
$ vim aa.1.tar.gz
```

顯示

```
" tar.vim version v29
" Browsing tarfile /tmp/aa.1.tar.gz
" Select a file with cursor and press ENTER

./
./files
./dd/
./dd/files
```

### 觀看檔案列表 (使用 file-roller)

執行 (或是在「thunar」或「nautilus」直接點選該檔案)

``` sh
$ file-roller aa.1.tar.gz
```

會跳出視窗

一開始顯示資料夾「.」，點選資料夾「.」，會顯示資料夾「dd」和檔案「files」

點選資料夾「dd」，就會看到「Location:」那的值是「/./dd/」



## 測試二 (樓主想要知道的使用方式)

### 打包壓縮

執行

``` sh
$ tar cvzf aa.2.tar.gz -C bb/cc files dd
```


或是執行

``` sh
$ tar cvzf aa.2.tar.gz -C bb/cc $(ls bb/cc)
```

顯示

```
files
dd/
dd/files
```

註：

* 「-C bb/cc」 表示 切換到「bb/cc」這個資料夾
* 「files dd」 表示 要壓縮的檔案列表，所以可以改用「$(ls bb/cc)」來置換。也就是「man [tar](http://manpages.ubuntu.com/manpages/xenial/en/man1/tar.1.html)」的「SYNOPSIS」那，最後的 [pathname ...]


### 觀看檔案列表 (使用 tar)

執行

``` sh
$ tar tzf aa.2.tar.gz
```

或是執行

``` sh
$ tar tf aa.2.tar.gz
```

顯示

```
files
dd/
dd/files
```

### 觀看檔案列表 (使用 vim)

執行

``` sh
$ vim aa.2.tar.gz
```

顯示

```
" tar.vim version v29
" Browsing tarfile /tmp/aa.2.tar.gz
" Select a file with cursor and press ENTER

files
dd/
dd/files
```

### 觀看檔案列表 (使用 file-roller)

執行 (或是在「thunar」或「nautilus」直接點選該檔案)

``` sh
$ file-roller aa.2.tar.gz
```

會跳出視窗

一開始顯示，是資料夾「dd」和檔案「files」，

點選資料夾「dd」，就會看到「Location:」那的值是「/dd/」



## 測試三 (樓主提到的使用 Archive Manager 也就是 file-roller的方式)

### 打包壓縮

使用「[nautilus](http://manpages.ubuntu.com/manpages/xenial/en/man1/nautilus.1.html)」或是「[thunar](http://manpages.ubuntu.com/manpages/xenial/en/man1/thunar.1.html)」其中之一，

切換到「/tmp/bb/cc/」這個路徑，然後「Ctrl+a」全選，也就是會選到『資料夾「dd」和檔案「files」』。

然後按下右鍵，會出現「功能選單」

「nautilus」選「Compress...」

「thunar」選「Create Archive...」

然後開啟「Terminal」

執行

``` sh
$ ps aux | grep file-roller
```

顯示

```
user      22257  2.2  0.6 627968 39172 ?        Sl   13:08   0:00 file-roller --default-dir=/tmp/bb/cc --add /tmp/bb/cc/dd /tmp/bb/cc/files
```

從上面的資訊，可以直接執行下面指令

``` sh
$ file-roller --default-dir=/tmp/bb/cc --add /tmp/bb/cc/dd /tmp/bb/cc/files
```

也會跳出視窗，

按下「Create」按鈕，就會產生「/tmp/bb/cc/cc.tar.gz」這個檔案

### 切換資料夾

執行

``` sh
$ cd /tmp/bb/cc/
```

### 觀看檔案列表 (使用 tar)

執行

``` sh
$ tar tzf cc.tar.gz
```

或是執行

``` sh
$ tar tf cc.tar.gz
```

顯示

```
files
dd/
dd/files
```

### 觀看檔案列表 (使用 vim)

執行

``` sh
$ vim cc.tar.gz
```

顯示

```
" tar.vim version v29
" Browsing tarfile /tmp/bb/cc/cc.tar.gz
" Select a file with cursor and press ENTER

files
dd/
dd/files
```

### 觀看檔案列表 (使用 file-roller)

執行 (或是在「thunar」或「nautilus」直接點選該檔案)

``` sh
$ file-roller cc.tar.gz
```

會跳出視窗

一開始顯示，是資料夾「dd」和檔案「files」，

點選資料夾「dd」，就會看到「Location:」那的值是「/dd/」



## 探索「Source Package」

### 下載「Source Package」

執行下面指令，下載「[file-roller](http://packages.ubuntu.com/xenial/file-roller)」的「[Source Package](http://packages.ubuntu.com/source/xenial/file-roller)」

``` sh
$ apt-get source file-roller
```

### 觀看「file-roller-3.16.5」資料夾結構

執行

``` sh
$ tree file-roller-3.16.5
```

### 觀看「README_COMMANDLINE」內容

執行

``` sh
$ less file-roller-3.16.5/README_COMMANDLINE
```

「[README_COMMANDLINE](https://github.com/GNOME/file-roller/blob/gnome-3-8/README_COMMANDLINE)」這個檔的內容，有說明上面「file-roller」下指令的用法。

另外也可以執行「$ man [file-roller](http://manpages.ubuntu.com/manpages/xenial/en/man1/file-roller.1.html)」對照著看。

### 列出「src/fr-command*.c」

在「file-roller-3.16.5/src/」有很多「fr-command」開頭命名的檔案

執行

``` sh
$ ls file-roller-3.16.5/src/fr-command*.c -1
```

顯示

```
file-roller-3.16.5/src/fr-command-7z.c
file-roller-3.16.5/src/fr-command-ace.c
file-roller-3.16.5/src/fr-command-alz.c
file-roller-3.16.5/src/fr-command-ar.c
file-roller-3.16.5/src/fr-command-arj.c
file-roller-3.16.5/src/fr-command.c
file-roller-3.16.5/src/fr-command-cfile.c
file-roller-3.16.5/src/fr-command-cpio.c
file-roller-3.16.5/src/fr-command-dpkg.c
file-roller-3.16.5/src/fr-command-iso.c
file-roller-3.16.5/src/fr-command-jar.c
file-roller-3.16.5/src/fr-command-lha.c
file-roller-3.16.5/src/fr-command-lrzip.c
file-roller-3.16.5/src/fr-command-rar.c
file-roller-3.16.5/src/fr-command-rpm.c
file-roller-3.16.5/src/fr-command-tar.c
file-roller-3.16.5/src/fr-command-unarchiver.c
file-roller-3.16.5/src/fr-command-unsquashfs.c
file-roller-3.16.5/src/fr-command-unstuff.c
file-roller-3.16.5/src/fr-command-zip.c
file-roller-3.16.5/src/fr-command-zoo.c
```

### 觀看「src/fr-command-tar.c」

執行下面指令，觀看「[src/fr-command-tar.c](https://github.com/GNOME/file-roller/blob/gnome-3-8/src/fr-command-tar.c)」這個檔案的內容

``` sh
$ less file-roller-3.16.5/src/fr-command-tar.c
```

大略瀏覽這個檔案的內容，大概可以了解到「file-roller」不是透過呼叫lib，是透過呼叫外部指令，

也就是呼叫「[tar](http://manpages.ubuntu.com/manpages/xenial/en/man1/tar.1.html)」這個指令來執行相關的功能的。

可以看到裡面也有使用到「[tar](http://manpages.ubuntu.com/manpages/xenial/en/man1/tar.1.html)」的「-C」這個選項，[相關的程式碼](https://github.com/GNOME/file-roller/blob/gnome-3-8/src/fr-command-tar.c#L331)。

### 其他檔案

* [src/main.c](https://github.com/GNOME/file-roller/blob/gnome-3-8/src/main.c)
* [src/fr-application.c](https://github.com/GNOME/file-roller/blob/gnome-3-8/src/fr-application.c)


### 編譯前置作業

執行下面指令，安裝編譯時，需要的套件

``` sh
$ sudo apt-get build-dep file-roller
```

### GTK+ 3 Reference Manual

* 3.18.9 / [Building applications](https://developer.gnome.org/gtk3/3.18/ch01s04.html)
* 3.14.5 / [Building applications](https://developer.gnome.org/gtk3/3.14/ch01s05.html) ([翻譯](http://zhengmingpei.github.io/GTK-3-Chinese-Reference-Manual/content/building_app/asmallapp.html))


以上參考


:-)
