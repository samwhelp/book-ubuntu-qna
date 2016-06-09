---
layout: page
title: Shell Script - String List - Single Line File - 1
description: >
  Shell Script - String List - Single Line File 使用範例。
parent:
  title: Shell Script
  url: /read/case/shell-script
---

## 原始討論

原始討論「[回覆: shell中 `` 與()問題請教](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=350784#forumpost350784)」。

## 回覆內容

這個回覆的範例，跟[上面一個回覆](/book-ubuntu-qna/read/case/shell-script/list/single-line-file.html)的所有範例結果是一樣的，可以對照。

只是將「$()」改成「``」而已。

還記得之前的「[討論](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=350656#forumpost350656)」，
有提到

```
更多請參考「man bash」，找尋「Command Substitution」

...略...

Command Substitution
Command substitution allows the output of a command to replace the
command name. There are two forms:

$(command)
or
`command`

...略...

```



先準備一個檔，命名叫「one_line.txt」，內容如下，只有單純的一行

```
Jan Feb Mar Apr Jun Jul Aug
```



## 範例一

``` sh
#!/usr/bin/env bash

cat one_line.txt
```


## 範例二

``` sh
#!/usr/bin/env bash

echo `cat one_line.txt`
```


## 範例三

``` sh
#!/usr/bin/env bash

LIST=`cat one_line.txt`

echo $LIST
```


## 範例四

``` sh
#!/usr/bin/env bash

LIST=`cat one_line.txt`

for ITEM in $LIST; do
	echo $ITEM
done
```


## 範例五

``` sh
#!/usr/bin/env bash

for ITEM in `cat one_line.txt`; do
	echo $ITEM
done
```

[接下來...](/book-ubuntu-qna/read/case/shell-script/list/multiple-line-file.html)
