---
layout: page
title: 關於「libc.mo」
description: >
  關於「libc.mo」
parent:
  title: 如何探索「Ubuntu」
  url: '/read/howto/explore/'
source_url: '/read/howto/explore/file-libc-mo.md'
---

## 測試環境

* Xubuntu 16.04 amd64 英文界面

## 探索步驟

執行

``` sh
$ apt-file search libc.mo
```

顯示

```
language-pack-ast-base: /usr/share/locale-langpack/ast/LC_MESSAGES/libc.mo
language-pack-be-base: /usr/share/locale-langpack/be/LC_MESSAGES/libc.mo
language-pack-bg-base: /usr/share/locale-langpack/bg/LC_MESSAGES/libc.mo
language-pack-bs: /usr/share/locale-langpack/bs/LC_MESSAGES/libc.mo
language-pack-bs-base: /usr/share/locale-langpack/bs/LC_MESSAGES/libc.mo
language-pack-ca-base: /usr/share/locale-langpack/ca/LC_MESSAGES/libc.mo
language-pack-cs-base: /usr/share/locale-langpack/cs/LC_MESSAGES/libc.mo
language-pack-da-base: /usr/share/locale-langpack/da/LC_MESSAGES/libc.mo
language-pack-de-base: /usr/share/locale-langpack/de/LC_MESSAGES/libc.mo
language-pack-el-base: /usr/share/locale-langpack/el/LC_MESSAGES/libc.mo
language-pack-en-base: /usr/share/locale-langpack/en_AU/LC_MESSAGES/libc.mo
language-pack-en-base: /usr/share/locale-langpack/en_GB/LC_MESSAGES/libc.mo
language-pack-eo-base: /usr/share/locale-langpack/eo/LC_MESSAGES/libc.mo
language-pack-es-base: /usr/share/locale-langpack/es/LC_MESSAGES/libc.mo
language-pack-fi-base: /usr/share/locale-langpack/fi/LC_MESSAGES/libc.mo
language-pack-fr-base: /usr/share/locale-langpack/fr/LC_MESSAGES/libc.mo
language-pack-gl-base: /usr/share/locale-langpack/gl/LC_MESSAGES/libc.mo
language-pack-hr-base: /usr/share/locale-langpack/hr/LC_MESSAGES/libc.mo
language-pack-hu-base: /usr/share/locale-langpack/hu/LC_MESSAGES/libc.mo
language-pack-ia-base: /usr/share/locale-langpack/ia/LC_MESSAGES/libc.mo
language-pack-id-base: /usr/share/locale-langpack/id/LC_MESSAGES/libc.mo
language-pack-it-base: /usr/share/locale-langpack/it/LC_MESSAGES/libc.mo
language-pack-ja-base: /usr/share/locale-langpack/ja/LC_MESSAGES/libc.mo
language-pack-km-base: /usr/share/locale-langpack/km/LC_MESSAGES/libc.mo
language-pack-ko-base: /usr/share/locale-langpack/ko/LC_MESSAGES/libc.mo
language-pack-lt-base: /usr/share/locale-langpack/lt/LC_MESSAGES/libc.mo
language-pack-ms-base: /usr/share/locale-langpack/ms/LC_MESSAGES/libc.mo
language-pack-nb-base: /usr/share/locale-langpack/nb/LC_MESSAGES/libc.mo
language-pack-nl-base: /usr/share/locale-langpack/nl/LC_MESSAGES/libc.mo
language-pack-oc-base: /usr/share/locale-langpack/oc/LC_MESSAGES/libc.mo
language-pack-pl-base: /usr/share/locale-langpack/pl/LC_MESSAGES/libc.mo
language-pack-pt-base: /usr/share/locale-langpack/pt/LC_MESSAGES/libc.mo
language-pack-pt-base: /usr/share/locale-langpack/pt_BR/LC_MESSAGES/libc.mo
language-pack-ro-base: /usr/share/locale-langpack/ro/LC_MESSAGES/libc.mo
language-pack-ru-base: /usr/share/locale-langpack/ru/LC_MESSAGES/libc.mo
language-pack-sk-base: /usr/share/locale-langpack/sk/LC_MESSAGES/libc.mo
language-pack-sl-base: /usr/share/locale-langpack/sl/LC_MESSAGES/libc.mo
language-pack-sq-base: /usr/share/locale-langpack/sq/LC_MESSAGES/libc.mo
language-pack-sv-base: /usr/share/locale-langpack/sv/LC_MESSAGES/libc.mo
language-pack-tr-base: /usr/share/locale-langpack/tr/LC_MESSAGES/libc.mo
language-pack-ug-base: /usr/share/locale-langpack/ug/LC_MESSAGES/libc.mo
language-pack-uk-base: /usr/share/locale-langpack/uk/LC_MESSAGES/libc.mo
language-pack-vi-base: /usr/share/locale-langpack/vi/LC_MESSAGES/libc.mo
language-pack-zh-hans-base: /usr/share/locale-langpack/zh_CN/LC_MESSAGES/libc.mo
language-pack-zh-hant-base: /usr/share/locale-langpack/zh_TW/LC_MESSAGES/libc.mo
```

執行

``` sh
$ apt-get source language-pack-zh-hant-base
```

執行

``` sh
$ find language-pack-zh-hant-base-16.04+20160627 -name libc.po
```

顯示

```
language-pack-zh-hant-base-16.04+20160627/data/zh_TW/LC_MESSAGES/libc.po
```

執行

``` sh
$ apt-get source glibc
```

執行

``` sh
$ ls glibc-2.23/po/ -1
```

顯示

```
be.po
bg.po
ca.po
cs.po
da.po
de.po
el.po
en_GB.po
eo.po
es.po
fi.po
fr.po
gl.po
hr.po
hu.po
ia.po
id.po
it.po
ja.po
ko.po
libc.pot
lt.po
Makefile
nb.po
nl.po
pl.po
pot.header
pt_BR.po
ru.po
rw.po
sk.po
sl.po
sv.po
tr.po
uk.po
vi.po
zh_CN.po
zh_TW.po
```


## Manpage

* man 1 [gettext](http://manpages.ubuntu.com/manpages/xenial/en/man1/gettext.1.html)
* man 3 [gettext](http://manpages.ubuntu.com/manpages/xenial/en/man3/gettext.3.html)


## Package

* [language-pack-zh-hant-base](https://packages.ubuntu.com/xenial/language-pack-zh-hant-base) (Source: [language-pack-zh-hant-base](https://packages.ubuntu.com/source/xenial/language-pack-zh-hant-base))
* [locales](https://packages.ubuntu.com/xenial/locales) (Source: [glibc](https://packages.ubuntu.com/source/xenial/glibc))


## Ubuntu Community Help Wiki

* [EnvironmentVariables](https://help.ubuntu.com/community/EnvironmentVariables)
* [Locale](https://help.ubuntu.com/community/Locale)


## Debian Wiki

* [EnvironmentVariables](https://wiki.debian.org/EnvironmentVariables)
* [Locale](https://wiki.debian.org/Locale)


## Wikipedia

* [Gettext](https://en.wikipedia.org/wiki/Gettext)


## [GNU gettext utilities](https://www.gnu.org/software/gettext/manual/html_node/index.html)

* [1.5 Overview of GNU gettext](https://www.gnu.org/software/gettext/manual/html_node/Overview.html#Overview)

## 相關討論

* 回覆: ubuntun 14.04, psql 無法使用 - 「[#4 ](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358364#forumpost358364)」，「[#5](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358370#forumpost358370)」
