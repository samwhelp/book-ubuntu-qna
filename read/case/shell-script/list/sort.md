---
layout: page
title: Shell Script - String List - sort
description: >
  Shell Script - String List - sort 使用範例。
parent:
  title: Shell Script
  url: /read/case/shell-script
---


## 原始討論

原始討論「[回覆: shell中 `` 與()問題請教](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=350792#forumpost350792)」。


## 回覆內容


真的要來談sort了，

請先執行「$ man [sort](http://manpages.ubuntu.com/manpages/trusty/en/man1/sort.1.html)」，

可以找到下面的文字

```

...略...

NAME

       sort - sort lines of text files

...略...

```

這裡要注意的是「**sort lines**」。

先準備剛剛有使用過的兩個檔案

一個檔，命名叫「one_line.txt」，內容如下，只有單純的一行

```
Jan Feb Mar Apr Jun Jul Aug
```

另一個檔，命名叫「list.txt」，內容如下，

```
Jan
Feb
Mar
Apr
Jun
Jul
Aug
```

接下來看範例

## 範例一

``` sh
#!/usr/bin/env bash

sort list.txt
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

## 範例二

``` sh
#!/usr/bin/env bash

sort one_line.txt
```

顯示

```
Jan Feb Mar Apr Jun Jul Aug
```


因為「one_line.txt」只有一行，還記得上面提到的「sort - sort lines of text files」。


## 範例三

``` sh
#!/usr/bin/env bash

LIST='Jan Feb Mar Apr Jun Jul Aug'

echo $LIST | sort
```


顯示

```
Jan Feb Mar Apr Jun Jul Aug
```

這裡一樣顯示只有一行，同「範例二」。

## 範例四

``` sh
#!/usr/bin/env bash

LIST='Jan Feb Mar Apr Jun Jul Aug'

printf "%s\n" $LIST | sort
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


還記得上一個回覆提到的「[printf](/book-ubuntu-qna/read/case/shell-script/list/printf.html)」的用法嗎？

「範例四」將「範例三」改用「printf」，將「一行」轉成「多行」，再拋給「sort」去處理排序。

注意：以上討論的用法，都還是在「String」的範疇喔，[下面開始](/book-ubuntu-qna/read/case/shell-script/list/array.html)才是要討論「Array」。
