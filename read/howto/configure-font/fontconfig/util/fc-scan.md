---
layout: page
title: 如何使用「fc-scan」這個指令
description: >
  Ubuntu環境，如何使用「fc-scan」這個指令。
parent:
  title: 如何使用 fontconfig
  url: '/read/howto/configure-font/fontconfig'
source_url: '/read/howto/configure-font/fontconfig/util/fc-scan.md'
---

## Manpage

執行

``` sh
$ man fc-scan
```

可以閱讀「[Manpage](http://manpages.ubuntu.com/manpages/xenial/en/man1/fc-scan.1.html)」的說明。

## Help

執行

``` sh
$ fc-scan -h
```

或是執行

``` sh
$ fc-scan --help
```

顯示

```
usage: fc-scan [-Vbh] [-f FORMAT] [--ignore-blanks] [--format FORMAT] [--version] [--help] font-file...
Scan font files and directories, and print resulting pattern(s)

  -b, --ignore-blanks  ignore blanks to compute languages
  -f, --format=FORMAT  use the given output format
  -V, --version        display font config version and exit
  -h, --help           display this help and exit
```

## Version

執行

``` sh
$ fc-scan -V
```

或是執行

``` sh
$ fc-scan --version
```

顯示

```
fontconfig version 2.11.94
```


## 操作範例

## 基本操作

執行

``` sh
$ tree /usr/share/fonts/truetype/ubuntu-font-family
```

顯示

```
/usr/share/fonts/truetype/ubuntu-font-family
├── Ubuntu-BI.ttf
├── Ubuntu-B.ttf
├── Ubuntu-C.ttf
├── Ubuntu-LI.ttf
├── Ubuntu-L.ttf
├── Ubuntu-MI.ttf
├── UbuntuMono-BI.ttf
├── UbuntuMono-B.ttf
├── UbuntuMono-RI.ttf
├── UbuntuMono-R.ttf
├── Ubuntu-M.ttf
├── Ubuntu-RI.ttf
└── Ubuntu-R.ttf

0 directories, 13 files
```

執行 (掃描檔案)

``` sh
$ fc-scan /usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-B.ttf
```

顯示

```
Pattern has 23 elts (size 32)
        family: "Ubuntu"(s)
        familylang: "en"(s)
        style: "Bold"(s)
        stylelang: "en"(s)
        fullname: "Ubuntu Bold"(s)
        fullnamelang: "en"(s)
        slant: 0(i)(s)
        weight: 200(i)(s)
        width: 100(i)(s)
        foundry: "DAMA"(s)
        file: "/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-B.ttf"(s)
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
        0025: 00000000 00000000 00000000 00000000 00000000 00000000 00000400 00000000
        00e0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 80000000
        00ef: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 20000000
        00f0: 00000007 00000000 00000000 00000000 00000000 00000000 00000000 80000000
        00f2: 00000001 00000000 00000000 00000000 00000000 00000000 00000000 00000000
        00f5: 0003ffc0 00000000 00000000 00000000 00000000 00000000 00000000 00000000
        00f8: 3fffffff 00000000 00000000 00000000 00000000 00000000 00000000 00000000
        00fb: 0000001f 00000000 00000000 00000000 00000000 00000000 00000000 00000000
(s)
        lang: aa|ab|af|av|ay|ba|be|bg|bi|br|bs|bua|ca|ce|ch|chm|co|cs|cv|cy|da|de|el|en|eo|es|et|eu|fi|fj|fo|fr|fur|fy|gd|gl|gv|ho|hr|hu|ia|id|ie|ik|io|is|it|kaa|ki|kk|kl|kum|kv|kw|ky|la|lb|lez|lt|lv|mg|mh|mk|mo|mt|nb|nds|nl|nn|no|nr|nso|ny|oc|om|os|pl|pt|rm|ro|ru|sah|sco|se|sel|sh|sk|sl|sma|smj|smn|sms|so|sq|sr|ss|st|sv|sw|tg|tk|tl|tn|tr|ts|tt|tyv|uk|uz|vo|vot|wa|wen|wo|xh|yap|zu|an|crh|csb|fil|hsb|ht|jv|kj|kr|ku-tr|kwm|lg|li|mn-mn|ms|na|ng|pap-an|pap-aw|rn|rw|sc|sg|sn|su|ty|za(s)
        fontversion: 54395(i)(s)
        capability: "otlayout:cyrl otlayout:grek otlayout:latn"(s)
        fontformat: "TrueType"(s)
        decorative: False(s)
        postscriptname: "Ubuntu-Bold"(s)
        color: False(s)
        symbol: False(s)
```

執行 (掃描資料夾)

``` sh
$ fc-scan /usr/share/fonts/truetype/ubuntu-font-family | less
```

顯示

```
Pattern has 23 elts (size 32)
        family: "Ubuntu"(s)
        familylang: "en"(s)
        style: "Bold"(s)
        stylelang: "en"(s)
        fullname: "Ubuntu Bold"(s)
        fullnamelang: "en"(s)
        slant: 0(i)(s)
        weight: 200(i)(s)
        width: 100(i)(s)
        foundry: "DAMA"(s)
        file: "/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-B.ttf"(s)
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
        0025: 00000000 00000000 00000000 00000000 00000000 00000000 00000400 00000000
        00e0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 80000000
        00ef: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 20000000
        00f0: 00000007 00000000 00000000 00000000 00000000 00000000 00000000 80000000
        00f2: 00000001 00000000 00000000 00000000 00000000 00000000 00000000 00000000
        00f5: 0003ffc0 00000000 00000000 00000000 00000000 00000000 00000000 00000000
        00f8: 3fffffff 00000000 00000000 00000000 00000000 00000000 00000000 00000000
        00fb: 0000001f 00000000 00000000 00000000 00000000 00000000 00000000 00000000
(s)
        lang: aa|ab|af|av|ay|ba|be|bg|bi|br|bs|bua|ca|ce|ch|chm|co|cs|cv|cy|da|de|el|en|eo|es|et|eu|fi|fj|fo|fr|fur|fy|gd|gl|gv|ho|hr|hu|ia|id|ie|ik|io|is|it|kaa|ki|kk|kl|kum|kv|kw|ky|la|lb|lez|lt|lv|mg|mh|mk|mo|mt|nb|nds|nl|nn|no|nr|nso|ny|oc|om|os|pl|pt|rm|ro|ru|sah|sco|se|sel|sh|sk|sl|sma|smj|smn|sms|so|sq|sr|ss|st|sv|sw|tg|tk|tl|tn|tr|ts|tt|tyv|uk|uz|vo|vot|wa|wen|wo|xh|yap|zu|an|crh|csb|fil|hsb|ht|jv|kj|kr|ku-tr|kwm|lg|li|mn-mn|ms|na|ng|pap-an|pap-aw|rn|rw|sc|sg|sn|su|ty|za(s)
        fontversion: 54395(i)(s)
        capability: "otlayout:cyrl otlayout:grek otlayout:latn"(s)
        fontformat: "TrueType"(s)
        decorative: False(s)
        postscriptname: "Ubuntu-Bold"(s)
        color: False(s)
        symbol: False(s)

...略...
```

### 選項 -f

執行

``` sh
$ fc-scan -f "%{family}\n" /usr/share/fonts/truetype/ubuntu-font-family
```

顯示

```
Ubuntu
Ubuntu
Ubuntu Condensed
Ubuntu,Ubuntu Light
Ubuntu,Ubuntu Light
Ubuntu,Ubuntu Light
Ubuntu,Ubuntu Light
Ubuntu
Ubuntu
Ubuntu Mono
Ubuntu Mono
Ubuntu Mono
Ubuntu Mono
```

執行

``` sh
$ fc-scan -f "Family: %{family}\n" /usr/share/fonts/truetype/ubuntu-font-family
```

顯示

```
Family: Ubuntu
Family: Ubuntu
Family: Ubuntu Condensed
Family: Ubuntu,Ubuntu Light
Family: Ubuntu,Ubuntu Light
Family: Ubuntu,Ubuntu Light
Family: Ubuntu,Ubuntu Light
Family: Ubuntu
Family: Ubuntu
Family: Ubuntu Mono
Family: Ubuntu Mono
Family: Ubuntu Mono
Family: Ubuntu Mono
```

執行

``` sh
$ fc-scan -f "Family: %{family}\nFullname: %{fullname}\nStyle: %{style}\n\n" /usr/share/fonts/truetype/ubuntu-font-family
```

顯示

```
Family: Ubuntu
Fullname: Ubuntu Bold
Style: Bold

Family: Ubuntu
Fullname: Ubuntu Bold Italic
Style: Bold Italic

Family: Ubuntu Condensed
Fullname: Ubuntu Condensed
Style: Regular

Family: Ubuntu,Ubuntu Light
Fullname: Ubuntu Light
Style: Light,Regular

Family: Ubuntu,Ubuntu Light
Fullname: Ubuntu Light Italic
Style: Light Italic,Italic

Family: Ubuntu,Ubuntu Light
Fullname: Ubuntu Medium
Style: Medium,Bold

Family: Ubuntu,Ubuntu Light
Fullname: Ubuntu Medium Italic
Style: Medium Italic,Bold Italic

Family: Ubuntu
Fullname: Ubuntu
Style: Regular

Family: Ubuntu
Fullname: Ubuntu Italic
Style: Italic

Family: Ubuntu Mono
Fullname: Ubuntu Mono Bold
Style: Bold

Family: Ubuntu Mono
Fullname: Ubuntu Mono Bold Italic
Style: Bold Italic

Family: Ubuntu Mono
Fullname: Ubuntu Mono
Style: Regular

Family: Ubuntu Mono
Fullname: Ubuntu Mono Italic
Style: Italic
```
