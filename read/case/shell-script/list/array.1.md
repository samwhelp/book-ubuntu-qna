---
layout: page
title: Shell Script - String List - Array - 1
description: >
  Shell Script - String List - Array 使用範例。
parent:
  title: Shell Script
  url: /read/case/shell-script
---


## 原始討論

原始討論「[回覆: shell中 `` 與()問題請教](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=350796#forumpost350796)」。


## 回覆內容

你上面的字拼錯了，「m」拼成「n」，
也就是「sample1」拼成「sanple1」，兩個變數名稱不一致，所以沒有資料。

改成下面的就可以了

``` sh
#!/usr/bin/env bash

sample1=('Jan' 'Feb' 'Mar' 'Apr' 'Jun' 'Jul' 'Aug')

echo ${sample1[*]}
```


依據你給的範例，拆解成下面的步驟，你就比較清楚了

## 範例一

``` sh
#!/usr/bin/env bash

sample1=('Jan' 'Feb' 'Mar' 'Apr' 'Jun' 'Jul' 'Aug')

IFS=$'\n'

echo ${sample1[*]}
```

顯示

```
Jan Feb Mar Apr Jun Jul Aug
```

顯示一行，即使你有改「IFS」。

## 範例二

``` sh
#!/usr/bin/env bash

sample1=('Jan' 'Feb' 'Mar' 'Apr' 'Jun' 'Jul' 'Aug')

IFS=$'\n'

echo "${sample1[*]}"
```

顯示多行

```
Jan
Feb
Mar
Apr
Jun
Jul
Aug
```

用「雙引號」把「`${sample1[*]}`」括起來，就會顯示多行了

## 範例三

``` sh
#!/usr/bin/env bash

sample1=('Jan' 'Feb' 'Mar' 'Apr' 'Jun' 'Jul' 'Aug')

IFS=$'\n'

echo "${sample1[*]}" | sort
```

因為是多行，所以可以丟給「sort」處理排序。

所以就顯示排序過後的結果

```
Apr
Aug
Feb
Jan
Jul
Jun
Mar
```


## 範例四

``` sh
#!/usr/bin/env bash

sample1=('Jan' 'Feb' 'Mar' 'Apr' 'Jun' 'Jul' 'Aug')

IFS=$'\n'

sample2=`echo "${sample1[*]}" | sort` # 這時候 sample2 是「字串」不是「陣列」

echo ${sample2[0]}
```

顯示

```
Apr Aug Feb Jan Jul Jun Mar
```


## 範例五

``` sh
#!/usr/bin/env bash

sample1=('Jan' 'Feb' 'Mar' 'Apr' 'Jun' 'Jul' 'Aug')

IFS=$'\n'

sample2=(`echo "${sample1[*]}" | sort`) # 多加了「()」，這時候 sample2 才是「陣列」

echo ${sample2[0]}
```

顯示

```
Apr
```


## 範例六

這個範例的邏輯跟「範例五」，是一樣的，只是「``」改成「$()」的寫法而已

``` sh
#!/usr/bin/env bash

sample1=('Jan' 'Feb' 'Mar' 'Apr' 'Jun' 'Jul' 'Aug')

IFS=$'\n'

sample2=($(echo "${sample1[*]}" | sort))

echo ${sample2[0]}
```

顯示

```
Apr
```
