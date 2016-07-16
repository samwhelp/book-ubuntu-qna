---
layout: page
title: 從「指令」找到「使用說明」
description: >
  從「指令」找到「使用說明」。
parent:
  title: 如何探索「Ubuntu」
  url: '/read/howto/exploration/'
---


## 前提

使用最常用的指令「[ls](http://manpages.ubuntu.com/manpages/xenial/en/man1/ls.1.html)」來當案例說明。


## 步驟

執行

``` sh
$ whatis ls
```

或是執行

``` sh
$ man -f ls
```

顯示

```
ls (1)               - list directory contents
```

## 閱讀使用說明

執行

$ man [ls](http://manpages.ubuntu.com/manpages/xenial/en/man1/ls.1.html)

或是執行

$ man 1 [ls](http://manpages.ubuntu.com/manpages/xenial/en/man1/ls.1.html)

就可以看到「ls」的使用說明。

註: 若是「bash」內建的指令，則是可以使用「help」，例如「$ help if」，可以參考「[這篇](http://samwhelp.github.io/book-ubuntu-basic-skill/book/content/manual/bash-help.html)」。

## Manpage Sections

上面的「man 1 ls」，「1」指的就是「Section」。

執行下面指令可以看到各個「Section」的簡介。

``` sh
$ whatis intro | sort
```

顯示

``` sh
intro (1)            - introduction to user commands
intro (2)            - introduction to system calls
intro (3)            - introduction to library functions
intro (4)            - introduction to special files
intro (5)            - introduction to file formats
intro (6)            - introduction to games
intro (7)            - introduction to overview, conventions, and miscellany section
intro (8)            - introduction to administration and privileged commands
```

然後分別執行下面的指令，可以閱讀更詳細的說明

* $ man 1 [intro](http://manpages.ubuntu.com/manpages/xenial/en/man1/intro.1.html)
* $ man 2 [intro](http://manpages.ubuntu.com/manpages/xenial/en/man2/intro.2.html)
* $ man 3 [intro](http://manpages.ubuntu.com/manpages/xenial/en/man3/intro.3.html)
* $ man 4 [intro](http://manpages.ubuntu.com/manpages/xenial/en/man4/intro.4.html)
* $ man 5 [intro](http://manpages.ubuntu.com/manpages/xenial/en/man5/intro.5.html)
* $ man 6 [intro](http://manpages.ubuntu.com/manpages/xenial/en/man6/intro.6.html)
* $ man 7 [intro](http://manpages.ubuntu.com/manpages/xenial/en/man7/intro.7.html)
* $ man 8 [intro](http://manpages.ubuntu.com/manpages/xenial/en/man8/intro.8.html)


註：上面的頁面也可以從「[網頁來查詢](http://manpages.ubuntu.com/cgi-bin/search.py?q=intro)」

或是執行下面的指令，來閱讀所有的。

``` sh
$ man -a intro
```


也可以執行下面的指令

$ man [man](http://manpages.ubuntu.com/manpages/xenial/en/man1/man.1.html)

或是執行

$ man 1 [man](http://manpages.ubuntu.com/manpages/xenial/en/man1/man.1.html)

就可以看到一個列表

```
The table below shows the section numbers of the manual followed by the types of pages they contain.

1   Executable programs or shell commands
2   System calls (functions provided by the kernel)
3   Library calls (functions within program libraries)
4   Special files (usually found in /dev)
5   File formats and conventions eg /etc/passwd
6   Games
7   Miscellaneous (including macro packages and conventions), e.g. man(7), groff(7)
8   System administration commands (usually only for root)
9   Kernel routines [Non standard]

A manual page consists of several sections.
```

## 後續

接下來，來了解，如何『[從「指令」找到「所屬套件」](/book-ubuntu-qna/read/howto/exploration/command-and-package.html)』。
