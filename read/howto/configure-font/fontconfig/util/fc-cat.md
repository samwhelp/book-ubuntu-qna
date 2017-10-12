---
layout: page
title: 如何使用「fc-cat」這個指令
description: >
  Ubuntu環境，如何使用「fc-cat」這個指令。
parent:
  title: 如何使用 fontconfig
  url: '/read/howto/configure-font/fontconfig'
source_url: '/read/howto/configure-font/fontconfig/util/fc-cat.md'
---

## Manpage

執行

``` sh
$ man fc-cat
```

可以閱讀「[Manpage](http://manpages.ubuntu.com/manpages/xenial/en/man1/fc-cat.1.html)」的說明。

## Help

執行

``` sh
$ fc-cat -h
```

或是執行

``` sh
$ fc-cat --help
```

顯示

```
usage: fc-cat [-rv] [--recurse] [--verbose] [*-le64.cache-6|directory]...
       fc-cat [-Vh] [--version] [--help]
Reads font information cache from:
 1) specified fontconfig cache file
 2) related to a particular font directory

  -r, --recurse        recurse into subdirectories
  -v, --verbose        be verbose
  -V, --version        display font config version and exit
  -h, --help           display this help and exit
```

## Version

執行

``` sh
$ fc-cat -V
```

或是執行

``` sh
$ fc-cat --version
```

顯示

```
fontconfig version 2.11.94
```


## 操作範例

### 基本操作

執行

``` sh
$ fc-cat | less
```

執行

``` sh
$ fc-cat /usr/share/fonts | less
```

執行

``` sh
$ fc-cat -v /usr/share/fonts | less
```

執行

``` sh
$ fc-cat -r /usr/share/fonts | less
```

執行

``` sh
$ fc-cat -v -r /usr/share/fonts | less
```

執行

``` sh
$ fc-cat -rv /usr/share/fonts | less
```

### 選項 -v

執行

``` sh
$ fc-cat -v | less
```

執行

``` sh
$ fc-cat -v | grep '^Directory:' | less
```

顯示

```
/home/user/.local/share/fonts: No such file or directory
/home/user/.fonts: No such file or directory
Directory: /usr/share/fonts
Directory: /usr/local/share/fonts
...略...
```

執行

``` sh
$ fc-cat -v | grep '^Cache:' | less
```

顯示

```
/home/user/.local/share/fonts: No such file or directory
/home/user/.fonts: No such file or directory
Cache: /var/cache/fontconfig//3830d5c3ddfd5cd38a049b759396e72e-le64.cache-6
Cache: /var/cache/fontconfig//4c599c202bc5c08e2d34565a40eac3b2-le64.cache-6
...略...
```

執行

``` sh
$  fc-cat -v | grep '^Directory:' -A 1 | less
```

顯示

```
/home/user/.local/share/fonts: No such file or directory
/home/user/.fonts: No such file or directory
Directory: /usr/share/fonts
Cache: /var/cache/fontconfig//3830d5c3ddfd5cd38a049b759396e72e-le64.cache-6
--
Directory: /usr/local/share/fonts
Cache: /var/cache/fontconfig//4c599c202bc5c08e2d34565a40eac3b2-le64.cache-6
--
...略...
```

### 選項 -r

執行

``` sh
$ fc-cat -r /usr/local/share/fonts | less
```

執行

``` sh
$ fc-cat -v -r /usr/local/share/fonts | less
```
