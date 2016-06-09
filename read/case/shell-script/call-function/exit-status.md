---
layout: page
title: Shell Script - Exit Status
description: >
  Shell Script - Exit Status 使用範例。
parent:
  title: Shell Script
  url: /read/case/shell-script
---


## 原始討論

原始討論「[回覆: function去呼叫function](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=350658#forumpost350658)」。


## 回覆內容


範例一

``` sh
#!/usr/bin/env bash

AA()
{
	return 9
}

AA

echo $?

```


範例二

``` sh
#!/usr/bin/env bash

AA()
{
	return 9
}

echo $(AA)

```

這裡會得到空白值，不是原本預期的return，要用上面的「$?」

範例三

``` sh
#!/usr/bin/env bash

AA()
{
    echo 'abc'
}

echo $(AA)

```

範例四

``` sh
#!/usr/bin/env bash

AA()
{
    echo 'abc'
}

RS=$(AA)

echo $RS

```


範例五

``` sh
#!/usr/bin/env bash

AA()
{
    echo 'abc'
}

RS=$(AA)

$RS

```

這裡會得到「test.sh: line 10: abc: command not found」，

也就是最後一行「$RS」，是在執行「abc」，

直接下指令「abc」就會得到「abc: command not found」。


範例六

``` sh
#!/usr/bin/env bash

whattoday()
{
	date +%A
}


NOW=$(whattoday)

echo $NOW

```

除了剛剛提到的「Command Substitution」，

更多請參考「man [bash](http://manpages.ubuntu.com/manpages/trusty/en/man1/bash.1.html)」，找尋「EXIT STATUS」。


可以找到下面一段，和其他的

```
EXIT STATUS

       The  exit  status  of  an executed command is the value returned by the
       waitpid system call or equivalent function.  Exit statuses fall between
       0  and  255, though, as explained below, the shell may use values above
       125 specially.  Exit statuses from shell builtins and compound commands
       are  also limited to this range. Under certain circumstances, the shell
       will use special values to indicate specific failure modes.

```
