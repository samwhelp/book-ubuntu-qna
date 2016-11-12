---
layout: page
title: 「/etc/fonts/conf.d」和「/etc/fonts/fonts.conf」
description: >
  「/etc/fonts/conf.d」和「/etc/fonts/fonts.conf」
parent:
  title: 如何探索 fontconfig
  url: '/read/howto/configure-font/fontconfig'
source_url: '/read/howto/configure-font/fontconfig/conf.d.md'
---

## 緣起

觀看「/etc/fonts/fonts.conf」的內容，可以看到一段設定

執行

``` sh
$ cat /etc/fonts/fonts.conf | sed -n '68,71p'
```

顯示

```
<!--
  Load local system customization file
-->
        <include ignore_missing="yes">conf.d</include>
```

## 實驗一

執行下面指令，產生「/etc/fonts/conf.d/test.conf」，填入一行內容「text」。

``` sh
$ sudo sh -c 'echo test > /etc/fonts/conf.d/test.conf'
```

執行下面指令，觀看剛剛產生「/etc/fonts/conf.d/test.conf」這個檔案的內容。

``` sh
$ cat /etc/fonts/conf.d/test.conf
```

顯示

```
test
```

執行下面指令，來確認「/etc/fonts/conf.d/test.conf」這個檔案是否有被採用。

``` sh
$ fc-match
```

並沒有出現錯誤訊息。

執行下面指令，將剛剛產生「/etc/fonts/conf.d/test.conf」這個檔案刪除。

## 實驗二


執行下面指令，產生「/etc/fonts/conf.d/1-test.conf」，填入一行內容「text」。

``` sh
$ sudo sh -c 'echo test > /etc/fonts/conf.d/1-test.conf'
```

執行下面指令，觀看剛剛產生「echo test > /etc/fonts/conf.d/1-test.conf」這個檔案的內容。

``` sh
$ cat /etc/fonts/conf.d/1-test.conf
```

顯示

```
test
```

執行下面指令，來確認「/etc/fonts/conf.d/1-test.conf」這個檔案是否有被採用。

``` sh
$ fc-match
```

第一行會顯示

```
Fontconfig error: "/etc/fonts/conf.d/1-test.conf", line 1: syntax error
```

表示「/etc/fonts/conf.d/1-test.conf」有被採用。

接著，將「/etc/fonts/fonts.conf」裡

將

```
        <include ignore_missing="yes">conf.d</include>
```

改成，也就是註解

```
        <!--<include ignore_missing="yes">conf.d</include>-->
```

或是直接執行下面指令，來修改「/etc/fonts/fonts.conf」。

```
sudo sed -i 's/<include ignore_missing="yes">conf.d<\/include>/<!--<include ignore_missing="yes">conf.d<\/include>-->/g' /etc/fonts/fonts.conf
grep conf.d /etc/fonts/fonts.conf -n
```


然後再次執行下面這個指令

``` sh
$ fc-match
```

並沒有出現錯誤訊息。

實驗完畢，把剛剛的修改「/etc/fonts/fonts.conf」那段註解恢復原狀。

或是直接執行下面指令，來修改「/etc/fonts/fonts.conf」恢復原狀。

``` sh
sudo sed -i 's/<!--<include ignore_missing="yes">conf.d<\/include>-->/<include ignore_missing="yes">conf.d<\/include>/g' /etc/fonts/fonts.conf
grep conf.d /etc/fonts/fonts.conf -n
```

並且執行下面的指令，將「/etc/fonts/conf.d/1-test.conf」這個檔案刪除。

``` sh
$ sudo rm /etc/fonts/conf.d/1-test.conf
```
