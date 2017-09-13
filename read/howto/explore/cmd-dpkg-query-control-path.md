---
layout: page
title: 如何找到套件的「Control File」路徑 - 關於「dpkg-query --control-path」或「dpkg-query -c」
description: >
  如何找到套件的「Control File」路徑 - 關於「dpkg-query --control-path」或「dpkg-query -c」
parent:
  title: 如何探索「Ubuntu」
  url: '/read/howto/explore/'
source_url: '/read/howto/explore/cmd-dpkg-query-control-path.md'
---


## 主要方式

執行

``` sh
$ dpkg-query --control-path man-db
```

或是執行

``` sh
$ dpkg-query -c man-db
```

顯示

```
/var/lib/dpkg/info/man-db.postrm
/var/lib/dpkg/info/man-db.triggers
/var/lib/dpkg/info/man-db.config
/var/lib/dpkg/info/man-db.postinst
/var/lib/dpkg/info/man-db.md5sums
/var/lib/dpkg/info/man-db.preinst
/var/lib/dpkg/info/man-db.templates
```

## 其他方式

執行

``` sh
$ tree /var/lib/dpkg/info -P 'man-db.*'
```

顯示

``` sh
/var/lib/dpkg/info
├── man-db.conffiles
├── man-db.config
├── man-db.list
├── man-db.md5sums
├── man-db.postinst
├── man-db.postrm
├── man-db.preinst
├── man-db.templates
└── man-db.triggers

0 directories, 9 files
```

執行

``` sh
$ ls /var/lib/dpkg/info/man-db.* -1
```

顯示

```
/var/lib/dpkg/info/man-db.conffiles
/var/lib/dpkg/info/man-db.config
/var/lib/dpkg/info/man-db.list
/var/lib/dpkg/info/man-db.md5sums
/var/lib/dpkg/info/man-db.postinst
/var/lib/dpkg/info/man-db.postrm
/var/lib/dpkg/info/man-db.preinst
/var/lib/dpkg/info/man-db.templates
/var/lib/dpkg/info/man-db.triggers
```

## 單項路徑

也可找到單項路徑

先執行

``` sh
$ dpkg-query --control-list man-db
```

顯示

```
postrm
triggers
config
postinst
md5sums
preinst
templates
```

然後執行

``` sh
$ dpkg-query --control-path man-db postinst
```

顯示

```
/var/lib/dpkg/info/man-db.postinst
```

## Debian Reference

* [2.5.9. The dpkg command](https://www.debian.org/doc/manuals/debian-reference/ch02.en.html#_the_dpkg_command)
* [2.6.3. Fixing broken package script](https://www.debian.org/doc/manuals/debian-reference/ch02.en.html#_fixing_broken_package_script)
