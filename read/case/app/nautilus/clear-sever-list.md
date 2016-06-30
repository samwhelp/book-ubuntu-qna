---
layout: page
title: Nautilus，如何清除「Connect to Server」的紀錄
description: >
  Nautilus，如何清除「Connect to Server」的紀錄。
parent:
  title: Nautilus
  url: /read/case/app/nautilus
---

## 原始討論

原始討論「[回覆: 請問Connect to Server的紀錄如何清除?](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=353184#forumpost353184)」。


## 回覆內容



我照您給的「[那篇](http://askubuntu.com/questions/379695/how-to-clear-server-or-network-share-connection-history-in-ubuntu-13-04)」提的作法來測試，刪掉「~/.config/nautilus/servers」這個檔，就不會有那些歷史紀錄了，
您再確認一下，您操作的步驟，是哪個環節發生問題，導致沒有刪除？
或是不同版本的問題？

執行

``` sh
$ rm ~/.config/nautilus/servers
```

我測試的環境是

* Ubuntu 16.04 (64位元) 英文界面
* GNOME nautilus 3.14.3


## 測試步驟

啟動「[nautilus](http://manpages.ubuntu.com/manpages/xenial/en/man1/nautilus.1.html)」。

從「[這一頁](http://wiki.ubuntu-tw.org/index.php?title=%E5%A5%97%E4%BB%B6%E5%BA%AB%E4%BE%86%E6%BA%90)」找一個ftp來測試。

使用「Connect to Server」來連到「[ftp://ftp.tku.edu.tw/ubuntu/](ftp://ftp.tku.edu.tw/ubuntu/)」

就會產生「~/.config/nautilus/servers」這個檔。


關閉後「Connect to Server」，再重啟「Connect to Server」
就會看到歷史連線。

關閉「nautilus」，然後刪除「~/.config/nautilus/servers」。
然後再重起「nautilus」，開啟「Connect to Server」，沒有再看到歷史連線了。



以下相關指令參考

## 觀察「~/.config/nautilus/servers」這個檔的內容

執行

``` sh
$ cat ~/.config/nautilus/servers
```

顯示

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<xbel version="1.0"
      xmlns:bookmark="http://www.freedesktop.org/standards/desktop-bookmarks"
      xmlns:mime="http://www.freedesktop.org/standards/shared-mime-info"
>
  <bookmark href="ftp://ftp.tku.edu.tw/" added="2016-06-29T05:52:26Z" modified="2016-06-29T05:52:26Z" visited="2016-06-29T05:52:26Z">
    <title>/ on ftp.tku.edu.tw</title>
    <info>
      <metadata owner="http://freedesktop.org">
        <bookmark:applications>
          <bookmark:application name="nautilus" exec="'nautilus %u'" modified="2016-06-29T05:52:26Z" count="1"/>
        </bookmark:applications>
      </metadata>
    </info>
  </bookmark>
</xbel>

```

## nautilus 操作參考


$ man 1 [nautilus](http://manpages.ubuntu.com/manpages/xenial/en/man1/nautilus.1.html)

執行

``` sh
$ nautilus -h
```

顯示

```
Usage:
  nautilus [OPTION...] [URI...]

Help Options:
  -h, --help                  Show help options
  --help-all                  Show all help options
  --help-gapplication         Show GApplication options
  --help-gtk                  Show GTK+ Options

Application Options:
  -c, --check                 Perform a quick set of self-check tests.
  --version                   Show the version of the program.
  -w, --new-window            Always open a new window for browsing specified URIs
  -n, --no-default-window     Only create windows for explicitly specified URIs.
  --no-desktop                Never manage the desktop (ignore the GSettings preference).
  --force-desktop             Always manage the desktop (ignore the GSettings preference).
  -q, --quit                  Quit Nautilus.
  -s, --select                Select specified URI in parent folder.
  --display=DISPLAY           X display to use

```


執行

``` sh
$ nautilus --version
```

顯示

```
GNOME nautilus 3.14.3
```

## 探索原始碼

執行

``` sh
$ apt-get source nautilus
```


以「servers」當關鍵字找尋

``` sh
$ grep 'servers' nautilus-3.18.4.is.3.14.3/* -R
```

可以看到

```
...略...

nautilus-3.18.4.is.3.14.3/src/nautilus-connect-server-dialog.c: filename = g_build_filename (datadir, "servers", NULL);
nautilus-3.18.4.is.3.14.3/src/nautilus-connect-server-dialog.c: filename = g_build_filename (g_get_user_config_dir (), "nautilus", "servers", NULL);
nautilus-3.18.4.is.3.14.3/src/nautilus-application.c:           filename = g_build_filename (datadir, "servers", NULL);

...略...

```

對照參考網址

* [https://github.com/GNOME/nautilus/blob/gnome-3-14/src/nautilus-connect-server-dialog.c#L356](https://github.com/GNOME/nautilus/blob/gnome-3-14/src/nautilus-connect-server-dialog.c#L356)
* [https://github.com/GNOME/nautilus/blob/gnome-3-14/src/nautilus-connect-server-dialog.c#L330](https://github.com/GNOME/nautilus/blob/gnome-3-14/src/nautilus-connect-server-dialog.c#L330)
* [https://github.com/GNOME/nautilus/blob/gnome-3-14/src/nautilus-application.c#L588](https://github.com/GNOME/nautilus/blob/gnome-3-14/src/nautilus-application.c#L588)

## API

* [g_get_user_config_dir](https://developer.gnome.org/glib/stable/glib-Miscellaneous-Utility-Functions.html#g-get-user-config-dir)
* [g_build_filename](https://developer.gnome.org/glib/stable/glib-Miscellaneous-Utility-Functions.html#g-build-filename)

## 開發套件

* [libglib2.0-dev](http://packages.ubuntu.com/xenial/libglib2.0-dev) ([filelist](http://packages.ubuntu.com/xenial/amd64/libglib2.0-dev/filelist))


## 測試參考程式碼

### 測試 [g_get_user_config_dir](https://developer.gnome.org/glib/stable/glib-Miscellaneous-Utility-Functions.html#g-get-user-config-dir)

產生專案資料夾

``` sh
$ mkdir test_g_get_user_config_dir
$ cd test_g_get_user_config_dir
```

[test_g_get_user_config_dir/main.c](/book-ubuntu-qna/read/case/app/nautilus/example/test_g_get_user_config_dir/main.c)

``` c
#include <stdio.h>
#include <stdlib.h>
#include <glib.h>

int
main (int argc, char *argv[])
{

        printf("%s\n", g_get_user_config_dir ());
        exit (EXIT_SUCCESS);

}
```

[test_g_get_user_config_dir/build.sh](/book-ubuntu-qna/read/case/app/nautilus/example/test_g_get_user_config_dir/build.sh)

```
gcc main.c -o test $(pkg-config --cflags --libs glib-2.0)
```

將「build.sh」設為擁有者可執行。

``` sh
$ chmod u+x build.sh
```

執行編譯

``` sh
$ ./build.sh
```

會產生一個執行檔「test」

執行

``` sh
$ ./test
```

會顯示

```
/home/user/.config
```

注意: 上面那個「user」會隨執行的環境而定。


### 測試 [g_build_filename](https://developer.gnome.org/glib/stable/glib-Miscellaneous-Utility-Functions.html#g-build-filename)

產生專案資料夾

``` sh
$ mkdir test_g_build_filename
$ cd test_g_build_filename
```

[test_g_build_filename/main.c](/book-ubuntu-qna/read/case/app/nautilus/example/test_g_build_filename/main.c)

``` c
#include <stdio.h>
#include <stdlib.h>
#include <glib.h>

int
main (int argc, char *argv[])
{

        printf("%s\n", g_build_filename (g_get_user_config_dir (), "nautilus", "servers", NULL));
        exit (EXIT_SUCCESS);

}
```

[test_g_build_filename/build.sh](/book-ubuntu-qna/read/case/app/nautilus/example/test_g_build_filename/build.sh)

``` sh
gcc main.c -o test $(pkg-config --cflags --libs glib-2.0)
```

將「build.sh」設為擁有者可執行。

``` sh
$ chmod u+x build.sh
```

執行編譯

``` sh
$ ./build.sh
```

會產生一個執行檔「test」

執行

``` sh
$ ./test
```

會顯示

```
/home/user/.config/nautilus/servers
```

注意: 上面那個「user」會隨執行的環境而定。
