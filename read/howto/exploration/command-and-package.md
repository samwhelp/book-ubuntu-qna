---
layout: page
title: 從「指令」找到「所屬套件」
description: >
  從「指令」找到「所屬套件」。
parent:
  title: 如何探索「Ubuntu」
  url: '/read/howto/exploration/'
---


## 前提

接續上一篇『[從「指令」找到「使用說明」]([從「指令」找到「使用說明」](/book-ubuntu-qna/read/howto/exploration/command-and-manpage.html))』，一樣使用最常用的指令「[ls](http://manpages.ubuntu.com/manpages/xenial/en/man1/ls.1.html)」來當案例說明。


## 步驟

執行

``` sh
$ dpkg -S ls
```

基本上可以找到，但會找到很多筆不是我們預期要找到的。

所以就不列顯示結果了。

執行

``` sh
$ dpkg -S ls | wc -l
```

顯示

```
11979
```

表示系統當下執行「dpkg -S ls」會列出「11979」筆。


## whereis

因此先透過「whereis」來找到「ls」所在的確切路徑。

執行

``` sh
$ whereis ls
```

顯示

```
ls: /bin/ls /usr/share/man/man1/ls.1.gz
```

所以可以找到「[ls](http://manpages.ubuntu.com/manpages/xenial/en/man1/ls.1.html)」這個指令，確切的路徑是「/bin/ls」。

然後根據這個結果，再執行下面的指令

``` sh
$ dpkg -S /bin/ls
```

顯示

```
coreutils: /bin/ls
```

表示「/bin/ls」，也就是「[ls](http://manpages.ubuntu.com/manpages/xenial/en/man1/ls.1.html)」這個指令，是屬於「[coreutils](http://packages.ubuntu.com/xenial/coreutils)」這個套件。


待續...
