---
layout: page
title: 文件編碼
description: >
  Ubuntu環境，文件編碼操作實務。
parent:
  title: 主題
  url: /read/subject
---

[原始連結](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=333558#forumpost333558)

================================================================================

## 相關討論

* [[分享] Geany 的 使用心得](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=326880#forumpost326880)
* [回覆: [請教]搜尋多個檔案及內容，並可開啟這個檔案的軟體以利編修](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=326776#forumpost326776)
* [回覆: 在wine中執行ConvertZ會卡住](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=330726#forumpost330726)
* [回覆: pluma顯示亂碼](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=330364#forumpost330364)
* [回覆: gedit 亂碼問題 (14.04)](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=318884#forumpost318884)
* [回覆: GEDIT復製WIN7的TXT檔案打開後變亂碼 (16.04)](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=354332#forumpost354332)
* [#4 回覆: *.java 文字檔在Windows10正常，在 Ubuntu1604LTS 卻亂碼，不能執行？？？](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356202#forumpost356202)


## 相關討論 (檔案名稱）

* [[分享] 解壓縮zip檔，產生亂碼，如何解決的心得](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?topic_id=91908)


## 案例討論

* [回覆: 沒有檔名的檔案 (有圖)](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=339572#forumpost339572)

================================================================================

## 檔案內容 編碼轉換 (CLI)

### Manpage

* $ man [iconv](http://manpages.ubuntu.com/manpages/xenial/en/man1/iconv.1.html)
* $ man 1posix [iconv](http://manpages.ubuntu.com/manpages/xenial/en/man1/iconv.1posix.html)

### Package

* $ [libc-bin](http://packages.ubuntu.com/xenial/libc-bin)

### PHP

* [iconv](http://php.net/manual/en/book.iconv.php)
* function [iconv](http://php.net/manual/en/function.iconv.php)

* [Multibyte String](http://php.net/manual/en/book.mbstring.php)
* funciton [mb_detect_encoding](http://php.net/manual/en/function.mb-detect-encoding.php)
* funciton [mb_convert_encoding](http://php.net/manual/en/function.mb-convert-encoding.php)
* function [mb_detect_order]()

案例：

* [#8 回覆: [分享] 解壓縮zip檔，產生亂碼，如何解決的心得](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=327124#forumpost327124)
* [file-phpunzip-php](https://gist.github.com/samwhelp/2f6764561bc3b5f15125#file-phpunzip-php) <-- 14.04 適用 (php5)
* [php-archive](https://github.com/samwhelp/php-archive) ([中文說明](https://github.com/samwhelp/php-archive/blob/master/README.zh_TW.md)) <-- 14.06 適用 (php7)

================================================================================

## 偵測檔案內容編碼 (CLI)

### Manpage

* $ man [chardet](http://manpages.ubuntu.com/manpages/xenial/en/man1/chardet.1.html)
* $ man [chardet3](http://manpages.ubuntu.com/manpages/xenial/en/man1/chardet3.1.html)
* $ man [uchardet](http://manpages.ubuntu.com/manpages/xenial/en/man1/uchardet.1.html)

### Package

* [python-chardet](http://packages.ubuntu.com/xenial/python-chardet)
* [python3-chardet](http://packages.ubuntu.com/xenial/python3-chardet)
* [uchardet](http://packages.ubuntu.com/xenial/uchardet)


### 相關討論

* [#4 回覆: *.java 文字檔在Windows10正常，在 Ubuntu1604LTS 卻亂碼，不能執行？？？](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356202#forumpost356202)

================================================================================

## 檔案名稱 編碼轉換

### Manpage

* [convmv](http://manpages.ubuntu.com/manpages/xenial/en/man1/convmv.1.html)

### Package

* [convmv](http://packages.ubuntu.com/xenial/convmv)


### 相關討論

* [#4 回覆: *.java 文字檔在Windows10正常，在 Ubuntu1604LTS 卻亂碼，不能執行？？？](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356202#forumpost356202)


================================================================================

## 繁簡轉換

* [新同文堂](http://softcup.github.io/New-Tong-Wen-Tang/) ([GitHub](https://github.com/softcup)) <-- 網頁

### Manpage

* [opencc](http://manpages.ubuntu.com/manpages/xenial/en/man1/opencc.1.html)

### Package

* [opencc](http://packages.ubuntu.com/xenial/opencc)

================================================================================

## GUI 文字編輯器

### Manpage

* $ man [kate](http://manpages.ubuntu.com/manpages/xenial/en/man1/kate.1.html)
* $ man [gedit](http://manpages.ubuntu.com/manpages/xenial/en/man1/gedit.1.html)
* $ man [pluma](http://manpages.ubuntu.com/manpages/xenial/en/man1/pluma.1.html)
* $ man [geany](http://manpages.ubuntu.com/manpages/xenial/en/man1/geany.1.html)
* $ man [leafpad](http://manpages.ubuntu.com/manpages/xenial/en/man1/leafpad.1.html)
* $ man [mousepad](http://manpages.ubuntu.com/manpages/xenial/en/man1/mousepad.1.html)

### Package

* [kate](http://packages.ubuntu.com/xenial/kate)
* [gedit](http://packages.ubuntu.com/xenial/gedit)
* [pluma](http://packages.ubuntu.com/xenial/pluma)
* [geany](http://packages.ubuntu.com/xenial/geany)
* [leafpad](http://packages.ubuntu.com/xenial/leafpad)
* [mousepad](http://packages.ubuntu.com/xenial/mousepad)

================================================================================

## Charset

### Manpage

``` sh
$ dpkg -L manpages | grep man7 | sort
```

以下可以執行上面指令找到。

* $ man [charsets](http://manpages.ubuntu.com/manpages/xenial/en/man7/charsets.7.html)

* $ man [utf-8](http://manpages.ubuntu.com/manpages/xenial/en/man7/utf-8.7.html)
* $ man [utf8](http://manpages.ubuntu.com/manpages/xenial/en/man7/utf8.7.html) <--見下面「註1」

* $ man [ascii](http://manpages.ubuntu.com/manpages/xenial/en/man7/ascii.7.html)
* $ man [cp1251](http://manpages.ubuntu.com/manpages/xenial/en/man7/cp1251.7.html)
* $ man [cp1252](http://manpages.ubuntu.com/manpages/xenial/en/man7/cp1252.7.html)
* $ man [armscii-8](http://manpages.ubuntu.com/manpages/xenial/en/man7/armscii-8.7.html)

* $ man [iso_8859-1](http://manpages.ubuntu.com/manpages/xenial/en/man7/iso_8859-1.7.html)
* $ man [iso_8859-2](http://manpages.ubuntu.com/manpages/xenial/en/man7/iso_8859-2.7.html)
* $ man [iso_8859-3](http://manpages.ubuntu.com/manpages/xenial/en/man7/iso_8859-3.7.html)
* $ man [iso_8859-4](http://manpages.ubuntu.com/manpages/xenial/en/man7/iso_8859-4.7.html)
* $ man [iso_8859-5](http://manpages.ubuntu.com/manpages/xenial/en/man7/iso_8859-5.7.html)
* $ man [iso_8859-6](http://manpages.ubuntu.com/manpages/xenial/en/man7/iso_8859-6.7.html)
* $ man [iso_8859-7](http://manpages.ubuntu.com/manpages/xenial/en/man7/iso_8859-7.7.html)
* $ man [iso_8859-8](http://manpages.ubuntu.com/manpages/xenial/en/man7/iso_8859-8.7.html)
* $ man [iso_8859-9](http://manpages.ubuntu.com/manpages/xenial/en/man7/iso_8859-9.7.html)
* $ man [iso_8859-10](http://manpages.ubuntu.com/manpages/xenial/en/man7/iso_8859-10.7.html)
* $ man [iso_8859-11](http://manpages.ubuntu.com/manpages/xenial/en/man7/iso_8859-11.7.html)
* $ man [iso_8859-13](http://manpages.ubuntu.com/manpages/xenial/en/man7/iso_8859-13.7.html)
* $ man [iso_8859-14](http://manpages.ubuntu.com/manpages/xenial/en/man7/iso_8859-14.7.html)
* $ man [iso_8859-15](http://manpages.ubuntu.com/manpages/xenial/en/man7/iso_8859-15.7.html)
* $ man [iso_8859-16](http://manpages.ubuntu.com/manpages/xenial/en/man7/iso_8859-16.7.html)

* $ man [latin1](http://manpages.ubuntu.com/manpages/xenial/en/man7/latin1.7.html) <--見下面「註2」
* $ man [latin2](http://manpages.ubuntu.com/manpages/xenial/en/man7/latin2.7.html)
* $ man [latin3](http://manpages.ubuntu.com/manpages/xenial/en/man7/latin3.7.html)
* $ man [latin4](http://manpages.ubuntu.com/manpages/xenial/en/man7/latin4.7.html)
* $ man [latin5](http://manpages.ubuntu.com/manpages/xenial/en/man7/latin5.7.html)
* $ man [latin6](http://manpages.ubuntu.com/manpages/xenial/en/man7/latin6.7.html)
* $ man [latin7](http://manpages.ubuntu.com/manpages/xenial/en/man7/latin7.7.html)
* $ man [latin8](http://manpages.ubuntu.com/manpages/xenial/en/man7/latin8.7.html)
* $ man [latin9](http://manpages.ubuntu.com/manpages/xenial/en/man7/latin9.7.html)
* $ man [latin10](http://manpages.ubuntu.com/manpages/xenial/en/man7/latin10.7.html)

* $ man [koi8-r](http://manpages.ubuntu.com/manpages/xenial/en/man7/koi8-r.7.html)
* $ man [koi8-u](http://manpages.ubuntu.com/manpages/xenial/en/man7/koi8-u.7.html)

================================================================================

## 註1:

執行

``` sh
$ ls /usr/share/man/man7/utf8.7.gz -l
```

顯示

```
lrwxrwxrwx 1 root root 10 Apr 24  2016 /usr/share/man/man7/utf8.7.gz -> utf-8.7.gz
```

執行

``` sh
$ stat /usr/share/man/man7/utf8.7.gz
```

顯示

```
  File: '/usr/share/man/man7/utf8.7.gz' -> 'utf-8.7.gz'
  Size: 10        	Blocks: 0          IO Block: 4096   symbolic link
Device: 822h/2082d	Inode: 5646436     Links: 1
Access: (0777/lrwxrwxrwx)  Uid: (    0/    root)   Gid: (    0/    root)
Access: 2016-12-22 02:33:49.554631690 +0800
Modify: 2016-04-24 00:17:57.399037799 +0800
Change: 2016-04-24 00:17:57.399037799 +0800
 Birth: -
```

================================================================================

## 註2

執行

``` sh
$ ls /usr/share/man/man7/latin1.7.gz -l
```

顯示

```
lrwxrwxrwx 1 root root 15 Apr 24  2016 /usr/share/man/man7/latin1.7.gz -> iso_8859-1.7.gz
```

================================================================================

## Charmap

執行

``` sh
$ whatis charmap
```

顯示

```
charmap (1)          - Unicode character picker and font browser
charmap (5)          - character set description file
```

### Manpage

* man 5 [charmap](http://manpages.ubuntu.com/manpages/xenial/en/man5/charmap.5.html)

### Package

* [manpages](http://packages.ubuntu.com/xenial/manpages)
* [locales](http://packages.ubuntu.com/xenial/locales)

### Path

* /usr/share/i18n/charmaps

執行

``` sh
$ ls /usr/share/i18n/charmaps/ -1
```

執行

``` sh
$ less /usr/share/i18n/charmaps/BIG5.gz
```

執行

``` sh
$ less /usr/share/i18n/charmaps/UTF-8.gz
```

執行

``` sh
$ less /usr/share/i18n/charmaps/ARMSCII-8.gz
```

執行

``` sh
$ less /usr/share/i18n/charmaps/ISO-8859-1.gz
```

註:
「[less](http://manpages.ubuntu.com/manpages/xenial/en/man1/less.1.html)」可以改成「[view](http://manpages.ubuntu.com/manpages/xenial/en/man1/vim.1.html)」或「[vim](http://manpages.ubuntu.com/manpages/xenial/en/man1/vim.1.html)」或「[mcedit](http://manpages.ubuntu.com/manpages/xenial/en/man1/mcedit.1.html)」來觀看。


================================================================================

## Locale

### Reference

* Ubuntu Community Help Wiki / [Locale](https://help.ubuntu.com/community/Locale)
* Debian Wiki / [Locale](https://wiki.debian.org/Locale)
* The Debian Administrator's Handbook / [8.1. Configuring the System for Another Language](https://debian-handbook.info/browse/stable/basic-configuration.html#sect.config-language-support) ([中文版](https://debian-handbook.info/browse/zh-TW/stable/basic-configuration.html#sect.config-language-support))

註:
「The Debian Administrator's Handbook」有紀錄在這篇「[討論](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=355510#forumpost355510)」。

### Manpage

執行

``` sh
$ whatis locale
```

顯示

```
locale (7)           - description of multilanguage support
locale (1)           - get locale-specific information
locale (5)           - describes a locale definition file
locale (1posix)      - get locale-specific information
```

或是可以從[網頁可以查詢到](http://manpages.ubuntu.com/cgi-bin/search.py?q=locale)。

``` sh
$ dpkg -L manpages | grep '/man/man.*/' | grep locale
```

顯示

```
/usr/share/man/man1/locale.1.gz
/usr/share/man/man1/localedef.1.gz
/usr/share/man/man5/locale.5.gz
/usr/share/man/man7/locale.7.gz
```

執行

``` sh
$ dpkg -L locales | grep '/man/man.*/'
```

顯示

```
/usr/share/man/man8/update-locale.8.gz
/usr/share/man/man8/validlocale.8.gz
/usr/share/man/man8/locale-gen.8.gz
/usr/share/man/man5/locale.gen.5.gz
```

註:
這個技巧可以參考「[如何查詢某個套件有哪些使用手冊](http://samwhelp.github.io/book-ubuntu-basic-skill/book/content/manual/how-to-find-out-manpages-by-a-package.html)」這篇的說明。


* $ man 1 [locale](http://manpages.ubuntu.com/manpages/xenial/en/man1/locale.1.html)
* $ man 1posix [locale](http://manpages.ubuntu.com/manpages/xenial/en/man1/locale.1posix.html)
* $ man 5 [locale](http://manpages.ubuntu.com/manpages/xenial/en/man5/locale.5.html)

* $ man [locale-gen](http://manpages.ubuntu.com/manpages/xenial/en/man8/locale-gen.8.html)
* $ man [locale.gen](http://manpages.ubuntu.com/manpages/xenial/en/man5/locale.gen.5.html)

* $ man [validlocale](http://manpages.ubuntu.com/manpages/xenial/en/man8/validlocale.8.html)
* $ man [update-locale](http://manpages.ubuntu.com/manpages/xenial/en/man8/update-locale.8.html)


### Package

* [libc-bin](http://packages.ubuntu.com/xenial/locales)
* [locales](http://packages.ubuntu.com/xenial/locales)
* [locales-all](http://packages.ubuntu.com/xenial/locales-all)
* [manpages](http://packages.ubuntu.com/xenial/manpages)

### Path

* /etc/default/locale
* /usr/share/i18n/SUPPORTED
* /usr/share/i18n/locales
* /usr/lib/locale
* /etc/locale.gen

執行

``` sh
$ cat /usr/share/i18n/SUPPORTED | grep zh_TW
```

或是執行

``` sh
$ grep zh_TW /usr/share/i18n/SUPPORTED
```

顯示

```
lzh_TW UTF-8
zh_TW.UTF-8 UTF-8
zh_TW.EUC-TW EUC-TW
zh_TW BIG5
```

--------------------------------------------------------------------------------

執行

``` sh
$ ls /usr/share/i18n/locales/ | grep zh
```

顯示

```
lzh_TW
zh_CN
zh_HK
zh_SG
zh_TW
```

執行下面指令，觀看「/usr/share/i18n/locales/zh_TW」的內容

``` sh
$ less /usr/share/i18n/locales/zh_TW
```

註:
「[less](http://manpages.ubuntu.com/manpages/xenial/en/man1/less.1.html)」可以改成「[more](http://manpages.ubuntu.com/manpages/xenial/en/man1/more.1.html)」或「[view](http://manpages.ubuntu.com/manpages/xenial/en/man1/vim.1.html)」或「[vim](http://manpages.ubuntu.com/manpages/xenial/en/man1/vim.1.html)」或「[mcedit](http://manpages.ubuntu.com/manpages/xenial/en/man1/mcedit.1.html)」來觀看。


--------------------------------------------------------------------------------

執行

``` sh
$ locale -a
```

執行

``` sh
$ cat /usr/share/i18n/SUPPORTED | sort
```

執行

``` sh
$ cat /usr/share/i18n/SUPPORTED | sort
```

執行

``` sh
$ ls /usr/share/i18n/locales/ -1 | sort
```

執行

``` sh
$ ls /usr/lib/locale/ -1 | sort
```

--------------------------------------------------------------------------------

執行

``` sh
$ validlocale C
```

顯示

```
locale 'C' valid and available
```

執行

``` sh
$ validlocale zh_TW
```

顯示

```
locale 'zh_TW' valid and available
```


執行

``` sh
$ validlocale zh_TW
```

顯示

```
locale 'zh_TW' valid and available
```


執行

``` sh
$ validlocale zh_TW.UTF-8
```

顯示

```
locale 'zh_TW.UTF-8' valid and available
```


執行

``` sh
$ validlocale zh_TW.UTF-8
```

顯示

```
locale 'zh_TW.UTF-8' valid and available
```


執行

``` sh
$ validlocale zh_TW.BIG5
```

顯示

```
locale 'zh_TW.BIG5' valid and available
```

執行

``` sh
$ validlocale lzh_TW
```

顯示

```
locale 'lzh_TW' valid and available
```

註:
「lzh_TW」請參考「[這篇](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=353588#forumpost353588)」和「[這篇](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=353592#forumpost353592)」，關鍵字是「[Literary Chinese](https://www.google.com.tw/#q=Literary+Chinese)」，
還有參考「維基百科 / [文言文](https://zh.wikipedia.org/zh-tw/%E6%96%87%E8%A8%80%E6%96%87)」或「Wikipedia / [Classical Chinese](https://en.wikipedia.org/wiki/Classical_Chinese)」。

--------------------------------------------------------------------------------

執行下面指令，觀看「/etc/default/locale」的內容

``` sh
$ less /etc/default/locale
```

顯示

```
#  File generated by update-locale
LANG="en_US.UTF-8"
LC_NUMERIC="en_US.UTF-8"
LC_TIME="en_US.UTF-8"
LC_MONETARY="en_US.UTF-8"
LC_PAPER="en_US.UTF-8"
LC_NAME="en_US.UTF-8"
LC_ADDRESS="en_US.UTF-8"
LC_TELEPHONE="en_US.UTF-8"
LC_MEASUREMENT="en_US.UTF-8"
LC_IDENTIFICATION="en_US.UTF-8"
```

執行

``` sh
$ locale
```

顯示

```
LANG=en_US.UTF-8
LANGUAGE=en_US
LC_CTYPE="en_US.UTF-8"
LC_NUMERIC=en_US.UTF-8
LC_TIME=en_US.UTF-8
LC_COLLATE="en_US.UTF-8"
LC_MONETARY=en_US.UTF-8
LC_MESSAGES="en_US.UTF-8"
LC_PAPER=en_US.UTF-8
LC_NAME=en_US.UTF-8
LC_ADDRESS=en_US.UTF-8
LC_TELEPHONE=en_US.UTF-8
LC_MEASUREMENT=en_US.UTF-8
LC_IDENTIFICATION=en_US.UTF-8
LC_ALL=
```


執行

``` sh
$ sudo update-locale LC_CTYPE=zh_TW.UTF-8 LC_NAME
```

顯示

``` sh
$ less /etc/default/locale
```


執行下面指令，觀看「/etc/default/locale」的內容

``` sh
$ less /etc/default/locale
```

顯示

```
#  File generated by update-locale
LANG="en_US.UTF-8"
LC_NUMERIC="en_US.UTF-8"
LC_TIME="en_US.UTF-8"
LC_MONETARY="en_US.UTF-8"
LC_PAPER="en_US.UTF-8"
#LC_NAME="en_US.UTF-8"
LC_ADDRESS="en_US.UTF-8"
LC_TELEPHONE="en_US.UTF-8"
LC_MEASUREMENT="en_US.UTF-8"
LC_IDENTIFICATION="en_US.UTF-8"
LC_CTYPE=zh_TW.UTF-8
```

可以看到「LC_NAME」那一行被註解了(在前面加上#)，然後「LC_CTYPE」被修改了。

再度執行

``` sh
$ locale
```

顯示

```
LANG=en_US.UTF-8
LANGUAGE=en_US
LC_CTYPE="en_US.UTF-8"
LC_NUMERIC=en_US.UTF-8
LC_TIME=en_US.UTF-8
LC_COLLATE="en_US.UTF-8"
LC_MONETARY=en_US.UTF-8
LC_MESSAGES="en_US.UTF-8"
LC_PAPER=en_US.UTF-8
LC_NAME=en_US.UTF-8
LC_ADDRESS=en_US.UTF-8
LC_TELEPHONE=en_US.UTF-8
LC_MEASUREMENT=en_US.UTF-8
LC_IDENTIFICATION=en_US.UTF-8
LC_ALL=
```

得到的顯示還是跟原來的一樣，

所以「[update-locale](http://manpages.ubuntu.com/manpages/xenial/en/man8/update-locale.8.html)」只有更改「/etc/default/locale」這個檔案。


### locale 相關討論案例

* [#5 回覆: debian 8.2 + 預設的gnome 3.14.1 家目錄下預設資料夾名稱英文切回中文的問題](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=347182#forumpost347182)
* [#14 回覆: 為什麼要這樣翻譯](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=352130#forumpost352130)
* [#8 回覆: 安裝 ubuntu server 1604時發生這樣的問題](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=353560#forumpost353560)
* [#10 回覆: 安裝 ubuntu server 1604時發生這樣的問題](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=353588#forumpost353588) (有關「lzh_TW」的疑問)
* [#11 回覆: 安裝 ubuntu server 1604時發生這樣的問題](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=353592#forumpost353592) (有關「lzh」的探索)
* [#6 回覆: 登入畫面 輸入密碼處 中文部分出現方格](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=355518#forumpost355518)
* [#10 回覆: MadBox 14.04中文安裝](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=335884#forumpost335884)
* [#6 回覆: [分享] 青空文庫電子書閱覽器aobook](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=340374#forumpost340374)
* [#19 回覆: [求助] 新手詢問：如何安裝香港補字元集？](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=348434#forumpost348434)
* [#3 回覆: [求救]我的conky無法顯示中文！！](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=326348#forumpost326348)
* [#8 回覆: Kubuntu 15.04 (Plasma 5.0) Fcitx、gcin輸入法無法打中文](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=342202#forumpost342202) (有關「check-language-support」的探索)
* [#4 回覆: 手機照片無法預覽](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=347786#forumpost347786) (有關「kde-l10n-zhtw」這個套件和「dolphin」的使用界面中文化)

================================================================================


## 相關的索引

一些「索引」放在「[Ubuntu 文件資源](https://www.ubuntu-tw.org/modules/newbb/viewforum.php?forum=14)」，紀錄一些「討論案例」和「參考連結」。

* [[索引] 中文輸入](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=333556#forumpost333556)
* [[索引] 字型安裝設定](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=333554#forumpost333554)

我也有將這些「索引的連結」整理，[列在這裡](http://samwhelp.github.io/book-ubuntu-qna/read/subject/)。
