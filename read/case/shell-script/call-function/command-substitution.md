---
layout: page
title: Shell Script - Command Substitution
description: >
  Shell Script - Command Substitution 使用範例。
parent:
  title: Shell Script
  url: /read/case/shell-script
---


## 原始討論

原始討論「[回覆: function去呼叫function](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=350656#forumpost350656)」。


## 回覆內容

範例一

``` sh
#!/usr/bin/env bash

echo $(date +%A)

```

## 範例二

``` sh
#!/usr/bin/env bash

NOW=$(date +%A)

echo $NOW

```

## 範例三

``` sh
#!/usr/bin/env bash

echo `date +%A`

```


## 範例四

``` sh
#!/usr/bin/env bash

NOW=`date +%A`

echo $NOW

```

## 範例五

``` sh
#!/usr/bin/env bash

THE_CMD='date +%A'

echo $THE_CMD

```


## 範例六

``` sh
#!/usr/bin/env bash

THE_CMD='date +%A'

$THE_CMD

```

更多請參考「man [bash](http://manpages.ubuntu.com/manpages/trusty/en/man1/bash.1.html)」，找尋「Command Substitution」


可以看到下面一段，還有其他的

```
...略...

Command Substitution
       Command  substitution  allows  the  output  of a command to replace the
       command name.  There are two forms:

              $(command)
       or
              `command`

...略...

```

[接下來...](/book-ubuntu-qna/read/case/shell-script/call-function/exit-status.html)
