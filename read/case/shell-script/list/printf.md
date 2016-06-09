---
layout: page
title: Shell Script - String List - printf
description: >
  Shell Script - String List - printf 使用範例。
parent:
  title: Shell Script
  url: /read/case/shell-script
---


## 原始討論

原始討論「[回覆: shell中 `` 與()問題請教](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=350790#forumpost350790)」。


## 回覆內容

接下來要談「sort」，不過要談「sort」之前，先來看幾個「[printf](http://manpages.ubuntu.com/manpages/trusty/en/man1/printf.1.html)」的範例。

## 範例一

``` sh
#!/usr/bin/env bash

printf "%s\n" 'Jan' 'Feb' 'Mar' 'Apr' 'Jun' 'Jul' 'Aug'
```


## 範例二

``` sh
#!/usr/bin/env bash

LIST='Jan Feb Mar Apr Jun Jul Aug'

printf "%s\n" $LIST
```

上面兩個範例都會顯示多行

```
Jan
Feb
Mar
Apr
Jun
Jul
Aug
```



## 範例三

``` sh
#!/usr/bin/env bash

printf "%s\n" 'Jan Feb Mar Apr Jun Jul Aug'
```

這裡只有顯示一行

```
Jan Feb Mar Apr Jun Jul Aug
```

[接下來...](/book-ubuntu-qna/read/case/shell-script/list/sort.html)
