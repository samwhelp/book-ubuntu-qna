---
layout: page
title: 關於「FC_DEBUG」這個環境變數
description: >
  Ubuntu環境，關於「FC_DEBUG」這個環境變數。
parent:
  title: 如何使用 fontconfig
  url: '/read/howto/configure-font/fontconfig'
source_url: '/read/howto/configure-font/fontconfig/env/fc_debug.md'
---

## Manpage

執行

``` sh
$ man fonts-conf
```

或是執行

``` sh
$ man fonts.conf
```

可以閱讀「[Manpage](http://manpages.ubuntu.com/manpages/xenial/en/man5/fonts-conf.5.html)」的說明。


### ENVIRONMENT VARIABLES

然後可以看到「[ENVIRONMENT VARIABLES](http://manpages.ubuntu.com/manpages/xenial/en/man5/fonts-conf.5.html#contenttoc9)」，

裡面有一段說明如下：

```
ENVIRONMENT VARIABLES

       ...略...

       FC_DEBUG is used to output the detailed debugging messages. see Debugging Applications section for more details.
```


### DEBUGGING APPLICATIONS

然後可以看到「[DEBUGGING APPLICATIONS](http://manpages.ubuntu.com/manpages/xenial/en/man5/fonts-conf.5.html#contenttoc4)」，

裡面有一段說明如下：

```
DEBUGGING APPLICATIONS
       To  help  diagnose font and applications problems, fontconfig is built with a large amount of internal debugging left enabled. It is
       controlled by means of the FC_DEBUG environment variable. The value of this variable is interpreted as a number, and each bit within
       that value controls different debugging messages.

         Name         Value    Meaning
         ---------------------------------------------------------
         MATCH            1    Brief information about font matching
         MATCHV           2    Extensive font matching information
         EDIT             4    Monitor match/test/edit execution
         FONTSET          8    Track loading of font information at startup
         CACHE           16    Watch cache files being written
         CACHEV          32    Extensive cache file writing information
         PARSE           64    (no longer in use)
         SCAN           128    Watch font files being scanned to build caches
         SCANV          256    Verbose font file scanning information
         MEMORY         512    Monitor fontconfig memory usage
         CONFIG        1024    Monitor which config files are loaded
         LANGSET       2048    Dump char sets used to construct lang values
         OBJTYPES      4096    Display message when value typechecks fail

       Add  the value of the desired debug levels together and assign that (in base 10) to the FC_DEBUG environment variable before running
       the application. Output from these statements is sent to stdout.
```

## 操作範例


### 基本操作

執行

``` sh
$ FC_DEBUG=1 fc-match
```

執行

``` sh
$ FC_DEBUG=2 fc-match
```

執行

``` sh
$ FC_DEBUG=4 fc-match
```

執行

``` sh
$ FC_DEBUG=8 fc-match
```

執行

``` sh
$ FC_DEBUG=16 fc-match
```

執行

``` sh
$ FC_DEBUG=32 fc-match
```

執行

``` sh
$ FC_DEBUG=64 fc-match
```

執行

``` sh
$ FC_DEBUG=128 fc-match
```

執行

``` sh
$ FC_DEBUG=256 fc-match
```

執行

``` sh
$ FC_DEBUG=512 fc-match
```

執行

``` sh
$ FC_DEBUG=1024 fc-match
```

執行

``` sh
$ FC_DEBUG=2048 fc-match
```

執行

``` sh
$ FC_DEBUG=4096 fc-match
```

以上「fc-match」，可以改成「fc-cache」，「gedit」或是其他程式(不過不是所有程式都有反應)。

例如:

``` sh
$ FC_DEBUG=1024 gedit
```


### FC_DEBUG=1 (Brief information about font matching)

執行

``` sh
$ fc-match
```

顯示

```
Andika-R.ttf: "Andika" "Regular"
```

執行

``` sh
$ FC_DEBUG=1 fc-match | less
```

顯示

```
FC_DEBUG=1
Match Pattern has 24 elts (size 32)
	family: "Andika"(s) "DejaVu Sans"(s) "DejaVu LGC Sans"(s) "Noto Sans CJK TC Regular"(s) ...略... "monospace"(w) "sans-serif"(w) "serif"(w) "sans-serif"(w) "monospace"(w) "sans-serif"(w) "sans-serif"(w)
	familylang: "en"(s) "en-us"(w)
	stylelang: "en"(s) "en-us"(w)
	fullnamelang: "en"(s) "en-us"(w)
	slant: 0(i)(s)
	weight: 80(i)(s)
	width: 100(i)(s)
	size: 12(f)(s)
	pixelsize: 12.5(f)(s)
	hintstyle: 3(i)(s)
	hinting: True(s)
	verticallayout: False(s)
	autohint: False(s)
	globaladvance: True(s)
	dpi: 75(f)(s)
	scale: 1(f)(s)
	lang: "en"(w)
	fontversion: 2147483647(i)(s)
	embeddedbitmap: True(s)
	decorative: False(s)
	lcdfilter: 1(i)(w)
	namelang: "en"(s)
	prgname: "fc-match"(s)
	symbol: False(s)

Best score 0 0 0 0 0 0 0 0 0 1121 0 0 0 0 0 0 0 0 0 0 0 0 0 2.14716e+12
Pattern has 23 elts (size 23)
	family: "Andika"(w)
	familylang: "en"(w)
	style: "Regular"(w)
	stylelang: "en"(w)
	fullname: "Andika"(w)
	fullnamelang: "en"(w)
	slant: 0(i)(w)
	weight: 80(i)(w)
	width: 100(i)(w)
	foundry: "SIL "(w)
	file: "/usr/share/fonts/opentype/andika/Andika-R.ttf"(w)
	index: 0(i)(w)
	outline: True(w)
	scalable: True(w)
	charset:
	0000: 00000000 ffffffff ffffffff 7fffffff 00000000 ffffffff ffffffff ffffffff
	0001: ffffffff ffffffff fffffdff ffffffff ffffffff ffffffff ffffffff ffffffff
	0002: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0003: ffffffff fffffff9 ffffffc0 0000ffff 41180080 191e0301 000002cb 00000000
	0004: ffffffff ffffffff ffffffff 003c000c fffffc00 ffffffff ffffffff ffffffff
	0005: ffffffff 0000ffff 00000000 00000000 00000000 00000000 00000000 00000000
	001d: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff 00003ff4 e0000000
	001e: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0020: ffffffff 97fdfcff 00880013 fff3fc0f 1fff7fff 3fffffff 00000000 0000f020
	0021: 80c81000 0020204c ffff8000 ffffffff 0fff03ff 00000100 003f0000 00000000
	0022: 460e807c 10300860 80000100 00000037 000000fc 00000000 00000000 00000000
	0023: f0000f00 00000600 00000000 00000000 f8000000 00003fff 00000000 00000000
	0024: 00000000 00000008 00000000 00000000 00000000 00000000 00000000 00000000
	0025: 00000000 00000000 00000000 00000000 00000000 00000000 00001400 00000000
	0026: 00000000 00000000 00000005 0000a000 00000000 00000000 00000000 00000000
	0027: 00080000 00000000 00002000 00000000 00000000 00000000 00000000 000003c0
	002c: 00000000 00000000 00000000 ffffffff 00000100 00000000 00000000 00000000
	002e: 00003fff 0c000000 00000000 00000000 00000000 00000000 00000000 00000000
	00a7: ffffffff ffffffff ffffffff ffffffff 03ff7fff 00073fff 00000000 ff800000
	00a9: 00000000 00004000 00000000 00000000 00000000 00000000 00000000 00000000
	00ab: 00000000 00000000 00000000 00000030 00000000 00000000 00000000 00000000
	00f1: 00000000 003f0000 00000000 0f7f0000 ffe00807 ffffffff ffff7fff 03fe07ff
	00f2: ffffff00 ffffffff ffffffff 00003fff 00000000 00000000 00000000 00000000
	00f3: 00000000 00003fff 00000000 00000000 00000000 00000000 00000000 00000000
	00fb: 0000001f 00000000 00000000 00000000 00000000 00000000 00000000 00000000
	00fe: 0000ffff 0000000f 00000000 00000000 00000000 00000000 00000000 80000000
	00ff: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 20000000
	01d4: 00001000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
	01d5: 02d9c430 00000000 00000000 00000000 00000000 00000000 00000000 00000000
(w)
	lang: aa|ab|ast|av|ay|az-az|ba|bm|be|bg|bi|bin|br|bs|bua|ca|ce|ch|chm|co|cs|cv|cy|da|de|en|eo|es|et|eu|fi|fj|fo|fr|ff|fur|fy|ga|gd|gl|gn|gv|ha|haw|ho|hr|hu|ia|ig|id|ie|ik|io|is|it|kaa|ki|kk|kl|ku-am|kum|kv|kw|ky|la|lb|lez|ln|lt|lv|mg|mh|mi|mk|mo|mt|nb|nds|nl|nn|no|nr|nso|ny|oc|om|os|pl|pt|rm|ro|ru|sah|sco|se|sel|sh|shs|sk|sl|sm|sma|smj|smn|sms|so|sq|sr|ss|st|sv|sw|tg|tk|tl|tn|to|tr|ts|tt|tw|tyv|uk|uz|ve|vi|vo|vot|wa|wen|wo|xh|yap|yo|zu|ak|an|ber-dz|crh|csb|ee|fat|fil|hsb|ht|hz|jv|kab|kj|kr|ku-tr|kwm|lg|li|mn-mn|ms|na|ng|nv|pap-an|pap-aw|qu|quz|rn|rw|sc|sg|sn|su|ty|za(w)
	fontversion: 327680(i)(w)
	capability: "ttable:Silf  otlayout:DFLT otlayout:cyrl otlayout:latn"(w)
	fontformat: "TrueType"(w)
	decorative: False(w)
	postscriptname: "Andika"(w)
	color: False(w)
	symbol: False(w)

Andika-R.ttf: "Andika" "Regular"
```

### FC_DEBUG=2 (Extensive font matching information)

執行

``` sh
$ FC_DEBUG=2 fc-match | less
```

### FC_DEBUG=4 (Monitor match/test/edit execution)

執行

``` sh
$ FC_DEBUG=4 fc-match | less
```

顯示

```
FC_DEBUG=4
Add Subst match
[test]
        pattern any family Equal "mono"
[edit]
        Edit family Assign "monospace";

Add Subst match
[test]
        pattern any family Equal "sans serif"
[edit]
        Edit family Assign "sans-serif";

Add Subst match
[test]
        pattern any family Equal "sans"
[edit]
        Edit family Assign "sans-serif";

...略...
```

### FC_DEBUG=8 (Track loading of font information at startup)

執行

``` sh
$ FC_DEBUG=8 fc-match | less
```

顯示

```
FC_DEBUG=8
adding fonts from /usr/share/fonts
adding fonts from /usr/local/share/fonts
adding fonts from /home/user/.local/share/fonts
cache scan dir /home/user/.local/share/fonts
adding fonts from /home/user/.fonts
cache scan dir /home/user/.fonts
...略...
FontSet 709 of 736
Font 0 Pattern has 23 elts (size 23)
        family: "Latin Modern Mono"(w) "LM Mono 10"(w)
        familylang: "en"(w) "en"(w)
        style: "10 Italic"(w) "Italic"(w)
        stylelang: "en"(w) "en"(w)
        fullname: "LMMono10-Italic"(w) "LM Mono 10 Italic"(w) "Latin Modern Mono 10 Italic"(w)
        fullnamelang: "en"(w) "en"(w) "en"(w)
        slant: 100(i)(w)
        weight: 80(i)(w)
        width: 100(i)(w)
        foundry: "UKWN"(w)
...略...
```


### FC_DEBUG=16 (Watch cache files being written)

執行

``` sh
$ FC_DEBUG=16 fc-match | less
```

顯示

```
FC_DEBUG=16
FcCacheTimeValid dir "/usr/share/fonts" cache checksum 1491359686 dir checksum 1491359686
/usr/share/fonts: cache: 8, fs: 8
FcCacheTimeValid dir "/usr/local/share/fonts" cache checksum 1476867998 dir checksum 1476867998
/usr/local/share/fonts: cache: 2, fs: 2
...略...
```

### FC_DEBUG=32 (Extensive cache file writing information)

執行

``` sh
$ FC_DEBUG=32 fc-match | less
```

顯示

```
FC_DEBUG=32
Andika-R.ttf: "Andika" "Regular"
(END)
```

執行

``` sh
$ FC_DEBUG=32 fc-cache | less
```

顯示

```
FC_DEBUG=32
Raw pattern:
Pattern has 23 elts (size 32)
...略...
```

### FC_DEBUG=64 (no longer in use)

執行

``` sh
$ FC_DEBUG=64 fc-match
```

顯示

```
FC_DEBUG=64
Andika-R.ttf: "Andika" "Regular"
```

### FC_DEBUG=128 (Watch font files being scanned to build caches)

執行

``` sh
$ FC_DEBUG=128 fc-match
```

顯示

```
FC_DEBUG=128
	Scanning dir /usr/share/fonts
	Scanning dir /usr/local/share/fonts
...略...
Andika-R.ttf: "Andika" "Regular"
```

執行

```
$ FC_DEBUG=128 fc-cache
```

顯示

```
FC_DEBUG=128
	Scanning dir /usr/share/fonts
	Scanning dir /usr/local/share/fonts
...略...
```

### FC_DEBUG=256 (Verbose font file scanning information)

執行

``` sh
$ FC_DEBUG=256 fc-match
```

顯示

```
FC_DEBUG=256
Andika-R.ttf: "Andika" "Regular"
```

執行

``` sh
$ FC_DEBUG=256 fc-cache
```

顯示

```
FC_DEBUG=256
```

執行

``` sh
$ FC_DEBUG=256 fc-cache -rv
```

或是執行

``` sh
$ FC_DEBUG=256 fc-cache -rv > font.log
```

### FC_DEBUG=512 (Monitor fontconfig memory usage)

執行

``` sh
$ FC_DEBUG=512 fc-match
```

顯示

```
FC_DEBUG=512
Andika-R.ttf: "Andika" "Regular"
```

TODO: 目前還試不出來「512」的作用。

### FC_DEBUG=1024 (Monitor which config files are loaded)

執行

``` sh
$ FC_DEBUG=1024 fc-match
```

顯示

```
FC_DEBUG=1024
	Loading config file /etc/fonts/fonts.conf
	Scanning config dir /etc/fonts/conf.d
	Loading config file /etc/fonts/conf.d/10-antialias.conf
	Loading config file /etc/fonts/conf.d/10-hinting-slight.conf
	Loading config file /etc/fonts/conf.d/10-hinting.conf
	Loading config file /etc/fonts/conf.d/10-scale-bitmap-fonts.conf
	Loading config file /etc/fonts/conf.d/11-lcdfilter-default.conf
	Loading config file /etc/fonts/conf.d/20-unhint-small-dejavu-lgc-sans-mono.conf
	Loading config file /etc/fonts/conf.d/20-unhint-small-dejavu-lgc-sans.conf
	Loading config file /etc/fonts/conf.d/20-unhint-small-dejavu-lgc-serif.conf
	Loading config file /etc/fonts/conf.d/20-unhint-small-dejavu-sans-mono.conf
	Loading config file /etc/fonts/conf.d/20-unhint-small-dejavu-sans.conf
	Loading config file /etc/fonts/conf.d/20-unhint-small-dejavu-serif.conf
	Loading config file /etc/fonts/conf.d/20-unhint-small-vera.conf
	Loading config file /etc/fonts/conf.d/25-wqy-zenhei.conf
	Loading config file /etc/fonts/conf.d/30-cjk-aliases.conf
	Loading config file /etc/fonts/conf.d/30-metric-aliases.conf
	Loading config file /etc/fonts/conf.d/30-urw-aliases.conf
	Loading config file /etc/fonts/conf.d/40-nonlatin.conf
	Loading config file /etc/fonts/conf.d/45-latin.conf
	Loading config file /etc/fonts/conf.d/49-sansserif.conf
	Loading config file /etc/fonts/conf.d/50-user.conf
	Loading config file /home/user/.config/fontconfig/fonts.conf
	Loading config file /home/user/.fonts.conf
	Loading config file /etc/fonts/conf.d/51-local.conf
	Loading config file /etc/fonts/local.conf
	Loading config file /etc/fonts/conf.d/57-dejavu-sans-mono.conf
	Loading config file /etc/fonts/conf.d/57-dejavu-sans.conf
	Loading config file /etc/fonts/conf.d/57-dejavu-serif.conf
	Loading config file /etc/fonts/conf.d/58-dejavu-lgc-sans-mono.conf
	Loading config file /etc/fonts/conf.d/58-dejavu-lgc-sans.conf
	Loading config file /etc/fonts/conf.d/58-dejavu-lgc-serif.conf
	Loading config file /etc/fonts/conf.d/60-latin.conf
	Loading config file /etc/fonts/conf.d/64-01-tlwg-kinnari.conf
	Loading config file /etc/fonts/conf.d/64-02-tlwg-norasi.conf
	Loading config file /etc/fonts/conf.d/64-11-tlwg-waree.conf
	Loading config file /etc/fonts/conf.d/64-12-tlwg-loma.conf
	Loading config file /etc/fonts/conf.d/64-13-tlwg-garuda.conf
	Loading config file /etc/fonts/conf.d/64-14-tlwg-umpush.conf
	Loading config file /etc/fonts/conf.d/64-15-laksaman.conf
	Loading config file /etc/fonts/conf.d/64-21-tlwg-typo.conf
	Loading config file /etc/fonts/conf.d/64-22-tlwg-typist.conf
	Loading config file /etc/fonts/conf.d/64-23-tlwg-mono.conf
	Loading config file /etc/fonts/conf.d/64-language-selector-prefer.conf
	Loading config file /etc/fonts/conf.d/64-wqy-zenhei.conf
	Scanning config dir /etc/fonts/conf.d/65-0-fonts-guru-extra.conf
	Loading config file /etc/fonts/conf.d/65-0-fonts-guru-extra.conf/65-0-fonts-guru-extra.conf
	Loading config file /etc/fonts/conf.d/65-droid-sans-fallback.conf
	Loading config file /etc/fonts/conf.d/65-fonts-lmodern.conf
	Loading config file /etc/fonts/conf.d/65-fonts-persian.conf
	Loading config file /etc/fonts/conf.d/65-fonts-takao-pgothic.conf
	Loading config file /etc/fonts/conf.d/65-fonts-texgyre.conf
	Loading config file /etc/fonts/conf.d/65-khmer.conf
	Loading config file /etc/fonts/conf.d/65-nonlatin.conf
	Loading config file /etc/fonts/conf.d/65-wqy-microhei.conf
	Loading config file /etc/fonts/conf.d/66-lohit-punjabi.conf
	Loading config file /etc/fonts/conf.d/69-language-selector-zh-cn.conf
	Loading config file /etc/fonts/conf.d/69-language-selector-zh-hk.conf
	Loading config file /etc/fonts/conf.d/69-language-selector-zh-mo.conf
	Loading config file /etc/fonts/conf.d/69-language-selector-zh-sg.conf
	Loading config file /etc/fonts/conf.d/69-language-selector-zh-tw.conf
	Loading config file /etc/fonts/conf.d/69-unifont.conf
	Loading config file /etc/fonts/conf.d/70-no-bitmaps.conf
	Loading config file /etc/fonts/conf.d/80-delicious.conf
	Loading config file /etc/fonts/conf.d/89-tlwg-garuda-synthetic.conf
	Loading config file /etc/fonts/conf.d/89-tlwg-kinnari-synthetic.conf
	Loading config file /etc/fonts/conf.d/89-tlwg-laksaman-synthetic.conf
	Loading config file /etc/fonts/conf.d/89-tlwg-loma-synthetic.conf
	Loading config file /etc/fonts/conf.d/89-tlwg-umpush-synthetic.conf
	Loading config file /etc/fonts/conf.d/89-tlwg-waree-synthetic.conf
	Loading config file /etc/fonts/conf.d/90-fonts-nanum.conf
	Loading config file /etc/fonts/conf.d/90-synthetic.conf
	Loading config file /etc/fonts/conf.d/99-language-selector-zh.conf
	Loading config file /etc/fonts/conf.d/99pdftoopvp.conf
Andika-R.ttf: "Andika" "Regular"
```

### FC_DEBUG=2048 (Dump char sets used to construct lang values)

執行

``` sh
$ FC_DEBUG=2048 fc-match
```

顯示

```
FC_DEBUG=2048
Checking the existence of en-US.orth
Checking the existence of en.orth
normalized: en_US.UTF-8 -> en
Andika-R.ttf: "Andika" "Regular"
```

執行

``` sh
FC_DEBUG=2048 LANG=zh_TW.UTF-8 fc-match
```

顯示

```
FC_DEBUG=2048
Checking the existence of zh-TW.orth
normalized: zh_TW.UTF-8 -> zh-TW
Andika-R.ttf: "Andika" "Regular"
```

### FC_DEBUG=4096 (Display message when value typechecks fail)

執行

``` sh
$ FC_DEBUG=4096 fc-match
```

顯示

```
FC_DEBUG=4096
Andika-R.ttf: "Andika" "Regular"
```

TODO: 目前還試不出來「4096」的作用。
