---
layout: page
title: 如何使用「fc-match」這個指令
description: >
  Ubuntu環境，如何使用「fc-match」這個指令。
parent:
  title: 如何使用 fontconfig
  url: '/read/howto/configure-font/fontconfig'
source_url: '/read/howto/configure-font/fontconfig/util/fc-match.md'
---

## Manpage

執行

``` sh
$ man fc-match
```

可以閱讀「[Manpage](http://manpages.ubuntu.com/manpages/xenial/en/man1/fc-match.1.html)」的說明。

## Help

執行

``` sh
$ fc-match -h
```

或是執行

``` sh
$ fc-match --help
```

顯示

```
usage: fc-match [-savVh] [-f FORMAT] [--sort] [--all] [--verbose] [--format=FORMAT] [--version] [--help] [pattern] {element...}
List best font matching [pattern]

  -s, --sort           display sorted list of matches
  -a, --all            display unpruned sorted list of matches
  -v, --verbose        display entire font pattern verbosely
  -f, --format=FORMAT  use the given output format
  -V, --version        display font config version and exit
  -h, --help           display this help and exit
```

## Version

執行

``` sh
$ fc-match -V
```

或是執行

``` sh
$ fc-match --version
```

顯示

```
fontconfig version 2.11.94
```


## 操作範例

### 基本用法

執行

``` sh
$ fc-match
```

顯示

```
DejaVuSans.ttf: "DejaVu Sans" "Book"
```

### pattern

關於「pattern」的概念，可以先參考『[如何使用「fc-pattern」這個指令](/book-ubuntu-qna/read/howto/configure-font/fontconfig/util/fc-pattern.html)』這篇的說明。

執行 (這個範例，「pattern」指的是「DejaVu Sans」)

``` sh
$ fc-match 'DejaVu Sans'
```

顯示

```
DejaVuSans.ttf: "DejaVu Sans" "Book"
```

執行 (這個範例，「pattern」指的是「Ubuntu Mono」)

``` sh
$ fc-match 'Ubuntu Mono'
```

顯示

```
UbuntuMono-R.ttf: "Ubuntu Mono" "Regular"
```

執行 (這個範例，「pattern」指的是「monospace」)

``` sh
$ fc-match monospace
```

執行 (這個範例，「pattern」指的是「serif」)

``` sh
$ fc-match serif
```

執行 (這個範例，「pattern」指的是「sans-serif」)

``` sh
$ fc-match sans-serif
```

### 選項 -s

執行 (這個範例，「pattern」指的是「monospace」)

``` sh
$ fc-match -s monospace | less
```

執行 (這個範例，「pattern」指的是「serif」)

``` sh
$ fc-match -s serif | less
```

執行 (這個範例，「pattern」指的是「sans-serif」)

``` sh
$ fc-match -s sans-serif | less
```

執行 (這個範例，「pattern」指的是「mono」)

``` sh
$ fc-match -s mono | less
```

執行 (這個範例，「pattern」指的是「sans」)

``` sh
$ fc-match -s sans | less
```

執行 (這個範例，「pattern」指的是「標楷體」)

``` sh
$ fc-match -s 標楷體 | less
```

執行 (這個範例，「pattern」指的是「monospace」)

``` sh
$ fc-match -v -s monospace | less
```

執行 (這個範例，「pattern」指的是「monospace」)

``` sh
$ fc-match -f '%{fullname}\n' -s monospace | less
```


### 選項 -v

執行

```
$ fc-match -v
```

執行 (這個範例，「pattern」指的是「DejaVu Sans」)

``` sh
$ fc-match -v -s 'DejaVu Sans' | less
```

顯示

```
Pattern has 37 elts (size 48)
	family: "DejaVu Sans"(s)
	familylang: "en"(s)
	style: "Book"(s)
	stylelang: "en"(s)
	fullname: "DejaVu Sans"(s)
	fullnamelang: "en"(s)
	slant: 0(i)(s)
	weight: 80(i)(s)
	width: 100(i)(s)
	size: 12(f)(s)
	pixelsize: 12.5(f)(s)
	foundry: "PfEd"(w)
	antialias: True(w)
	hintstyle: 1(i)(w)
	hinting: True(w)
	verticallayout: False(s)
	autohint: False(s)
	globaladvance: True(s)
	file: "/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf"(w)
	index: 0(i)(w)
	outline: True(w)
	scalable: True(w)
	dpi: 75(f)(s)
	scale: 1(f)(s)
	charset:
	0000: 00000000 ffffffff ffffffff 7fffffff 00000000 ffffffff ffffffff ffffffff
	0001: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0002: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff 008873ff
	0003: ffffffff ffffffff f58effff 7cff0007 ffffd7f0 fffffffb ffffffff ffffffff
	0004: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0005: ffffffff fffe003f fe7fffff fffffffe 000006ff ffff0000 ffff00cf 001f07ff
	0006: 882016c0 07fffffe 04bfffff fe11ffff ffffffff ffffffff 002159c0 03ff0000
	0007: 00000000 00000000 00000000 00000000 00000000 00000000 ffffffff 073ff8ff
	000e: 00000000 80000000 00000000 00000000 fef02596 3bffecae 33ff3f5f 00000000
	0010: 00000000 00000000 00000000 00000000 00000000 ffffffff ffff003f 1fffffff
	0014: effffefe ffbfffff fff7f7ff ffffffff ffffffff 3fffffff ffffffff fffff7ff
	0015: ffff00ff 7fffffff fffdffff fff007ff 007ffc3f 0000ffff 40000000 00000002
	0016: 00000000 00000000 000000c0 007fc000 1fffffff 00000000 00000000 00000000
	001d: ffdfffff ffff7fcf efffffff 298007ff f8000020 ffffffff 000003f0 00000000
	001e: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff 0fffffff
	001f: 3f3fffff ffffffff aaff3f3f 3fffffff ffffffff ffdfffff efcfffdf 7fdcffff
	0020: ffffffff fffffcff ffffffff fff3fc1f 1fff7fff 273fffff 18c30000 00000002
	0021: fffffbff ffffffff ffff4bff ffffffff ffff023f ffffffff ffffffff ffffffff
	0022: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0023: f303ffff 000019f3 00000000 24380000 f8100080 00007fff 0000c000 00000128
	0024: 00000000 0000000c 00000000 000003ff 00000000 00000000 00000000 00000000
	0025: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0026: ffffffff ffffffff ffffffff ffffffff dfffffff 01ffffff 0000000f 00000004
	0027: fffff3de fffffeff 7f47afff fffffffe ff1fffff 7ffeffff 00000060 ffff0fc1
	0028: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0029: 00000cc0 00000000 00000003 00000000 00000018 00000000 003fc000 0c000800
	002a: 1ffff007 00008000 00000000 e0000c00 ffffffff 07ffc001 00000000 06000000
	002b: 87ffffff 0000001f 00180000 00000000 00000000 00000000 00000000 00000000
	002c: 00000000 00000000 00000000 feffffff 00000000 00000000 00000000 00000000
	002d: ffffffff ffff003f ffffffff 0000803f 00000000 00000000 00000000 00000000
	002e: 81000000 0000403c 00000000 00000000 00000000 00000000 00000000 00000000
	004d: 00000000 00000000 00000000 00000000 00000000 00000000 ffffffff ffffffff
	00a4: 00000000 00000000 00000000 00000000 00000000 00000000 ffff0000 ffffffff
	00a6: 00000000 00000000 00f330f0 00007ffc 00303c00 00000000 00000000 00000000
	00a7: f87fff00 ffff0ffc 00cfcfc3 000000f0 00037e0f 000007ff 00000000 ff000000
	00ef: 03ffffff 00000000 00000000 00000000 00000000 00000000 00000000 00000000
	00f0: 0000000f 00000000 00000000 00000000 00000000 00000000 00000000 00000000
	00f4: ffffffff ffffff7f 00000003 00000000 00000000 00000000 00000000 00000000
	00f6: 00000000 00000000 00000000 00000000 00000000 00000000 00000020 00000000
	00fb: e0f8007f 5f7fffff fffcffdb ffffffff ffffffff 00003c0f dff80000 f00003f0
	00fe: 0000ffff 0000000f 00000000 ffdf0000 ffffffff ffffffff ffffffff 9fffffff
	00ff: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 20000000
	0103: 7fffffff 0000000f 00000000 00000000 00000000 00000000 00000000 00000000
	01d3: ffffffff ffffffff 007fffff 00000000 00000000 00000000 00000000 00000000
	01d5: 00000000 7b000000 fffdfc5f 00000fff 00000000 ffffffff 000fffff 00000000
	01d7: 00000000 00000000 00000000 00000000 00000000 00000000 ff000000 00000fff
	01ee: ffffffef 0af7fe96 00000000 5ef7f796 00000000 00000000 00000000 00000000
	01f0: 00000000 ffff0000 ffffffff ffffffff 000fffff 7ffe7fff fffefffe 00000000
	01f4: 00000000 00226000 00000000 00000000 00000000 00000000 00000000 00000000
	01f6: ffffffff ffffefef 00000001 00000000 00000000 00000000 00000000 00000000
(w)
	lang: aa|ab|af|ar|ast|av|ay|az-az|az-ir|ba|bm|be|bg|bi|bin|br|bs|bua|ca|ce|ch|chm|co|cs|cu|cv|cy|da|de|el|en|eo|es|et|eu|fa|fi|fj|fo|fr|ff|fur|fy|ga|gd|gl|gn|gv|ha|haw|he|ho|hr|hu|hy|ia|ig|id|ie|ik|io|is|it|iu|ka|kaa|ki|kk|kl|ku-am|ku-ir|kum|kv|kw|ky|la|lb|lez|ln|lo|lt|lv|mg|mh|mi|mk|mo|mt|nb|nds|nl|nn|no|nr|nso|ny|oc|om|os|pl|pt|rm|ro|ru|sah|sco|se|sel|sh|shs|sk|sl|sm|sma|smj|smn|sms|so|sq|sr|ss|st|sv|sw|tg|tk|tl|tn|to|tr|ts|tt|tw|tyv|ug|uk|uz|ve|vi|vo|vot|wa|wen|wo|xh|yap|yi|yo|zu|ak|an|ber-dz|ber-ma|crh|csb|ee|fat|fil|hsb|ht|hz|jv|kab|kj|kr|ku-iq|ku-tr|kwm|lg|li|mn-mn|ms|na|ng|nv|ota|pap-an|pap-aw|qu|quz|rn|rw|sc|sd|sg|sn|su|ty|za(s)
	fontversion: 154009(i)(s)
	capability: "otlayout:DFLT otlayout:arab otlayout:armn otlayout:brai otlayout:cans otlayout:cher otlayout:cyrl otlayout:geor otlayout:grek otlayout:hani otlayout:hebr otlayout:kana otlayout:lao  otlayout:latn otlayout:math otlayout:nko  otlayout:ogam otlayout:runr otlayout:tfng otlayout:thai"(w)
	fontformat: "TrueType"(w)
	embeddedbitmap: True(s)
	decorative: False(s)
	lcdfilter: 1(i)(w)
	namelang: "en"(s)
	prgname: "fc-match"(s)
	postscriptname: "DejaVuSans"(w)
	color: False(w)
	symbol: False(s)

...略...
```

### 選項 -f

執行

``` sh
$ fc-match -f '%{fullname}\n'
```

顯示

```
DejaVu Sans
```

執行 (這個範例，「pattern」指的是「DejaVu Sans」)

``` sh
$ fc-match -f '%{fullname}\n' -s 'DejaVu Sans' | less
```

顯示

```
DejaVu Sans
DejaVu Sans Bold
DejaVu Sans Oblique
DejaVu Sans Bold Oblique
...略...
```

執行 (這個範例，「pattern」指的是「Ubuntu Mono」)

``` sh
$ fc-match -f '%{fullname}\n' -s 'Ubuntu Mono' | less
```

執行 (這個範例，「pattern」指的是「monospace」)

``` sh
$ fc-match -f '%{fullname}\n' -s monospace | less
```

執行 (這個範例，「pattern」指的是「serif」)

``` sh
$ fc-match -f '%{fullname}\n' -s serif | less
```

執行 (這個範例，「pattern」指的是「sans-serif」)

``` sh
$ fc-match -f '%{fullname}\n' -s sans-serif | less
```

### element

執行 (這個範例，「element」指的是「fullname file lang」，「pattern」指的是「monospace」)

``` sh
$ fc-match monospace fullname file lang
```

顯示

```
:fullname=Liberation Mono:file=/usr/share/fonts/truetype/liberation/LiberationMono-Regular.ttf:lang=aa|af|av|ay|be|bg|bi|br|bs|ca|ce|ch|co|cs|cy|da|de|el|en|eo|es|et|eu|fi|fj|fo|fr|fur|fy|gd|gl|gv|ho|hr|hu|ia|id|ie|ik|io|is|it|ki|kl|kum|la|lb|lez|lt|lv|mg|mh|mk|mo|mt|nb|nds|nl|nn|no|nr|nso|ny|oc|om|os|pl|pt|rm|ro|ru|se|sel|sk|sl|sma|smj|smn|so|sq|sr|ss|st|sv|sw|tk|tl|tn|tr|ts|uk|uz|vo|vot|wa|wen|wo|xh|yap|zu|an|crh|csb|fil|hsb|ht|jv|kj|ku-tr|kwm|lg|li|ms|na|ng|pap-an|pap-aw|rn|rw|sc|sg|sn|su|za
```

執行 (這個範例，「element」指的是「fullname file lang」，「pattern」指的是「monospace」)

``` sh
$ fc-match -s monospace fullname file lang | less
```

執行 (這個範例，「element」指的是「family style fullname file」，「pattern」指的是「monospace」)

``` sh
$ fc-match monospace family style fullname file
```

顯示

```
Liberation Mono:style=Regular:fullname=Liberation Mono:file=/usr/share/fonts/truetype/liberation/LiberationMono-Regular.ttf
```

執行 (這個範例，「element」指的是「family style fullname file lang」，「pattern」指的是「monospace」)


``` sh
$ fc-match -v monospace family style fullname file lang
```

顯示

```
Pattern has 5 elts (size 16)
	family: "Liberation Mono"(s)
	style: "Regular"(s)
	fullname: "Liberation Mono"(s)
	file: "/usr/share/fonts/truetype/liberation/LiberationMono-Regular.ttf"(w)
	lang: aa|af|av|ay|be|bg|bi|br|bs|ca|ce|ch|co|cs|cy|da|de|el|en|eo|es|et|eu|fi|fj|fo|fr|fur|fy|gd|gl|gv|ho|hr|hu|ia|id|ie|ik|io|is|it|ki|kl|kum|la|lb|lez|lt|lv|mg|mh|mk|mo|mt|nb|nds|nl|nn|no|nr|nso|ny|oc|om|os|pl|pt|rm|ro|ru|se|sel|sk|sl|sma|smj|smn|so|sq|sr|ss|st|sv|sw|tk|tl|tn|tr|ts|uk|uz|vo|vot|wa|wen|wo|xh|yap|zu|an|crh|csb|fil|hsb|ht|jv|kj|ku-tr|kwm|lg|li|ms|na|ng|pap-an|pap-aw|rn|rw|sc|sg|sn|su|za(s)
```


## 相關討論

* 回覆: 關於steam遊戲--Portal 2 無法顯示中文字型 - 「[#8](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358498#forumpost358498)」，「[#10](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358532#forumpost358532)」，「[#3](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=355982#forumpost355982)」
* [#13 回覆: [自製文件分享]以Windows思維用Linux-GNOME桌面篇-第二版](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=347814#forumpost347814)
* [fc-match的使用](http://samwhelp.github.io/book-ubuntu-basic-skill/book/content/font/fc-match.html)
