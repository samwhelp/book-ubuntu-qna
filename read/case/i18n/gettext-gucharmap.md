---
layout: page
title: 如何找到 gucharmap 的 PO檔
description: >
  Ubuntu環境，如何找到 gucharmap 的 PO檔。
parent:
  title: 國際化與在地化
  url: /read/case/i18n
---

## 原始討論

原始討論「[回覆: 為什麼要這樣翻譯](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=352130#forumpost352130)」。


## 回覆內容

回覆這篇「[討論](https://groups.google.com/d/msg/chinese-l10n/aq1KQWohvGc/wXqeIH94CQAJ)」

我在嘗試理解你說的，所以有些東西是我自己先猜測，你再確認看看是不是

您說的「gnome的字元檢視器」，我先猜測您指的是不是「[gucharmap](http://packages.ubuntu.com/xenial/gucharmap)」。

我對「[gucharmap](http://packages.ubuntu.com/xenial/gucharmap)」這個套件做了點小探索。


## 以下報告


下載「[gucharmap](http://packages.ubuntu.com/xenial/gucharmap)」這個套件的「[Source Package](http://packages.ubuntu.com/source/xenial/gucharmap)」。

``` sh
$ apt-get source gucharmap
```

跟上面「[回覆的邏輯一樣](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=352096#forumpost352096)」，觀看「zh_TW.po」的開頭。

``` sh
$ head gucharmap-3.18.2/po/zh_TW.po -n 28
```

顯示如下，「PO檔」就可以找到翻譯人員的聯絡資訊(以下用「...略...」置換掉了)。

```
# Chinese (Taiwan) translation of gucharmap.
# Copyright (C) 2003-06 Free Software Foundation, Inc.
# (thanks to ...略...> and <...略...> for
# their zh_CN.po, which I used as reference; another is www.wordpedia.com)
# (new revision base on terms from
# http://www.cns11643.gov.tw/web/seek_09.jsp
# http://www.geocities.com/chukl000/unicode/index.html)
# ...略..., 2003, 2004.
# ...略..., 2005-2006.
# ...略..., 2010.
# ...略..., 2010.
#
msgid ""
msgstr ""
"Project-Id-Version: gucharmap 3.3.90\n"
"Report-Msgid-Bugs-To: http://bugzilla.gnome.org/enter_bug.cgi?"
"product=gucharmap&keywords=I18N+L10N&component=general\n"
"POT-Creation-Date: 2015-08-24 22:12+0000\n"
"PO-Revision-Date: 2015-08-25 14:52+0800\n"
"Last-Translator: ...略...\n"
"Language-Team: Chinese (Taiwan) <zh-l10n@lists.linux.org.tw>\n"
"Language: zh_TW\n"
"MIME-Version: 1.0\n"
"Content-Type: text/plain; charset=UTF-8\n"
"Content-Transfer-Encoding: 8bit\n"
"Plural-Forms: nplurals=1; plural=0;\n"
"X-Generator: Poedit 1.8.4\n"
```


另外我發現「gucharmap.mo」是放在「[language-pack-gnome-zh-hant-base](http://packages.ubuntu.com/source/xenial/language-pack-gnome-zh-hant-base)」這個套件。

執行

``` sh
$ dpkg -S gucharmap.mo
```

顯示

```
language-pack-gnome-zh-hant-base: /usr/share/locale-langpack/zh_HK/LC_MESSAGES/gucharmap.mo
language-pack-gnome-zh-hant-base: /usr/share/locale-langpack/zh_TW/LC_MESSAGES/gucharmap.mo
```

執行

``` sh
$ dpkg -L language-pack-gnome-zh-hant-base | grep gucharmap
```

顯示

```
/usr/share/locale-langpack/zh_HK/LC_MESSAGES/gucharmap.mo
/usr/share/locale-langpack/zh_TW/LC_MESSAGES/gucharmap.mo
```

下載「[language-pack-gnome-zh-hant-base](http://packages.ubuntu.com/xenial/language-pack-gnome-zh-hant-base)」這個套件的「[Source Package](http://packages.ubuntu.com/source/xenial/language-pack-gnome-zh-hant-base)」。

執行

``` sh
$ apt-get source language-pack-gnome-zh-hant-base
```

觀看「PO檔」的開頭

``` sh
$ head language-pack-gnome-zh-hant-base-16.04+20160415/data/zh_TW/LC_MESSAGES/gucharmap.po -n 28
```

顯示如下，「PO檔」就可以找到翻譯人員的聯絡資訊(以下用「...略...」置換掉了)。

```
# Chinese (Taiwan) translation of gucharmap.
# Copyright (C) 2003-06 Free Software Foundation, Inc.
# (thanks to ...略...> and <...略...> for
# their zh_CN.po, which I used as reference; another is www.wordpedia.com)
# (new revision base on terms from
# http://www.cns11643.gov.tw/web/seek_09.jsp
# http://www.geocities.com/chukl000/unicode/index.html)
# ...略..., 2003, 2004.
# ...略..., 2005-2006.
# ...略..., 2010.
# ...略..., 2010.
#
msgid ""
msgstr ""
"Project-Id-Version: gucharmap 3.3.90\n"
"Report-Msgid-Bugs-To: "
"http://bugzilla.gnome.org/enter_bug.cgi?product=gucharmap&keywords=I18N+L10N&"
"component=general\n"
"POT-Creation-Date: 2016-01-28 02:49+0000\n"
"PO-Revision-Date: 2015-10-02 19:44+0000\n"
"Last-Translator: ...略...\n"
"Language-Team: Chinese (Taiwan) <zh-l10n@lists.linux.org.tw>\n"
"MIME-Version: 1.0\n"
"Content-Type: text/plain; charset=UTF-8\n"
"Content-Transfer-Encoding: 8bit\n"
"X-Launchpad-Export-Date: 2016-04-15 05:35+0000\n"
"X-Generator: Launchpad (build 17995)\n"
"Language: zh_TW\n"
```


至於你說的「block name」指的是不是「[gucharmap](http://packages.ubuntu.com/xenial/gucharmap)」的左方那個區塊的文字。

參考「Wikipedia / [Unicode_block](https://en.wikipedia.org/wiki/Unicode_block)」。

執行

``` sh
$ grep 'Basic Latin' gucharmap-3.18.2/po/zh_TW.po -A 2
```

顯示如下，也就是你可以找到「Unicode Block Name」要翻譯的地方。

```
msgid "Basic Latin"
msgstr "基本拉丁文"
```
