---
layout: page
title: 如何找到 gnome-control-center 的 PO檔
description: >
  Ubuntu環境，如何找到 gnome-control-center 的 PO檔。
parent:
  title: 國際化與在地化
  url: /read/case/i18n
---

## 原始討論

原始討論「[回覆: 為什麼要這樣翻譯](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=352096#forumpost352096)」。


## 回覆內容


我個人認為可以朝幾個方向去討論

* 若真的要翻譯，這些詞彙用什麼樣的字眼來翻，比較適合，這可以討論
* 找出你說的畫面，翻譯檔是那個？
* 了解如何提交這些翻譯？也許有了解的人，可以說明，或是請教他們，例如「[這篇](http://breezymove.blogspot.tw/2016/05/ubuntu-member.html)」和「[這篇](https://threelegcat.wordpress.com/2016/03/22/%E5%8B%95%E6%89%8B%E7%BF%BB%E8%AD%AF-lucidor/)」，
我不認識這兩個作者，只是偶而找資料會逛到這兩個部落格，
在這論壇應該有帳號，無意間發現的，就不特別Cu了 :p


## 以下先提我目前知道的

樓主您給的畫面，指令是「[gnome-control-center](http://manpages.ubuntu.com/manpages/xenial/en/man1/gnome-control-center.1.html)」。

只要執行下面的指令

``` sh
$ gnome-control-center network
```

就會出現「Network」這個「Panel」。

然後按下左下方的「+」按鈕，就會出現，你圖片上的畫面，
作業系統我使用的是英文界面，所以出現的都是英文，
文字如下

* VPN
* Bond
* Team
* Bridge
* VLAN

所以可以討論上面幾個詞彙，可以翻譯什麼詞彙比較恰當，比較能傳達原來的意思。

## 套件探索

執行

``` sh
$ whereis gnome-control-center
```

顯示

```
gnome-control-center: /usr/bin/gnome-control-center /usr/lib/gnome-control-center /usr/share/gnome-control-center /usr/share/man/man1/gnome-control-center.1.gz
```

執行

``` sh
$ dpkg -S /usr/bin/gnome-control-center
```

顯示

``` sh
gnome-control-center: /usr/bin/gnome-control-center
```

表示「[/usr/bin/gnome-control-center](http://manpages.ubuntu.com/manpages/xenial/en/man1/gnome-control-center.1.html)」這個指令，是屬於「[gnome-control-center](http://packages.ubuntu.com/xenial/gnome-control-center)」這個「Package(套件)」。

執行

``` sh
$ apt-cache showsrc gnome-control-center | grep Binary:
```

或是執行

``` sh
$ apt showsrc gnome-control-center | grep Binary:
```

顯示

```
Binary: gnome-control-center, gnome-control-center-dev, gnome-control-center-data
```

表示「[gnome-control-center](http://packages.ubuntu.com/source/xenial/gnome-control-center)」這個「Source Package(原始碼套件)」，
拆成三個「Package(套件)」，
分別是

* [gnome-control-center](http://packages.ubuntu.com/xenial/gnome-control-center)
* [gnome-control-center-data](http://packages.ubuntu.com/xenial/gnome-control-center-data)
* [gnome-control-center-dev](http://packages.ubuntu.com/xenial/gnome-control-center-dev)


執行

``` sh
$ dpkg -L gnome-control-center-data | grep mo | grep zh_TW
```

顯示

```
/usr/share/locale/zh_TW/LC_MESSAGES/gnome-control-center-2.0-timezones.mo
/usr/share/locale/zh_TW/LC_MESSAGES/gnome-control-center-2.0.mo
```

關於這兩個檔的功用，可以從閱讀下面兩篇開始了解起

* 維基百科 / [Gettext](https://zh.wikipedia.org/zh-tw/Gettext)
* Wikipedia / [Gettext](https://en.wikipedia.org/wiki/Gettext)


## 原始碼套件探索

執行

``` sh
$ apt-get source gnome-control-center
```

或是執行

``` sh
$ apt source gnome-control-center
```

就可以下載「Source Package」下來觀看。

執行

``` sh
$ grep Bond gnome-control-center-3.18.2/panels/network/connection-editor/* -R
```

顯示

```
gnome-control-center-3.18.2/panels/network/connection-editor/net-connection-editor.c:        { N_("Bond"), nm_setting_bond_get_type },
```


執行

``` sh
$ grep Team gnome-control-center-3.18.2/panels/network/connection-editor/* -R
```

顯示

```
gnome-control-center-3.18.2/panels/network/connection-editor/net-connection-editor.c:        { N_("Team"), nm_setting_team_get_type },
```


執行

``` sh
$ grep Bond gnome-control-center-3.18.2/po/zh_TW.po -A 2
```

顯示

```
msgid "Bond"
msgstr "繫結"

--
msgid "Bond slaves"
msgstr "繫結的連線"

```


執行

``` sh
$ grep Team gnome-control-center-3.18.2/po/zh_TW.po -A 2
```

顯示

```
...略...
--
msgid "Team"
msgstr "團隊"

--
msgid "Team slaves"
msgstr "團隊從屬"

```



執行

``` sh
$ head gnome-control-center-3.18.2/po/zh_TW.po -n 26
```

顯示

```
# Chinese (Taiwan) translation of gnome-control-center.
# Copyright (C) 1999, 2001-07 Free Software Foundation, Inc.
# GNOME 1.x:
# ...略..., 1999.
# ...略... 2001-2002.
# GNOME 2.x:
# ...略..., 2001-2003, 2005.
# ...略..., 2004-07.
# ...略..., 2010.
# ...略..., 2010.
#
msgid ""
msgstr ""
"Project-Id-Version: gnome-control-center 3.3.91\n"
"Report-Msgid-Bugs-To: [http://bugzilla.gnome.org/enter_bug.cgi?product=gnome-](http://bugzilla.gnome.org/enter_bug.cgi?product=gnome-)"
"control-center&keywords=I18N+L10N&component=general\n"
"POT-Creation-Date: 2015-08-25 13:01+0800\n"
"PO-Revision-Date: 2015-08-25 13:10+0800\n"
"Last-Translator: ...略...\n"
"Language-Team: Chinese (Taiwan) <zh-l10n@lists.linux.org.tw>\n"
"Language: zh_TW\n"
"MIME-Version: 1.0\n"
"Content-Type: text/plain; charset=UTF-8\n"
"Content-Transfer-Encoding: 8bit\n"
"Plural-Forms: nplurals=1; plural=0;\n"
"X-Generator: Poedit 1.8.4\n"

```

在「gnome-control-center-3.18.2/po/zh_TW.po」開頭，就有紀錄翻譯人員的聯絡方式了，可以嘗試與他們聯絡。



以上參考

:-)


## 更多參考

* [請問應該如何回報翻譯錯誤？](https://groups.google.com/forum/#!topic/chinese-l10n/qmqqEK4oKAA)
* [https://l10n.gnome.org/teams/zh_trad/](https://l10n.gnome.org/teams/zh_trad/)
* [https://l10n.gnome.org/languages/zh_TW/](https://l10n.gnome.org/languages/zh_TW/)
