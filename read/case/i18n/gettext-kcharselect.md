---
layout: page
title: 如何找到 kcharselect 的 PO檔
description: >
  Ubuntu環境，如何找到 kcharselect 的 PO檔。
parent:
  title: 國際化與在地化
  url: /read/case/i18n
---

## 原始討論

原始討論「[回覆: 為什麼要這樣翻譯](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=352138#forumpost352138)」。


## 回覆內容



「[kcharselect](http://packages.ubuntu.com/xenial/kcharselect)」 和「[kde-l10n-zhtw](http://packages.ubuntu.com/xenial/kde-l10n-zhtw)」

執行

``` sh
$ dpkg -S kcharselect.mo
```

顯示

```
kde-l10n-zhtw: /usr/share/locale/zh_TW/LC_MESSAGES/kcharselect.mo
kde-l10n-engb: /usr/share/locale/en_GB/LC_MESSAGES/kcharselect.mo
```

執行

``` sh
$ apt-get source kde-l10n-zhtw
```


執行

``` sh
$ grep kcharselect kde-l10n-zhtw-15.12.1/* -R
```

顯示

```
kde-l10n-zhtw-15.12.1/4/zh_TW/messages/kdelibs/kdelibs4.po:#: kdeui/widgets/kcharselectdata.cpp:685
kde-l10n-zhtw-15.12.1/4/zh_TW/messages/kdelibs/kdelibs4.po:#: kdeui/widgets/kcharselect-translation.cpp:23
...略...
kde-l10n-zhtw-15.12.1/5/zh_TW/messages/kdeutils/kcharselect.po:# translation of kcharselect.po to Chinese Traditional
kde-l10n-zhtw-15.12.1/5/zh_TW/messages/kdeutils/kcharselect.po:"Project-Id-Version: kcharselect\n"
kde-l10n-zhtw-15.12.1/5/zh_TW/messages/kdeutils/kcharselect.po:#: kcharselectdia.cc:77 kcharselectdia.cc:87
...略...
```

執行

``` sh
$ grep 'Basic Latin' kde-l10n-zhtw-15.12.1/4/zh_TW/messages/kdelibs/kdelibs4.po -A 2
```

顯示如下，也就是你可以找到「Unicode Block Name」要翻譯的地方。

```
msgid "Basic Latin"
msgstr "基本拉丁"
```

執行

``` sh
$ grep 'Basic Latin' kde-l10n-zhtw-15.12.1/5/zh_TW/messages/kdeutils/kcharselect.po -A 2
```

沒有任何顯示，直接換新的提示字元。

執行

``` sh
$ head kde-l10n-zhtw-15.12.1/4/zh_TW/messages/kdelibs/kdelibs4.po -n 13
```

顯示如下，「PO檔」就可以找到翻譯人員的聯絡資訊(以下用「...略...」置換掉了)。

```
# translation of kdelibs4.po to Chinese Traditional
# Copyright (C) 2001, 2002, 2004, 2005, 2006, 2007, 2008 Free Software Foundation, Inc.
# ...略..., unknown.
# This file referenced zh_CN translations at 2002.
# ...略..., 2001.
# ...略..., 2001, 2002.
# ...略..., 2002.
# ...略..., 2004.
# ...略..., 2002.
# ...略..., 2008.
# ...略..., 2006-2009, 2010.
# ...略..., 2010, 2011, 2012.
# ...略..., 2010, 2011, 2012, 2013.
```


執行

``` sh
$ head kde-l10n-zhtw-15.12.1/5/zh_TW/messages/kdeutils/kcharselect.po -n 6
```

顯示如下，「PO檔」就可以找到翻譯人員的聯絡資訊(以下用「...略...」置換掉了)。

```
# translation of kcharselect.po to Chinese Traditional
# Copyright (C) 2006, 2007, 2008 Free Software Foundation, Inc.
#
#
# ...略..., 2006, 2007, 2008, 2009.
# ...略..., 2007.
```
