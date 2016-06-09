---
layout: page
title: Shell Script - String List - Single Line File
description: >
  Shell Script - String List - Single Line File 使用範例。
parent:
  title: Shell Script
  url: /read/case/shell-script
---

## 原始討論

原始討論「[回覆: shell中 `` 與()問題請教](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=350782#forumpost350782)」。

## 回覆內容

延續[上一個回覆](/book-ubuntu-qna/read/case/shell-script/list/string.html)的「String」用法，我們可以把「檔案內容」叫出來存成「字串」來「跑迴圈」。

先準備一個檔案，命名叫「one_line.txt」，內容如下，只有單純的一行

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

echo $(cat one_line.txt)
```


## 範例三

``` sh
#!/usr/bin/env bash

LIST=$(cat one_line.txt)

echo $LIST
```


## 範例四

``` sh
#!/usr/bin/env bash

LIST=$(cat one_line.txt)

for ITEM in $LIST; do
	echo $ITEM
done
```


## 範例五

``` sh
#!/usr/bin/env bash

for ITEM in $(cat one_line.txt); do
	echo $ITEM
done
```

[接下來...](/book-ubuntu-qna/read/case/shell-script/list/single-line-file.1.html)
