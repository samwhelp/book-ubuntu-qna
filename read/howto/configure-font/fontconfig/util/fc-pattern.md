---
layout: page
title: 如何使用「fc-pattern」這個指令
description: >
  Ubuntu環境，如何使用「fc-pattern」這個指令。
parent:
  title: 如何使用 fontconfig
  url: '/read/howto/configure-font/fontconfig'
source_url: '/read/howto/configure-font/fontconfig/util/fc-pattern.md'
---

## Manpage

執行

``` sh
$ man fc-pattern
```

可以閱讀「[Manpage](http://manpages.ubuntu.com/manpages/xenial/en/man1/fc-pattern.1.html)」的說明。

## Help

執行

``` sh
$ fc-pattern -h
```

或是執行

``` sh
$ fc-pattern --help
```

顯示

```
usage: fc-pattern [-cdVh] [-f FORMAT] [--config] [--default] [--verbose] [--format=FORMAT] [--version] [--help] [pattern] {element...}
List best font matching [pattern]

  -c, --config         perform config substitution on pattern
  -d, -default         perform default substitution on pattern
  -f, --format=FORMAT  use the given output format
  -V, --version        display font config version and exit
  -h, --help           display this help and exit
```

## Version

執行

``` sh
$ fc-pattern -V
```

或是執行

``` sh
$ fc-pattern --version
```

顯示

```
fontconfig version 2.11.94
```


## 操作範例

### pattern

執行 (這個範例，「pattern」指的是「Ubuntu Mono」)

``` sh
$ fc-pattern 'Ubuntu Mono'
```

顯示

```
Pattern has 1 elts (size 16)
        family: "Ubuntu Mono"(s)
```

執行 (這個範例，「pattern」指的是「Ubuntu Mono:style=bold」)

``` sh
$ fc-pattern 'Ubuntu Mono:style=bold'
```

顯示

```
Pattern has 2 elts (size 16)
        family: "Ubuntu Mono"(s)
        style: "bold"(s)
```

執行 (這個範例，「pattern」指的是「Ubuntu Mono:style=bold:width=100:weight=80」)

``` sh
$ fc-pattern 'Ubuntu Mono:style=bold:width=100:weight=80'
```

顯示

```
Pattern has 4 elts (size 16)
        family: "Ubuntu Mono"(s)
        style: "bold"(s)
        weight: 80(i)(s)
        width: 100(i)(s)
```

### 選項 -d

執行 (這個範例，「pattern」指的是「Ubuntu Mono:style=bold」)

``` sh
$ fc-pattern -d 'Ubuntu Mono:style=bold'
```

顯示

```
Pattern has 23 elts (size 32)
        family: "Ubuntu Mono"(s)
        familylang: "en"(s) "en-us"(w)
        style: "bold"(s)
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
        fontversion: 2147483647(i)(s)
        embeddedbitmap: True(s)
        decorative: False(s)
        namelang: "en"(s)
        prgname: "fc-pattern"(s)
        symbol: False(s)
```


### 選項 -c

執行 (這個範例，「pattern」指的是「Ubuntu Mono:style=bold」)

``` sh
$ fc-pattern -c 'Ubuntu Mono:style=bold'
```

顯示

```
Pattern has 5 elts (size 16)
        family: "Ubuntu Mono"(s) "Liberation Mono"(s) "DejaVu Sans Mono"(s) "Droid Sans Mono"(s) "Nimbus Mono L"(s) ...略... "Noto Sans Mono CJK JP"(w) "Noto Sans Mono CJK SC"(w) "Noto Sans Mono CJK TC"(w) "monospace"(w) "sans-serif"(w) "serif"(w) "sans-serif"(w) "monospace"(w) "sans-serif"(w) "sans-serif"(w)
        style: "bold"(s)
        lang: "en"(w)
        lcdfilter: 1(i)(w)
        prgname: "fc-pattern"(s)
```


### 選項 -f

執行 (這個範例，「pattern」指的是「Ubuntu Mono:style=bold」)

``` sh
$ fc-pattern -f '%{family}\n' -d 'Ubuntu Mono:style=bold'
```

顯示

```
Ubuntu Mono
```

執行 (這個範例，「pattern」指的是「Ubuntu Mono:style=bold」)

``` sh
$ fc-pattern -f 'family: %{family}\n' -d 'Ubuntu Mono:style=bold'
```

顯示

```
family: Ubuntu Mono
```

執行 (這個範例，「pattern」指的是「Ubuntu Mono:style=bold」)

``` sh
$ fc-pattern -f 'family: %{family}\nstyle: %{style}\nsize: %{size}\n' -d 'Ubuntu Mono:style=bold'
```

顯示

```
family: Ubuntu Mono
style: bold
size: 12
```


### element

執行 (這個範例，「pattern」指的是「Ubuntu Mono:style=bold」)

``` sh
$ fc-pattern -d 'Ubuntu Mono:style=bold' family style size
```

顯示

```
Pattern has 3 elts (size 16)
        family: "Ubuntu Mono"(s)
        style: "bold"(s)
        size: 12(f)(s)
```

執行 (這個範例，「pattern」指的是「Ubuntu Mono:style=bold」)

``` sh
$ fc-pattern 'Ubuntu Mono:style=bold' family style size
```

顯示

```
Pattern has 2 elts (size 16)
        family: "Ubuntu Mono"(s)
        style: "bold"(s)
```
