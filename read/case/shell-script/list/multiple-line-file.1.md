---
layout: page
title: Shell Script - String List - Multiple Line File - 1
description: >
  Shell Script - String List - Multiple Line File 使用範例。
parent:
  title: Shell Script
  url: /read/case/shell-script
---

## 原始討論

原始討論「[回覆: shell中 `` 與()問題請教](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=350788#forumpost350788)」。

## 回覆內容

這個回覆的範例，跟[上面一個回覆](/book-ubuntu-qna/read/case/shell-script/list/multiple-line-file.html)的所有範例結果是一樣的，可以對照。

只是將「$()」改成「``」而已。


先準備一個檔，命名叫「list.txt」，內容如下，一樣是多行的檔案

```
Jan
Feb
Mar
Apr
Jun
Jul
Aug
```



## 範例一

``` sh
#!/usr/bin/env bash

cat list.txt
```


## 範例二

注意：這個範例，結果是顯示一行

請對照「範例六」顯示多行的寫法


``` sh
#!/usr/bin/env bash

echo `cat list.txt`
```


## 範例三

``` sh
#!/usr/bin/env bash

LIST=`cat list.txt`

echo $LIST
```


## 範例四

``` sh
#!/usr/bin/env bash

LIST=`cat list.txt`

for ITEM in $LIST; do
	echo $ITEM
done
```


## 範例五

``` sh
#!/usr/bin/env bash

for ITEM in `cat list.txt`; do
	echo $ITEM
done
```


## 範例六

請對照「範例二」，區分其中的差異。

``` sh
#!/usr/bin/env bash

echo "`cat list.txt`"
```


[接下來...](/book-ubuntu-qna/read/case/shell-script/list/printf.html)
