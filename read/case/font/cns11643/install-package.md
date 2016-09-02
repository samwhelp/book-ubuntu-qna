---
layout: page
title: 套件安裝全字庫字型(CNS11643)
description: >
  Ubuntu環境，安裝全字庫字型套件
date: 2016-09-02 16:45:22 +0800
parent:
  title: 字型的安裝與設定
  url: /read/case/font
---

## 前言

雖然我傾向「[手動安裝全字庫字型](/book-ubuntu-qna/read/case/font/cns11643/install.html)」的方式，不過還是紀錄「套件安裝」的方式。

## 操作環境

* Xubuntu 16.04 64位元


## 查詢

執行

``` sh
$ apt-cache search cns11643
```

顯示

```
fcitx-table-cns11643 - Flexible Input Method Framework - Cns11643 table
ibus-table-cns11643 - ibus-table input method: Cns11643
scim-tables-zh - Chinese input method data tables for SCIM platform
fonts-cns11643-kai - Chinese TrueType font, TW-Kai
fonts-cns11643-sung - Chinese TrueType font, TW-Sung
fonts-moe-standard-kai - Chinese TrueType font, standard Kaiti (non-free)
fonts-moe-standard-song - Chinese TrueType font, standard Song (non-free)
```

主要是「[fonts-cns11643-kai](http://packages.ubuntu.com/xenial/fonts-cns11643-kai)」和「[fonts-cns11643-sung](http://packages.ubuntu.com/xenial/fonts-cns11643-sung)」這兩個套件。

可以執行下面的命令，來找到套件詳細的資訊。

### fonts-cns11643-kai

執行

``` sh
$ apt-cache show fonts-cns11643-kai
```

顯示

```
Package: fonts-cns11643-kai
Priority: extra
Section: multiverse/fonts
Installed-Size: 148411
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Original-Maintainer: Debian Fonts Task Force <pkg-fonts-devel@lists.alioth.debian.org>
Architecture: all
Source: fonts-cns11643
Version: 98.1+20150923-2
Filename: pool/multiverse/f/fonts-cns11643/fonts-cns11643-kai_98.1+20150923-2_all.deb
Size: 59175924
MD5sum: c923d4d8cf062255919931e17a9dd98c
SHA1: 419ae9671cf57919fd90f46e08ff5e49bb900b8d
SHA256: 7076e02b43cea4adacd5bd949717994526613922afea1fbf4f578e95dd921af5
Description-en: Chinese TrueType font, TW-Kai
 The CNS 11643 character set (Chinese National Standard 11643),
 also officially known as the "Chinese Standard Interchange Code",
 is officially the standard character set of the Republic of China.
 (In practice, variants of Big5 are de facto standard.)
 .
 TW-Kai is released by RDEC, Executive Yuan, ROC.
 It covers the characters plane 1 to 9 defined by CNS11643.
Description-md5: ba10a1118a63ddf6a3e4788e30208e6f
Multi-Arch: foreign
Homepage: http://www.cns11643.gov.tw
Bugs: https://bugs.launchpad.net/ubuntu/+filebug
Origin: Ubuntu

```

### fonts-cns11643-sung

執行

``` sh
$ apt-cache show fonts-cns11643-sung
```

顯示

```
Package: fonts-cns11643-sung
Priority: extra
Section: multiverse/fonts
Installed-Size: 128843
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Original-Maintainer: Debian Fonts Task Force <pkg-fonts-devel@lists.alioth.debian.org>
Architecture: all
Source: fonts-cns11643
Version: 98.1+20150923-2
Filename: pool/multiverse/f/fonts-cns11643/fonts-cns11643-sung_98.1+20150923-2_all.deb
Size: 51465488
MD5sum: b3acab0c1c66194037d914df2f31e89c
SHA1: 0df36fc9d059b9b3d20b3c4d48e8accbd4d21fcf
SHA256: 3911a65efe3c0eec3ad5ec6f05622cc70b7ea7d53660c15ff849cde0093be1bb
Description-en: Chinese TrueType font, TW-Sung
 The CNS 11643 character set (Chinese National Standard 11643),
 also officially known as the "Chinese Standard Interchange Code",
 is officially the standard character set of the Republic of China.
 .
 TW-Sung is released by RDEC, Executive Yuan, ROC.
 It covers the characters plane 1 to 9 defined by CNS11643.
Description-md5: 0a0ab68df6c4d455c3b831f8ca434996
Multi-Arch: foreign
Homepage: http://www.cns11643.gov.tw
Bugs: https://bugs.launchpad.net/ubuntu/+filebug
Origin: Ubuntu
```

或是也可以兩個套件同時查詢

執行

``` sh
$ apt-cache show fonts-cns11643-kai fonts-cns11643-sung
```

可以同時顯示上面的查到的資訊。

## 安裝

執行

``` sh
$ sudo apt-get install fonts-cns11643-kai fonts-cns11643-sung
```

## 相關文件

* [Ubuntu環境下，一些字型套件](https://samwhelp.github.io/book-ubuntu-basic-skill/book/content/font/font-package.html)


## github

* [https://github.com/fourdollars/fonts-cns11643](https://github.com/fourdollars/fonts-cns11643)
