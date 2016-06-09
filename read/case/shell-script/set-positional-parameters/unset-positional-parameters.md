---
layout: page
title: Shell Script - Unset Positional Parameters 用法說明
description: >
  Shell Script - Unset Positional Parameters 用法說明。
parent:
  title: Shell Script
  url: /read/case/shell-script
---


## 原始討論

原始討論「[回覆: 「set --」的用法?](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=350972#forumpost350972)」


## 回覆內容



## 範例一

``` sh
#!/usr/bin/env sh

set -- *

set --

echo a"$@"b

```


我這邊測，顯示的是

```
ab
```

也就是 "$@" 沒有東西。

所以不懂你指的「他似乎還有傳遞1個 參數」？

要請你多說點發生的狀況，或是方便的話，貼出你測試的程式碼吧，可以幫忙看是哪裡出狀況。

:-)

「$ help set」的說明

```
      --  Assign any remaining arguments to the positional parameters.
          If there are no remaining arguments, the positional parameters
          are unset.

```


## 範例二

``` sh
#!/usr/bin/env sh

set -- *

set --

echo 'a'

for name do
	echo $name
done

echo 'b'

```

我這邊測試顯示

```
a
b
```

表示沒跑迴圈，所以"$@"也是沒東西。
