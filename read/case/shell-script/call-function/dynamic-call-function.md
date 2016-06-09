---
layout: page
title: Shell Script - Dynamic Call Function
description: >
  Shell Script - Dynamic Call Function 使用範例。
parent:
  title: Shell Script
  url: /read/case/shell-script
---


## 原始討論

原始討論「[回覆: function去呼叫function](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=350656#forumpost350656)」。


## 回覆內容


原本的寫法

``` sh
#!/bin/bash

AA()
{
   return 9
}

BB()
{

	xx=`AA`
	if [ $(xx) -eq 9 ]; then
		return 0
	else
		return 1
	fi

}


if [ ! $(BB) ]; then
   echo "Y"
else
   echo "N"
fi

```

改成下面的寫法

``` sh
#!/usr/bin/env bash

AA()
{
	return 9
}

BB()
{

	if [ AA -eq 9 ]; then
		return 0
	else
		return 1
	fi

}


if [ !BB  ]; then
	echo "Y"
else
	echo "N"
fi

```


執行

``` sh
$ help if
```

可以看到 help

```
if: if COMMANDS; then COMMANDS; [ elif COMMANDS; then COMMANDS; ]... [ else COMMANDS; ] fi
    Execute commands based on conditional.

    The `if COMMANDS' list is executed.  If its exit status is zero, then the
    `then COMMANDS' list is executed.  Otherwise, each `elif COMMANDS' list is
    executed in turn, and if its exit status is zero, the corresponding
    `then COMMANDS' list is executed and the if command completes.  Otherwise,
    the `else COMMANDS' list is executed, if present.  The exit status of the
    entire construct is the exit status of the last command executed, or zero
    if no condition tested true.

    Exit Status:
    Returns the status of the last command executed.

```

也可以執行

``` sh
$ help test
```

觀看相關的help


[接下來解釋一些概念](/book-ubuntu-qna/read/case/function-call/dynamic-call-function.html)
