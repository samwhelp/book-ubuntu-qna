---
layout: page
title: Shell Script - String List - Array
description: >
  Shell Script - String List - Array 使用範例。
parent:
  title: Shell Script
  url: /read/case/shell-script
---


## 原始討論

原始討論「[回覆: shell中 `` 與()問題請教](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=350794#forumpost350794)」。


## 回覆內容

接下來回到你原本想要問的「Array」


## 範例一

``` sh
#!/usr/bin/env bash

LIST=('Jan' 'Feb' 'Mar' 'Apr' 'Jun' 'Jul' 'Aug')

echo ${LIST[*]}
```

顯示

```
Jan Feb Mar Apr Jun Jul Aug
```

「`${LIST[*]}`」這個語法，就是列出陣列所有元素，不過echo出來會是只有一行。

## 範例二

``` sh
#!/usr/bin/env bash

LIST=('Jan' 'Feb' 'Mar' 'Apr' 'Jun' 'Jul' 'Aug')

printf "%s\n" ${LIST[*]}
```

顯示

```
Jan
Feb
Mar
Apr
Jun
Jul
Aug
```

透過「printf」轉成多行。

## 範例三

```
#!/usr/bin/env bash

LIST=('Jan' 'Feb' 'Mar' 'Apr' 'Jun' 'Jul' 'Aug')

printf "%s\n" ${LIST[*]} | sort
```


顯示

```
Apr
Aug
Feb
Jan
Jul
Jun
Mar
```

一樣透過「printf」轉成多行，然後再丟給「sort」處理排序。



## 範例四

``` sh
#!/usr/bin/env bash

LIST=('Jan' 'Feb' 'Mar' 'Apr' 'Jun' 'Jul' 'Aug')

echo ${LIST[0]}
echo ${LIST[1]}
echo ${LIST[2]}
echo ${LIST[3]}
```

存取每個元素的語法。

以上回覆，應該可以建立一些基本的概念，幫助你了解一些疑惑，
下面一個回覆，再來針對你的問題個別做解答。


更多請參考「Bash Handbook / [Arrays](https://github.com/denysdovhan/bash-handbook#arrays)」。

或是「$ man [bash](http://manpages.ubuntu.com/manpages/trusty/en/man1/bash.1.html)」

查尋「Arrays」，可以找到下面一段

```

Arrays
	 Bash provides one-dimensional indexed and associative array  variables.
	 Any  variable may be used as an indexed array; the declare builtin will
	 explicitly declare an array.

	 ...以下省略，請使用 man bash，或點上面的連結，來看更多的內容...

```

也可以查詢「printf」，可以看到下面一段

```
printf [-v var] format [arguments]
	   Write  the  formatted arguments to the standard output under the
	   control of the format.  The -v option causes the  output  to  be
	   assigned  to  the  variable var rather than being printed to the
	   standard output.

	 ...以下省略，請使用 man bash，或點上面的連結，來看更多的內容...

```

[接下來...](/book-ubuntu-qna/read/case/shell-script/list/array.1.html)
