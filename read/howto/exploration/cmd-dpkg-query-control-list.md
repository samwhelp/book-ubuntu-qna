---
layout: page
title: 關於「dpkg-query --control-list」
description: >
  關於「dpkg-query --control-list」
parent:
  title: 如何探索「Ubuntu」
  url: '/read/howto/exploration/'
source_url: '/read/howto/exploration/cmd-dpkg-query-control-list.md'  
---

## 主要方式

執行

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
