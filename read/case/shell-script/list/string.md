---
layout: page
title: Shell Script - String List
description: >
  Shell Script - String List 使用範例。
parent:
  title: Shell Script
  url: /read/case/shell-script
---

## 原始討論

原始討論「[回覆: shell中 `` 與()問題請教](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=350780#forumpost350780)」。

## 回覆內容


先跳脫「Array」的用法，我們先來談「String」的用法，以下我會分好幾個回覆。


## 範例一

``` sh
#!/usr/bin/env bash

LIST='Jan Feb Mar Apr Jun Jul Aug'

echo $LIST;
```



## 範例二

``` sh
#!/usr/bin/env bash

LIST="Jan Feb Mar Apr Jun Jul Aug"

echo $LIST;
```


上面兩個範例說明，

「單引號(')」和「雙引號(")」，都是「字串(String)」，

至於有啥差別，就不在這裡討論，先聚焦在你想要使用的功能上面。

「範例一」和「範例二」都是顯示

```
Jan Feb Mar Apr Jun Jul Aug
```


## 範例三

``` sh
#!/usr/bin/env bash

LIST='Jan Feb Mar Apr Jun Jul Aug'

for ITEM in $LIST; do
	echo $ITEM
done
```


## 範例四

```
#!/usr/bin/env bash

LIST="Jan Feb Mar Apr Jun Jul Aug"

for ITEM in $LIST; do
	echo $ITEM
done
```

上面兩個範例說明，你可以用for來跑迴圈，會將字串根據空白拆解。

所以「範例三」和「範例四」會顯示

```
Jan
Feb
Mar
Apr
Jun
Jul
Aug
```

[接下來...](/book-ubuntu-qna/read/case/shell-script/list/single-line-file.html)
