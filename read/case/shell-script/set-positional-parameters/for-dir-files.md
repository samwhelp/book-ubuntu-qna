---
layout: page
title: Shell Script - For Dir Files
description: >
  Shell Script - For Dir Files 使用範例。
parent:
  title: Shell Script
  url: /read/case/shell-script
---


## 原始討論

原始討論「[回覆: 「set --」的用法?](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=350928#forumpost350928)」


## 回覆內容

## 範例一

``` sh
#/usr/bin/env sh
for name in *; do
    echo $name
done

```

## 範例二

``` sh
#/usr/bin/env sh
for name in ./*; do
    echo $name
done

```


[接下來...](/book-ubuntu-qna/read/case/shell-script/set-positional-parameters/for-dir-files-from-positional-parameters.html)
