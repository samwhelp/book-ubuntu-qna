---
layout: page
title: 如何找到 libreoffice 的 PO檔
description: >
  Ubuntu環境，如何找到 libreoffice 的 PO檔。
parent:
  title: 國際化與在地化
  url: /read/case/i18n
---

## 原始討論

原始討論「[回覆: 為什麼要這樣翻譯](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=352140#forumpost352140)」。


## 回覆內容


「[libreoffice-l10n-zh-tw](http://packages.ubuntu.com/xenial/libreoffice-l10n-zh-tw)」和「[libreoffice](http://packages.ubuntu.com/xenial/libreoffice)」


執行

``` sh
$ apt-get source libreoffice-l10n-zh-tw
```

執行

``` sh
$ grep 'Special Characters' libreoffice-l10n-5.1.2/* -R
```

顯示

```
...略...

```

執行

``` sh
$ grep 'Basic Latin' libreoffice-l10n-5.1.2/translations/source/zh-TW/* -R -A 2
```

顯示如下，也就是你可以找到「Unicode Block Name」要翻譯的地方。

``` sh
libreoffice-l10n-5.1.2/translations/source/zh-TW/svx/source/dialog.po:msgid "Basic Latin"
libreoffice-l10n-5.1.2/translations/source/zh-TW/svx/source/dialog.po-msgstr "基本拉丁字母"
libreoffice-l10n-5.1.2/translations/source/zh-TW/svx/source/dialog.po-
```

執行

``` sh
$ head libreoffice-l10n-5.1.2/translations/source/zh-TW/svx/source/dialog.po -n 18
```

顯示如下，「PO檔」就可以找到翻譯人員的聯絡資訊(以下用「...略...」置換掉了)。

```
#. extracted from svx/source/dialog
msgid ""
msgstr ""
"Project-Id-Version: \n"
"Report-Msgid-Bugs-To: https://bugs.libreoffice.org/enter_bug.cgi?product=LibreOffice&bug_status=UNCONFIRMED&component=UI\n"
"POT-Creation-Date: 2015-11-10 19:33+0100\n"
"PO-Revision-Date: 2016-02-20 06:22+0000\n"
"Last-Translator: ...略...\n"
"Language-Team: LANGUAGE <LL@li.org>\n"
"Language: zh_TW\n"
"MIME-Version: 1.0\n"
"Content-Type: text/plain; charset=UTF-8\n"
"Content-Transfer-Encoding: 8bit\n"
"Plural-Forms: nplurals=1; plural=0;\n"
"X-Generator: Pootle 2.7\n"
"X-Accelerator-Marker: ~\n"
"X-POOTLE-MTIME: 1455949333.000000\n"
```
