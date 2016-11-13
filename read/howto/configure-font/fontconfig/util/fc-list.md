---
layout: page
title: 如何使用「fc-list」這個指令
description: >
  Ubuntu環境，如何使用「fc-list」這個指令。
parent:
  title: 如何使用 fontconfig
  url: '/read/howto/configure-font/fontconfig'
source_url: '/read/howto/configure-font/fontconfig/util/fc-list.md'
---

## Manpage

執行

``` sh
$ man fc-list
```

可以閱讀「[Manpage](http://manpages.ubuntu.com/manpages/xenial/en/man1/fc-list.1.html)」的說明。

## Help

執行

``` sh
$ fc-list -h
```

或是執行

``` sh
$ fc-list --help
```

顯示

```
usage: fc-list [-vqVh] [-f FORMAT] [--verbose] [--format=FORMAT] [--quiet] [--version] [--help] [pattern] {element ...}
List fonts matching [pattern]

  -v, --verbose        display entire font pattern verbosely
  -f, --format=FORMAT  use the given output format
  -q, --quiet          suppress all normal output, exit 1 if no fonts matched
  -V, --version        display font config version and exit
  -h, --help           display this help and exit
```

## Version

執行

``` sh
$ fc-list -V
```

或是執行

``` sh
$ fc-list --version
```

顯示

```
fontconfig version 2.11.94
```


## 操作範例

### 基本

執行

``` sh
$ fc-list
```

會顯示一個列表如下，表示列出目前安裝在系統上的所有字型。

```
...略...
/usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-BI.ttf: Ubuntu Mono:style=Bold Italic
/usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-B.ttf: Ubuntu Mono:style=Bold
/usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-RI.ttf: Ubuntu Mono:style=Italic
/usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-R.ttf: Ubuntu Mono:style=Regular
...略...
```

### 搭配 wc 計算筆數(行數)

執行

``` sh
$ fc-list | wc -l
```

顯示

```
642
```

### 搭配 more 分頁觀看

執行

``` sh
$ fc-list | more
```

### 搭配 less 分頁觀看

執行

``` sh
$ fc-list | less
```

### 搭配 sort 排序

執行

``` sh
$ fc-list | sort
```

執行

``` sh
$ fc-list | sort | more
```

執行

``` sh
$ fc-list | sort | less
```

### 搭配 grep 過濾

執行

``` sh
$ fc-list | grep Ubuntu
```

顯示

```
/usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-R.ttf: Ubuntu Mono:style=Regular
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-RI.ttf: Ubuntu:style=Italic
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-R.ttf: Ubuntu:style=Regular
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-C.ttf: Ubuntu Condensed:style=Regular
/usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-B.ttf: Ubuntu Mono:style=Bold
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-LI.ttf: Ubuntu,Ubuntu Light:style=Light Italic,Italic
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-M.ttf: Ubuntu,Ubuntu Light:style=Medium,Bold
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-L.ttf: Ubuntu,Ubuntu Light:style=Light,Regular
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-MI.ttf: Ubuntu,Ubuntu Light:style=Medium Italic,Bold Italic
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-B.ttf: Ubuntu:style=Bold
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-BI.ttf: Ubuntu:style=Bold Italic
/usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-BI.ttf: Ubuntu Mono:style=Bold Italic
/usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-RI.ttf: Ubuntu Mono:style=Italic
```


執行

``` sh
$ fc-list | grep TW
```

顯示

```
/usr/local/share/fonts/CNS11643/TW-Kai-98_1.ttf: TW\-Kai,全字庫正楷體:style=Regular
/usr/local/share/fonts/CNS11643/TW-Sung-Plus-98_1.ttf: TW\-Sung\-Plus,全字庫正宋體 Plus:style=Regular
/usr/local/share/fonts/CNS11643/TW-Sung-Ext-B-98_1.ttf: TW\-Sung\-Ext\-B,全字庫正宋體 Ext\-B:style=Regular
/usr/local/share/fonts/CNS11643/TW-Sung-98_1.ttf: TW\-Sung,全字庫正宋體:style=Regular
/usr/local/share/fonts/CNS11643/TW-Kai-Plus-98_1.ttf: TW\-Kai\-Plus,全字庫正楷體 Plus:style=Regular
/usr/local/share/fonts/CNS11643/TW-Kai-Ext-B-98_1.ttf: TW\-Kai\-Ext\-B,全字庫正楷體 Ext\-B:style=Regular
```


執行

``` sh
$ fc-list | grep 全字庫
```

顯示

```
/usr/local/share/fonts/CNS11643/TW-Kai-98_1.ttf: TW\-Kai,全字庫正楷體:style=Regular
/usr/local/share/fonts/CNS11643/TW-Sung-Plus-98_1.ttf: TW\-Sung\-Plus,全字庫正宋體 Plus:style=Regular
/usr/local/share/fonts/CNS11643/TW-Sung-Ext-B-98_1.ttf: TW\-Sung\-Ext\-B,全字庫正宋體 Ext\-B:style=Regular
/usr/local/share/fonts/CNS11643/TW-Sung-98_1.ttf: TW\-Sung,全字庫正宋體:style=Regular
/usr/local/share/fonts/CNS11643/TW-Kai-Plus-98_1.ttf: TW\-Kai\-Plus,全字庫正楷體 Plus:style=Regular
/usr/local/share/fonts/CNS11643/TW-Kai-Ext-B-98_1.ttf: TW\-Kai\-Ext\-B,全字庫正楷體 Ext\-B:style=Regular
```

### pattern

執行

``` sh
$ fc-list Ubuntu
```

顯示

```
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-RI.ttf: Ubuntu:style=Italic
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-R.ttf: Ubuntu:style=Regular
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-LI.ttf: Ubuntu,Ubuntu Light:style=Light Italic,Italic
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-M.ttf: Ubuntu,Ubuntu Light:style=Medium,Bold
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-L.ttf: Ubuntu,Ubuntu Light:style=Light,Regular
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-MI.ttf: Ubuntu,Ubuntu Light:style=Medium Italic,Bold Italic
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-B.ttf: Ubuntu:style=Bold
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-BI.ttf: Ubuntu:style=Bold Italic
```

執行

``` sh
$ fc-list 'Ubuntu Mono'
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
$ fc-list 'TW\-Kai'
```

顯示

```
/usr/local/share/fonts/CNS11643/TW-Kai-98_1.ttf: TW\-Kai,全字庫正楷體:style=Regular
```

執行

``` sh
$ fc-list '全字庫正楷體'
```

顯示

```
/usr/local/share/fonts/CNS11643/TW-Kai-98_1.ttf: TW\-Kai,全字庫正楷體:style=Regular
```

執行

``` sh
$ fc-list :monospace
```

執行

``` sh
$ fc-list :mono
```

執行

``` sh
$ fc-list :sans-serief
```

執行

``` sh
$ fc-list :sans
```

執行

``` sh
$ fc-list :serief
```

執行

``` sh
$ fc-list :lang=zh-tw
```

顯示

```
usr/local/share/fonts/CNS11643/TW-Kai-98_1.ttf: TW\-Kai,全字庫正楷體:style=Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Bold.ttc: Noto Sans CJK JP,Noto Sans CJK JP Bold:style=Bold,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Bold.ttc: Noto Sans Mono CJK KR,Noto Sans Mono CJK KR Bold:style=Bold,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Black.ttc: Noto Sans CJK TC,Noto Sans CJK TC Black:style=Black,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Black.ttc: Noto Sans CJK KR,Noto Sans CJK KR Black:style=Black,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Bold.ttc: Noto Sans Mono CJK JP,Noto Sans Mono CJK JP Bold:style=Bold,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Medium.ttc: Noto Sans CJK JP,Noto Sans CJK JP Medium:style=Medium,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc: Noto Sans CJK JP,Noto Sans CJK JP Regular:style=Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Light.ttc: Noto Sans CJK KR,Noto Sans CJK KR Light:style=Light,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Black.ttc: Noto Sans CJK SC,Noto Sans CJK SC Black:style=Black,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Bold.ttc: Noto Sans Mono CJK TC,Noto Sans Mono CJK TC Bold:style=Bold,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc: Noto Sans CJK KR,Noto Sans CJK KR Regular:style=Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Light.ttc: Noto Sans CJK SC,Noto Sans CJK SC Light:style=Light,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Medium.ttc: Noto Sans CJK KR,Noto Sans CJK KR Medium:style=Medium,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Bold.ttc: Noto Sans Mono CJK SC,Noto Sans Mono CJK SC Bold:style=Bold,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc: Noto Sans Mono CJK JP,Noto Sans Mono CJK JP Regular:style=Regular
/usr/share/fonts/truetype/droid/DroidSansFallbackFull.ttf: Droid Sans Fallback:style=Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Bold.ttc: Noto Sans CJK TC,Noto Sans CJK TC Bold:style=Bold,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-DemiLight.ttc: Noto Sans CJK JP,Noto Sans CJK JP DemiLight:style=DemiLight,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Thin.ttc: Noto Sans CJK JP,Noto Sans CJK JP Thin:style=Thin,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Light.ttc: Noto Sans CJK JP,Noto Sans CJK JP Light:style=Light,Regular
/usr/local/share/fonts/CNS11643/TW-Sung-98_1.ttf: TW\-Sung,全字庫正宋體:style=Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Thin.ttc: Noto Sans CJK KR,Noto Sans CJK KR Thin:style=Thin,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc: Noto Sans Mono CJK KR,Noto Sans Mono CJK KR Regular:style=Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Thin.ttc: Noto Sans CJK SC,Noto Sans CJK SC Thin:style=Thin,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Bold.ttc: Noto Sans CJK SC,Noto Sans CJK SC Bold:style=Bold,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-DemiLight.ttc: Noto Sans CJK TC,Noto Sans CJK TC DemiLight:style=DemiLight,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc: Noto Sans CJK SC,Noto Sans CJK SC Regular:style=Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-DemiLight.ttc: Noto Sans CJK SC,Noto Sans CJK SC DemiLight:style=DemiLight,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Medium.ttc: Noto Sans CJK TC,Noto Sans CJK TC Medium:style=Medium,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Black.ttc: Noto Sans CJK JP,Noto Sans CJK JP Black:style=Black,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Medium.ttc: Noto Sans CJK SC,Noto Sans CJK SC Medium:style=Medium,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc: Noto Sans CJK TC,Noto Sans CJK TC Regular:style=Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-DemiLight.ttc: Noto Sans CJK KR,Noto Sans CJK KR DemiLight:style=DemiLight,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc: Noto Sans Mono CJK TC,Noto Sans Mono CJK TC Regular:style=Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc: Noto Sans Mono CJK SC,Noto Sans Mono CJK SC Regular:style=Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Thin.ttc: Noto Sans CJK TC,Noto Sans CJK TC Thin:style=Thin,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Light.ttc: Noto Sans CJK TC,Noto Sans CJK TC Light:style=Light,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Bold.ttc: Noto Sans CJK KR,Noto Sans CJK KR Bold:style=Bold,Regular
```

驗證一下，執行下面指令

``` sh
$ fc-query /usr/local/share/fonts/CNS11643/TW-Kai-98_1.ttf | grep zh-tw
```

顯示

```
familylang: "zh-tw"(s) "en"(s)
stylelang: "zh-tw"(s)
fullnamelang: "zh-tw"(s) "en"(s)
lang: aa|ab|af|am|ar|as|ast|av|ay|az-az|az-ir|ba|bm|be|bg|bh|bho|bi|bin|bn|bo|br|bs|bua|ca|ce|ch|chm|chr|co|cs|cu|cv|cy|da|de|dz|el|en|eo|es|et|eu|fa|fi|fj|fo|fr|ff|fur|fy|ga|gd|gez|gl|gn|gu|gv|ha|haw|he|hi|ho|hr|hu|hy|ia|ig|id|ie|ik|io|is|it|iu|ja|ka|kaa|ki|kk|kl|km|kn|kok|ku-ir|kum|kv|kw|ky|la|lb|lez|ln|lo|lt|lv|mg|mh|mi|mk|ml|mn-cn|mo|mr|mt|my|nb|nds|ne|nl|nn|no|nr|nso|ny|oc|om|or|os|pa|pl|ps-af|ps-pk|pt|rm|ro|ru|sa|sah|sco|se|sel|sh|shs|si|sk|sl|sm|sma|smj|smn|sms|so|sq|sr|ss|st|sv|sw|syr|ta|te|tg|th|ti-er|ti-et|tig|tk|tl|tn|to|tr|ts|tt|tw|tyv|ug|uk|ur|uz|ve|vi|vo|vot|wa|wen|wo|xh|yap|yi|yo|zh-tw|zu|ak|an|ber-dz|byn|crh|csb|dv|ee|fat|fil|hne|hsb|ht|hz|ii|jv|kab|kj|ku-iq|ku-tr|kwm|lg|li|mai|mn-mn|ms|na|ng|nv|ota|pa-pk|pap-an|pap-aw|qu|quz|rn|rw|sc|sd|sg|sid|sn|su|ty|wal|za|lah|brx|sat|doi(s)
```

執行

``` sh
$ fc-list :familylang=zh-tw
```

執行

``` sh
$ fc-list :stylelang=zh-tw
```

執行

``` sh
$ fc-list :fullnamelang=zh-tw
```

顯示

```
/usr/local/share/fonts/CNS11643/TW-Kai-98_1.ttf: TW\-Kai,全字庫正楷體:style=Regular
/usr/local/share/fonts/CNS11643/TW-Sung-Plus-98_1.ttf: TW\-Sung\-Plus,全字庫正宋體 Plus:style=Regular
/usr/local/share/fonts/rxkt/rx_kt_mac.ttf: typography:style=Book,Regular
/usr/local/share/fonts/CNS11643/TW-Sung-Ext-B-98_1.ttf: TW\-Sung\-Ext\-B,全字庫正宋體 Ext\-B:style=Regular
/usr/local/share/fonts/CNS11643/TW-Sung-98_1.ttf: TW\-Sung,全字庫正宋體:style=Regular
/usr/local/share/fonts/CNS11643/TW-Kai-Plus-98_1.ttf: TW\-Kai\-Plus,全字庫正楷體 Plus:style=Regular
/usr/local/share/fonts/CNS11643/TW-Kai-Ext-B-98_1.ttf: TW\-Kai\-Ext\-B,全字庫正楷體 Ext\-B:style=Regular
/usr/local/share/fonts/rxkt/rxkt0.ttf: <,日星初號楷體<:style=Book
```

執行

``` sh
$ fc-list :width=100
```

執行

``` sh
$ fc-list :weight=100
```

執行

``` sh
$ fc-list :width=100:weight=100
```

執行

``` sh
$ fc-list :lang=zh-tw:width=100:weight=80
```

執行

``` sh
$ fc-list :monospace:lang=zh-tw:width:100:weight=80
```


### 選項 -v

執行

``` sh
$ fc-list -v
```

通常會搭配「more」或是「less」來分頁

執行

```
$ fc-list -v | less
```

執行

``` sh
$ fc-list -v 'TW\-Kai'
```

顯示

```
Pattern has 22 elts (size 32)
        family: "TW-Kai"(s) "全字庫正楷體"(s)
        familylang: "en"(s) "zh-tw"(s)
        style: "Regular"(s)
        stylelang: "zh-tw"(s)
        fullname: "TW-Kai"(s) "全字庫正楷體"(s)
        fullnamelang: "en"(s) "zh-tw"(s)
        slant: 0(i)(s)
        weight: 80(i)(s)
        width: 100(i)(s)
        foundry: "CMEX"(s)
        file: "/usr/local/share/fonts/CNS11643/TW-Kai-98_1.ttf"(s)
        index: 0(i)(s)
        outline: True(s)
        scalable: True(s)
        charset:
        0000: 00000000 ffffffff ffffffff ffffffff 00000000 ffffffff ffffffff ffffffff
        0001: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0002: ffffffff 007fffff ffff0000 ffffffff ffffffff ffffffff fffffdff ffffffff
        0003: ffffffff ffffffff e0ffffff 4430ffff ffffd7f0 fffffffb ffff7fff 0fffffff
        0004: ffffffff ffffffff ffffffff ffffffff ffffff7f ffffffff ffff7fff 033fffff
        0005: 0000ffff fffe0000 fe7fffff fffffffe fffe06ff fbfffffb ffff001f 001f07ff
        0006: 883ff00f 07fffffe 01ffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0007: ffffbfff ffffffff 0000e7ff 00000000 ffffffff 0003ffff 00000000 00000000
        0009: fffffffe f3ffffff ff1f3fff 0001ffff fff99fee f3c5fdff b080399f 07ffffcf
        000a: fff987ee d36dfdff 5e003987 001fffc0 fffbbfee f3edfdff 00013bbf 0002ffcf
        000b: fff99fee f3edfdff b0c0398f 0003ffc3 d63dc7ec c3bfc718 00803dc7 07ffff80
        000c: fffddfee c3effdff 00603ddf 0000ffc3 fffddfec f3effdff 40603ddf 0000ffc3
        000d: fffddfec c3fffdff 00803dcf 0000ffc3 fc7fffec 2ffbffff ff5f847f 001c0000
        000e: fffffffe 87ffffff 0fffffff 00000000 fef02596 3bffecae 33ff3f5f 00000000
        000f: ffffffff ffffffff fffffeff fffe07ff feff0fff dfffffff 00009fff 00000000
        0010: ffffffff 03c7f6fb 03ffffff 00000000 00000000 ffffffff ffff003f 09ffffff
        0011: ffffffff ffffffff 83ffffff ffffffff ffffffff ffffff07 ffffffff 03ffffff
        0012: ffffff7f ffffffff 3d7f3d7f ffffffff ffff3d7f 7f3d7fff ff7f7f3d ffff7fff
        0013: 7f3d7fff ffffffff 07ffff7f 1ffffffe 00000000 ffffffff ffffffff 001fffff
        0014: fffffffe ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0015: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0016: ffffffff ffffffff ffffffff 007fffff 1fffffff ffffffff ffffffff 0001ffff
        0017: 001fdfff 007fffff 000fffff 000ddfff ffffffff ffffffff 3fffffff 03ff03ff
        0018: 03ff7fff ffffffff ffffffff 00ffffff ffffffff 000003ff 00000000 00000000
        0019: 1fffffff 0fff0fff fffffff1 001f3fff 00000000 00000000 00000000 ffffffff
        001d: ffffffff ffffffff ffffffff 00000fff 00000000 00000000 00000000 00000000
        001e: ffffffff ffffffff ffffffff ffffffff 0fffffff ffffffff ffffffff 03ffffff
        001f: 3f3fffff ffffffff aaff3f3f 3fffffff ffffffff ffdfffff efcfffdf 7fdcffff
        0020: ffffffff ffffffff 809fffff fff3fc0f 00007fff 0003ffff ffff0000 000007ff
        0021: ffffffff efffffff fff80fff ffffffff ffff000f ffffffff ffffffff ffffffff
        0022: ffffffff efffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0023: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff 0001ffff 00000000
        0024: ffffffff 0000007e 000007ff ffffffff ffffffff ffffffff ffffffff ffffffff
        0025: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0026: feffffff ffffffff ffffffff 3fffffff 0003ffff 00000003 00000000 00000000
        0027: fffff3de fffffeff 7f47afff fffffffe ff1fffff 7ffeffff ffff0000 ffff0fff
        0028: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0029: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        002a: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        002b: 00003fff 00000000 00000000 00000000 00000000 00000000 00000000 00000000
        002e: 00000000 00000000 00000000 00000000 fbffffff ffffffff ffffffff 000fffff
        002f: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff 003fffff 0fff0000
        0030: ffffffff ffffffff fffffffe ffffffff fe7fffff ffffffff ffffffff ffffffff
        0031: ffffffe0 fffe3fff ffffffff ffffffef ffff7fff 00ffffff 00000000 ffff0000
        0032: 7fffffff ffffffff ffff000f bfffffff ffffffff ffffffff ffffffff 7fffffff
        0033: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0034: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0035: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0036: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0037: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0038: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0039: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        003a: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        003b: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        003c: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        003d: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        003e: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        003f: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0040: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0041: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0042: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0043: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0044: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0045: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0046: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0047: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0048: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0049: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        004a: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        004b: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        004c: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        004d: ffffffff ffffffff ffffffff ffffffff ffffffff 003fffff ffffffff ffffffff
        004e: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        004f: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0050: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0051: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0052: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0053: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0054: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0055: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0056: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0057: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0058: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0059: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        005a: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        005b: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        005c: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        005d: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        005e: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        005f: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0060: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0061: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0062: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0063: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0064: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0065: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0066: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0067: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0068: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0069: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        006a: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        006b: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        006c: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        006d: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        006e: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        006f: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0070: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0071: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0072: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0073: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0074: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0075: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0076: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0077: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0078: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0079: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        007a: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        007b: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        007c: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        007d: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        007e: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        007f: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0080: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0081: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0082: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0083: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0084: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0085: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0086: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0087: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0088: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0089: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        008a: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        008b: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        008c: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        008d: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        008e: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        008f: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0090: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0091: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0092: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0093: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0094: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0095: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0096: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0097: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0098: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        0099: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        009a: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        009b: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        009c: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        009d: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        009e: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        009f: ffffffff ffffffff ffffffff ffffffff ffffffff 45fb083f 000013a6 00000000
        00a0: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        00a1: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        00a2: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        00a3: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        00a4: ffffffff ffffffff ffffffff ffffffff ffff1fff ffffffff 0000007f 00000000
        00c2: 00000000 00000000 00000000 00000000 00001000 00000000 00000000 00000000
        00f9: 00000080 00000000 00000000 00000000 00000000 00000000 00000000 00000000
        00fa: 00003000 40000100 00000000 00000000 00000000 00000000 00004000 00000000
        00fb: e0f8007f 5f7fffff ffffffdb ffffffff ffffffff 0003ffff fff80000 ffffffff
        00fc: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
        00fd: ffffffff ffffffff ffff0000 ffffffff fffcffff ffffffff 000000ff 3fff0000
        00fe: 0000ffff fffb000f fff7ffff ffdf0f7f ffffffff ffffffff ffffffff 9fffffff
        00ff: fffffffe ffffffff ffffffff ffffffff ffffffff 7fffffff 1cfcfcfc 3e007f7f
(s)
        lang: aa|ab|af|am|ar|as|ast|av|ay|az-az|az-ir|ba|bm|be|bg|bh|bho|bi|bin|bn|bo|br|bs|bua|ca|ce|ch|chm|chr|co|cs|cu|cv|cy|da|de|dz|el|en|eo|es|et|eu|fa|fi|fj|fo|fr|ff|fur|fy|ga|gd|gez|gl|gn|gu|gv|ha|haw|he|hi|ho|hr|hu|hy|ia|ig|id|ie|ik|io|is|it|iu|ja|ka|kaa|ki|kk|kl|km|kn|kok|ku-ir|kum|kv|kw|ky|la|lb|lez|ln|lo|lt|lv|mg|mh|mi|mk|ml|mn-cn|mo|mr|mt|my|nb|nds|ne|nl|nn|no|nr|nso|ny|oc|om|or|os|pa|pl|ps-af|ps-pk|pt|rm|ro|ru|sa|sah|sco|se|sel|sh|shs|si|sk|sl|sm|sma|smj|smn|sms|so|sq|sr|ss|st|sv|sw|syr|ta|te|tg|th|ti-er|ti-et|tig|tk|tl|tn|to|tr|ts|tt|tw|tyv|ug|uk|ur|uz|ve|vi|vo|vot|wa|wen|wo|xh|yap|yi|yo|zh-tw|zu|ak|an|ber-dz|byn|crh|csb|dv|ee|fat|fil|hne|hsb|ht|hz|ii|jv|kab|kj|ku-iq|ku-tr|kwm|lg|li|mai|mn-mn|ms|na|ng|nv|ota|pa-pk|pap-an|pap-aw|qu|quz|rn|rw|sc|sd|sg|sid|sn|su|ty|wal|za|lah|brx|sat|doi(s)
        fontversion: 6756761(i)(s)
        fontformat: "TrueType"(s)
        decorative: False(s)
        postscriptname: "TW-Kai-98_1"(s)
        color: False(s)
        symbol: False(s)
```

### 選項 -f

執行

``` sh
$ fc-list -f '%{file}\n'
```

顯示類似如下，表示安裝在系統上所有的字型檔案路徑列表

```
...略...
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-BI.ttf
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-B.ttf
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-C.ttf
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-LI.ttf
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-L.ttf
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-MI.ttf
/usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-BI.ttf
/usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-B.ttf
/usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-RI.ttf
/usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-R.ttf
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-M.ttf
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-RI.ttf
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-R.ttf
...略...
```


執行

``` sh
$ fc-list -f '%{file}: %{fullname}\n'
```

顯示類似如下

```
...略...
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-BI.ttf: Ubuntu Bold Italic
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-B.ttf: Ubuntu Bold
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-C.ttf: Ubuntu Condensed
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-LI.ttf: Ubuntu Light Italic
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-L.ttf: Ubuntu Light
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-MI.ttf: Ubuntu Medium Italic
/usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-BI.ttf: Ubuntu Mono Bold Italic
/usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-B.ttf: Ubuntu Mono Bold
/usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-RI.ttf: Ubuntu Mono Italic
/usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-R.ttf: Ubuntu Mono
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-M.ttf: Ubuntu Medium
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-RI.ttf: Ubuntu Italic
/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-R.ttf: Ubuntu
...略...
```


執行

``` sh
$ fc-list -f '%{fullname}\n' 'TW\-Kai'
```

顯示

```
TW-Kai,全字庫正楷體
```

執行

``` sh
$ fc-list -f '%{fullname}\n' 'TW\-Kai' | sed 's/,/\n/g'
```

顯示

```
TW-Kai
全字庫正楷體
```

執行

``` sh
$ fc-list : family style file spacing
```

執行

``` sh
$ fc-list :lang=zh-tw file
```

顯示

```
/usr/share/fonts/opentype/noto/NotoSansCJK-Bold.ttc:
/usr/share/fonts/opentype/noto/NotoSansCJK-Black.ttc:
/usr/share/fonts/truetype/droid/DroidSansFallbackFull.ttf:
/usr/share/fonts/opentype/noto/NotoSansCJK-Light.ttc:
/usr/share/fonts/opentype/noto/NotoSansCJK-DemiLight.ttc:
/usr/share/fonts/opentype/noto/NotoSansCJK-Thin.ttc:
/usr/local/share/fonts/CNS11643/TW-Kai-98_1.ttf:
/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc:
/usr/local/share/fonts/CNS11643/TW-Sung-98_1.ttf:
/usr/share/fonts/opentype/noto/NotoSansCJK-Medium.ttc:
```

執行

``` sh
$ fc-list :lang=zh-tw family style file spacing
```

顯示

```
/usr/local/share/fonts/CNS11643/TW-Kai-98_1.ttf: TW\-Kai,全字庫正楷體:style=Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Bold.ttc: Noto Sans CJK JP,Noto Sans CJK JP Bold:style=Bold,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Bold.ttc: Noto Sans Mono CJK KR,Noto Sans Mono CJK KR Bold:style=Bold,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Black.ttc: Noto Sans CJK TC,Noto Sans CJK TC Black:style=Black,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Black.ttc: Noto Sans CJK KR,Noto Sans CJK KR Black:style=Black,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Bold.ttc: Noto Sans Mono CJK JP,Noto Sans Mono CJK JP Bold:style=Bold,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Medium.ttc: Noto Sans CJK JP,Noto Sans CJK JP Medium:style=Medium,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc: Noto Sans CJK JP,Noto Sans CJK JP Regular:style=Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Light.ttc: Noto Sans CJK KR,Noto Sans CJK KR Light:style=Light,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Black.ttc: Noto Sans CJK SC,Noto Sans CJK SC Black:style=Black,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Bold.ttc: Noto Sans Mono CJK TC,Noto Sans Mono CJK TC Bold:style=Bold,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc: Noto Sans CJK KR,Noto Sans CJK KR Regular:style=Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Light.ttc: Noto Sans CJK SC,Noto Sans CJK SC Light:style=Light,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Medium.ttc: Noto Sans CJK KR,Noto Sans CJK KR Medium:style=Medium,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Bold.ttc: Noto Sans Mono CJK SC,Noto Sans Mono CJK SC Bold:style=Bold,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc: Noto Sans Mono CJK JP,Noto Sans Mono CJK JP Regular:style=Regular
/usr/share/fonts/truetype/droid/DroidSansFallbackFull.ttf: Droid Sans Fallback:style=Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Bold.ttc: Noto Sans CJK TC,Noto Sans CJK TC Bold:style=Bold,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-DemiLight.ttc: Noto Sans CJK JP,Noto Sans CJK JP DemiLight:style=DemiLight,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Thin.ttc: Noto Sans CJK JP,Noto Sans CJK JP Thin:style=Thin,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Light.ttc: Noto Sans CJK JP,Noto Sans CJK JP Light:style=Light,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Thin.ttc: Noto Sans CJK KR,Noto Sans CJK KR Thin:style=Thin,Regular
/usr/local/share/fonts/CNS11643/TW-Sung-98_1.ttf: TW\-Sung,全字庫正宋體:style=Regular:spacing=90
/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc: Noto Sans Mono CJK KR,Noto Sans Mono CJK KR Regular:style=Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Thin.ttc: Noto Sans CJK SC,Noto Sans CJK SC Thin:style=Thin,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Bold.ttc: Noto Sans CJK SC,Noto Sans CJK SC Bold:style=Bold,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-DemiLight.ttc: Noto Sans CJK TC,Noto Sans CJK TC DemiLight:style=DemiLight,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc: Noto Sans CJK SC,Noto Sans CJK SC Regular:style=Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-DemiLight.ttc: Noto Sans CJK SC,Noto Sans CJK SC DemiLight:style=DemiLight,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Medium.ttc: Noto Sans CJK TC,Noto Sans CJK TC Medium:style=Medium,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Black.ttc: Noto Sans CJK JP,Noto Sans CJK JP Black:style=Black,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Medium.ttc: Noto Sans CJK SC,Noto Sans CJK SC Medium:style=Medium,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc: Noto Sans CJK TC,Noto Sans CJK TC Regular:style=Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-DemiLight.ttc: Noto Sans CJK KR,Noto Sans CJK KR DemiLight:style=DemiLight,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc: Noto Sans Mono CJK TC,Noto Sans Mono CJK TC Regular:style=Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc: Noto Sans Mono CJK SC,Noto Sans Mono CJK SC Regular:style=Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Thin.ttc: Noto Sans CJK TC,Noto Sans CJK TC Thin:style=Thin,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Light.ttc: Noto Sans CJK TC,Noto Sans CJK TC Light:style=Light,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Bold.ttc: Noto Sans CJK KR,Noto Sans CJK KR Bold:style=Bold,Regular
```


### 搭配 fc-query

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

### 搭配 dpkg -S 找到字型檔案所屬套件

執行下面指令，先找到路徑

``` sh
$ fc-list -f '%{file}\n' 'UbuntuMono'
```

顯示

```
/usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-R.ttf
/usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-BI.ttf
/usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-B.ttf
/usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-RI.ttf
```

執行

``` sh
$ dpkg -S /usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-R.ttf
```

顯示

```
ttf-ubuntu-font-family: /usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-R.ttf
```

表示「/usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-R.ttf」這個檔案，

屬於「[ttf-ubuntu-font-family](http://packages.ubuntu.com/xenial/ttf-ubuntu-font-family)」這個套件。

上面兩個步驟，也可以合併成一個步驟

``` sh
$ dpkg -S $(fc-list -f '%{file}\n' 'UbuntuMono')
```

顯示

```
ttf-ubuntu-font-family: /usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-R.ttf
ttf-ubuntu-font-family: /usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-BI.ttf
ttf-ubuntu-font-family: /usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-B.ttf
ttf-ubuntu-font-family: /usr/share/fonts/truetype/ubuntu-font-family/UbuntuMono-RI.ttf
```
