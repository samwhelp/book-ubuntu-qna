---
layout: page
title: 如何觀看套件的「Control File」內容 - 關於「dpkg-query --control-show」
description: >
  如何觀看套件的「Control File」內容 - 關於「dpkg-query --control-show」
parent:
  title: 如何探索「Ubuntu」
  url: '/read/howto/explore/'
source_url: '/read/howto/explore/cmd-dpkg-query-control-show.md'
---

## 主要方式


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
$ dpkg-query --control-show man-db postinst
```

就會顯示「/var/lib/dpkg/info/man-db.postinst」的內容

如同執行下面指令

``` sh
$ less /var/lib/dpkg/info/man-db.postinst
```
