---
layout: page
title: Shell Script - Set Positional Parameters 用法說明
description: >
  Shell Script - Set Positional Parameters 用法說明。
parent:
  title: Shell Script
  url: /read/case/shell-script
---


## 原始討論

原始討論「[回覆: 「set --」的用法?](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=350934#forumpost350934)」


## 回覆內容

執行

``` sh
$ help set
```

顯示

```
set: set [-abefhkmnptuvxBCHP] [-o option-name] [--] [arg ...]
    Set or unset values of shell options and positional parameters.

    Change the value of shell attributes and positional parameters, or
    display the names and values of shell variables.

    Options:


...略...

--  Assign any remaining arguments to the positional parameters.
	If there are no remaining arguments, the positional parameters
	are unset.

...略...

```


## 範例一

「test.sh」

``` sh
#/usr/bin/env sh

echo $@

set -- a b c

echo $@

```


執行

``` sh
$ ./test.sh 1 2 3
```

或是執行

``` sh
$ bash test.sh 1 2 3
```

或是執行

``` sh
$ sh test.sh 1 2 3
```

顯示

```
1 2 3
a b c
```


## 範例二

``` sh
#/usr/bin/env sh

echo $@

set -- *

echo $@

```

測試方法同上


## 說明連結

* 「 * 」的用法參考「[Pathname expansion](https://www.gnu.org/software/bash/manual/bashref.html#Filename-Expansion)」
* help [set](https://www.gnu.org/software/bash/manual/bashref.html#The-Set-Builtin)


[接下來...](/book-ubuntu-qna/read/case/shell-script/set-positional-parameters/unset-positional-parameters.html)
