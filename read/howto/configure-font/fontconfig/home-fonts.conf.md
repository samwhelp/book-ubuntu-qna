---
layout: page
title: 「~/.config/fontconfig/fonts.conf」和「/etc/fonts/conf.d/50-user.conf」
description: >
  「~/.config/fontconfig/fonts.conf」和「/etc/fonts/conf.d/50-user.conf」
parent:
  title: 如何探索 fontconfig
  url: '/read/howto/configure-font/fontconfig'
source_url: '/read/howto/configure-font/fontconfig/home-fonts.conf.md'
---


## 緣起

觀看「/etc/fonts/conf.d/50-user.conf」的內容，

執行

``` sh
$ cat /etc/fonts/conf.d/50-user.conf
```

顯示

```
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
        <!--
            Load per-user customization files where stored on XDG Base Directory
            specification compliant places. it should be usually:
              $HOME/.config/fontconfig/conf.d
              $HOME/.config/fontconfig/fonts.conf
        -->
        <include ignore_missing="yes" prefix="xdg">fontconfig/conf.d</include>
        <include ignore_missing="yes" prefix="xdg">fontconfig/fonts.conf</include>
        <!-- the following elements will be removed in the future -->
        <include ignore_missing="yes" deprecated="yes">~/.fonts.conf.d</include>
        <include ignore_missing="yes" deprecated="yes">~/.fonts.conf</include>
</fontconfig>

```

## ~/.config/fontconfig/fonts.conf ($HOME/.config/fontconfig/fonts.conf)

執行下面指令，產生「~/.config/fontconfig/fonts.conf」，填入一行內容「test」。

``` sh
$ echo test > ~/.config/fontconfig/fonts.conf
```

執行下面指令，觀看剛剛產生「~/.config/fontconfig/fonts.conf」這個檔案的內容。

``` sh
$ cat ~/.config/fontconfig/fonts.conf
```

顯示

```
test
```

執行下面指令，來確認「~/.config/fontconfig/fonts.conf」這個檔案是否有被採用。

``` sh
$ fc-match
```

第一行顯示

```
Fontconfig error: "/home/user/.config/fontconfig/fonts.conf", line 1: syntax error
```

執行下面指令，刪除「~/.config/fontconfig/fonts.conf」這個檔案

``` sh
$ rm ~/.config/fontconfig/fonts.conf
```
