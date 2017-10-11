---
layout: page
title: 關於「/usr/share/locale-langpack」
description: >
  關於「/usr/share/locale-langpack」
parent:
  title: 如何探索「Ubuntu」
  url: '/read/howto/explore/'
source_url: '/read/howto/explore/file-usr-share-locale-langpack.md'
---


## 測試環境

* Xubuntu 16.04 amd64 英文界面

## 探索步驟

執行

``` sh
$ dpkg -S /usr/share/locale-langpack
```

顯示

```
language-pack-zh-hant-base, language-pack-zh-hant, language-pack-gnome-en-base, language-pack-gnome-en, language-pack-en-base, language-pack-en: /usr/share/locale-langpack
```

執行

``` sh
$ grep '/usr/share/locale-langpack' /var/lib/dpkg/info/* -R -n
```

有很多檔案，就不列了。

執行

``` sh
$ whereis locale
```

顯示

``` sh
locale: /usr/bin/locale /usr/lib/locale /etc/locale.gen /etc/locale.alias /usr/include/locale.h /usr/share/locale /usr/share/man/man1/locale.1posix.gz /usr/share/man/man1/locale.1.gz /usr/share/man/man5/locale.5.gz /usr/share/man/man7/locale.7.gz
```

執行

``` sh
$ dpkg -S /usr/bin/locale
```

顯示

```
libc-bin: /usr/bin/locale
```

執行

``` sh
$ apt-cache showsrc libc-bin | grep '^Binary:' -B 1
```

顯示

```
Package: glibc
Binary: libc-bin, libc-dev-bin, libc-l10n, glibc-doc, glibc-source, locales, locales-all, nscd, multiarch-support, libc6, libc6-dev, libc6-dbg, libc6-pic, libc6-udeb, libc6.1, libc6.1-dev, libc6.1-dbg, libc6.1-pic, libc6.1-udeb, libc0.3, libc0.3-dev, libc0.3-dbg, libc0.3-pic, libc0.3-udeb, libc0.1, libc0.1-dev, libc0.1-dbg, libc0.1-pic, libc0.1-udeb, libc6-i386, libc6-dev-i386, libc6-sparc, libc6-dev-sparc, libc6-sparc64, libc6-dev-sparc64, libc6-s390, libc6-dev-s390, libc6-amd64, libc6-dev-amd64, libc6-powerpc, libc6-dev-powerpc, libc6-ppc64, libc6-dev-ppc64, libc6-mips32, libc6-dev-mips32, libc6-mipsn32, libc6-dev-mipsn32, libc6-mips64, libc6-dev-mips64, libc6-armhf, libc6-dev-armhf, libc6-armel, libc6-dev-armel, libc0.1-i386, libc0.1-dev-i386, libc6-x32, libc6-dev-x32, libc6-i686, libc6-xen, libc0.1-i686, libc6.1-alphaev67
```

執行

``` sh
$ apt-get source libc-bin
```

會下載下面三個檔案

* glibc_2.23-0ubuntu9.debian.tar.xz
* glibc_2.23-0ubuntu9.dsc
* glibc_2.23.orig.tar.xz

並且解開到「glibc-2.23」這個資料夾

執行

``` sh
$ grep '/usr/share/locale-langpack' glibc-2.23/* -R -n
```

顯示

```
glibc-2.23/debian/patches/ubuntu/local-altlocaledir.diff:3:# DP: /usr/share/locale-langpack
glibc-2.23/debian/patches/ubuntu/local-altlocaledir.diff:25:+  const char* langpack_dir = "/usr/share/locale-langpack";
glibc-2.23/intl/l10nflist.c:289:  const char* langpack_dir = "/usr/share/locale-langpack";
```

## 相關討論

* [#3 回覆: （新手求助）請問ubuntu終端機文字模式下 ls --help 顯示的幫助提示可以改中文嘛？](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358408#forumpost358408)
* 回覆: ubuntun 14.04, psql 無法使用 - 「[#4](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358364#forumpost358364)」，「[#5](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358370#forumpost358370)」，「[#6](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358372#forumpost358372)」
