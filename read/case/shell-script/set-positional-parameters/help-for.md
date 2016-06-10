---
layout: page
title: Shell Script - for 用法說明
description: >
  Shell Script - for 用法說明。
parent:
  title: Shell Script
  url: /read/case/shell-script
---


## 原始討論

原始討論「[回覆: 「set --」的用法?](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=350932#forumpost350932)」


## 回覆內容


執行

``` sh
$ help for
```


顯示

```
for: for NAME [in WORDS ... ] ; do COMMANDS; done
    Execute commands for each member in a list.

    The `for' loop executes a sequence of commands for each member in a
    list of items.  If `in WORDS ...;' is not present, then `in "$@"' is
    assumed.  For each element in WORDS, NAME is set to that element, and
    the COMMANDS are executed.

    Exit Status:
    Returns the status of the last command executed.

```

look

```
If `in WORDS ...;' is not present, then `in "$@"' is
    assumed.

```

## 說明連結

* 「help [for](https://www.gnu.org/software/bash/manual/bashref.html#Looping-Constructs)」
* 「[$@](https://www.gnu.org/software/bash/manual/bashref.html#index-_0024_0040)」

[接下來...](/book-ubuntu-qna/read/case/shell-script/set-positional-parameters/set-positional-parameters.html)
