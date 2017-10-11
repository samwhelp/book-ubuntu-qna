---
layout: page
title: 如何使用「fc-query」這個指令
description: >
  Ubuntu環境，如何使用「fc-query」這個指令。
parent:
  title: 如何使用 fontconfig
  url: '/read/howto/configure-font/fontconfig'
source_url: '/read/howto/configure-font/fontconfig/util/fc-query.md'
---

## Manpage

執行

``` sh
$ man fc-query
```

可以閱讀「[Manpage](http://manpages.ubuntu.com/manpages/xenial/en/man1/fc-query.1.html)」的說明。

## Help

執行

``` sh
$ fc-query -h
```

或是執行

``` sh
$ fc-query --help
```

顯示

```
usage: fc-query [-Vbh] [-i index] [-f FORMAT] [--ignore-blanks] [--index index] [--format FORMAT] [--version] [--help] font-file...
Query font files and print resulting pattern(s)

  -b, --ignore-blanks  ignore blanks to compute langauges
  -i, --index INDEX    display the INDEX face of each font file only
  -f, --format=FORMAT  use the given output format
  -V, --version        display font config version and exit
  -h, --help           display this help and exit
```

## Version

執行

``` sh
$ fc-query -V
```

或是執行

``` sh
$ fc-query --version
```

顯示

```
fontconfig version 2.11.94
```


## 操作範例

### 搭配 fc-list

執行

``` sh
$ fc-list | grep UbuntuMono
```

顯示

```
/usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-R.ttf: Ubuntu Mono:style=Regular
/usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-B.ttf: Ubuntu Mono:style=Bold
/usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-BI.ttf: Ubuntu Mono:style=Bold Italic
/usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-RI.ttf: Ubuntu Mono:style=Italic
```

執行

``` sh
$ fc-query /usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-R.ttf
```

顯示

```
Pattern has 24 elts (size 32)
        family: "Ubuntu Mono"(s)
        familylang: "en"(s)
        style: "Regular"(s)
        stylelang: "en"(s)
        fullname: "Ubuntu Mono"(s)
        fullnamelang: "en"(s)
        slant: 0(i)(s)
        weight: 80(i)(s)
        width: 100(i)(s)
        spacing: 100(i)(s)
        foundry: "DAMA"(s)
        file: "/usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-R.ttf"(s)
        index: 0(i)(s)
        outline: True(s)
        scalable: True(s)
        charset:
        0000: 00000000 ffffffff ffffffff 7fffffff 00000000 ffffffff ffffffff ffffffff
        0001: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0002: ffffffff ffffffff 0000ffff 00000000 00040000 10000000 3f0002c0 00000000
        0003: 00020000 00000000 00000000 00000000 ffffd770 fffffffb 00007fff 00000000
        0004: ffffffff ffffffff ffffffff 003c000c fffffc00 ffffffff ffffffff 03ffffff
        001e: 00000000 00000000 00000000 00000000 0000003f 00000000 00000000 000c0000
        001f: 3f3fffff ffffffff aaff3f3f 3fffffff ffffffff ffdfffff efcfffdf 7fdcffff
        0020: 77380000 06010047 00000010 03f10000 000003ff 02105000 00000000 00000000
        0021: 00480000 00004044 7ff80000 00000000 00000000 00000000 00000000 00000000
        0022: 46268044 00000800 00000100 00000031 00000000 00000000 00000000 00000000
        0025: 11111005 10101010 ffff0000 00001fff 000e0100 00000000 00000400 00000000
        00e0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 80000000
        00ef: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 20000000
        00f0: 00000007 00000000 00000000 00000000 00000000 00000000 00000000 00000000
        00f5: 0003ffc0 00000000 00000000 00000000 00000000 00000000 00000000 00000000
        00f8: 3ffffc00 00000000 00000000 00000000 00000000 00000000 00000000 00000000
        00fb: 00000006 00000000 00000000 00000000 00000000 00000000 00000000 00000000
        00ff: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 20000000
(s)
        lang: aa|ab|af|av|ay|ba|be|bg|bi|br|bs|bua|ca|ce|ch|chm|co|cs|cv|cy|da|de|el|en|eo|es|et|eu|fi|fj|fo|fr|fur|fy|gd|gl|gv|ho|hr|hu|ia|id|ie|ik|io|is|it|kaa|ki|kk|kl|kum|kv|kw|ky|la|lb|lez|lt|lv|mg|mh|mk|mo|mt|nb|nds|nl|nn|no|nr|nso|ny|oc|om|os|pl|pt|rm|ro|ru|sah|sco|se|sel|sh|sk|sl|sma|smj|smn|sms|so|sq|sr|ss|st|sv|sw|tg|tk|tl|tn|tr|ts|tt|tyv|uk|uz|vo|vot|wa|wen|wo|xh|yap|zu|an|crh|csb|fil|hsb|ht|jv|kj|kr|ku-tr|kwm|lg|li|mn-mn|ms|na|ng|pap-an|pap-aw|rn|rw|sc|sg|sn|su|ty|za(s)
        fontversion: 52428(i)(s)
        capability: "otlayout:cyrl otlayout:grek otlayout:latn"(s)
        fontformat: "TrueType"(s)
        decorative: False(s)
        postscriptname: "UbuntuMono-Regular"(s)
        color: False(s)
        symbol: False(s)
```

### 選項 -f

執行

``` sh
$ fc-query -f '%{fullname}\n' /usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-R.ttf
```

顯示

```
Ubuntu Mono
```

執行

``` sh
$ fc-query -f 'fullname: %{fullname}\nfontformat: %{fontformat}\n' /usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-R.ttf
```

顯示

```
fullname: Ubuntu Mono
fontformat: TrueType
```
