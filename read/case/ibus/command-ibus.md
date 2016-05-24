---
layout: page
title: 如何透過指令「ibus」來切換輸入法
---

## 原始討論

原始討論「[回覆: [Help] iBus 可否由程式控制切換?](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=351838#forumpost351838)」。


## 回覆內容

這個其實我也還不是很懂，不過看「Wikipedia / [ibus](https://zh.wikipedia.org/zh-tw/IBus)」，
應該是透過類似D-Bus的機制，
所以我猜應該會有程式可以切入的點吧，只不過要研究，這我也不曉得，只是猜測，
先把目前研究到的貼上來，讓你有個探索的起點

執行下面指令，閱讀「[manpage](http://manpages.ubuntu.com/manpages/xenial/en/man1/ibus.1.html)」。

``` sh
$ man ibus
```

執行

``` sh
$ ibus help
```

顯示

```
Usage: ibus COMMAND [OPTION...]

Commands:
  engine          Set or get engine
  exit            Exit ibus-daemon
  list-engine     Show available engines
  watch           (Not implemented)
  restart         Restart ibus-daemon
  version         Show version
  read-cache      Show the content of registry cache
  write-cache     Create registry cache
  address         Print the D-Bus address of ibus-daemon
  read-config     Show the configuration values
  reset-config    Reset the configuration values
  help            Show this information
```

執行下面指令，確認目前的輸入法

``` sh
$ ibus engine
```


顯示

```
xkb:us::eng
```


執行

``` sh
$ ibus list-engine
```


顯示

```

...略...

language: Chinese
  chewing - Chewing

...略...

language: English
  xkb:us:dvorak:eng - English (Dvorak)
  xkb:ca:eng:eng - English (Canada)
  xkb:us:intl:eng - English (US, international with dead keys)
  xkb:us:colemak:eng - English (Colemak)
  xkb:gb:dvorak:eng - English (UK, Dvorak)
  xkb:gb:extd:eng - English (UK, extended WinKeys)
  xkb:us::eng - English (US)
  xkb:us:altgr-intl:eng - English (international AltGr dead keys)

...略...

```


執行下面指令，就會切換輸入法「chewing」了


``` sh
$ ibus engine chewing
```

執行下面指令，確認目前的輸入法

``` sh
$ ibus engine
```

顯示

```
chewing
```


執行下面指令，就會切回英文輸入法了

``` sh
$ ibus engine xkb:us::eng
```


## 探索套件參考步驟

下載「[ibus](http://packages.ubuntu.com/xenial/ibus)」這個套件

``` sh
$ apt download ibus
```

解開套件

``` sh
$ dpkg -x ibus_1.5.11-1ubuntu2_amd64.deb ibus
```

觀看有哪些檔案

``` sh
$ tree ibus
```

顯示

```
ibus
├── etc
│   └── dconf
│       ├── db
│       │   └── ibus.d
│       │       └── 00-upstream-settings
│       └── profile
│           └── ibus
└── usr
    ├── bin
    │   ├── ibus
    │   ├── ibus-daemon
    │   └── ibus-setup
    ├── lib
    │   └── ibus
    │       ├── ibus-dconf
    │       ├── ibus-engine-simple
    │       ├── ibus-ui-gtk3
    │       └── ibus-x11
    └── share
        ├── applications
        │   └── ibus-setup.desktop
        ├── bash-completion
        │   └── completions
        │       └── ibus.bash
        ├── bug
        │   └── ibus
        │       ├── presubj
        │       └── script
        ├── doc
        │   └── ibus
        │       ├── AUTHORS
        │       ├── changelog.Debian.gz -> ../gir1.2-ibus-1.0/changelog.Debian.gz
        │       ├── copyright
        │       ├── README
        │       └── README.Debian.gz
        ├── GConf
        │   └── gsettings
        │       └── ibus.convert
        ├── glib-2.0
        │   └── schemas
        │       ├── 10_ibus.gschema.override
        │       └── org.freedesktop.ibus.gschema.xml
        ├── ibus
        │   ├── component
        │   │   ├── dconf.xml
        │   │   ├── gtkpanel.xml
        │   │   └── simple.xml
        │   ├── keymaps
        │   │   ├── common
        │   │   ├── in
        │   │   ├── jp
        │   │   ├── kr
        │   │   ├── modifiers
        │   │   └── us
        │   └── setup
        │       ├── engineabout.py
        │       ├── enginecombobox.py
        │       ├── enginedialog.py
        │       ├── enginetreeview.py
        │       ├── i18n.py
        │       ├── icon.py
        │       ├── keyboardshortcut.py
        │       ├── main.py
        │       ├── setup.ui
        │       └── setup-unity.ui
        ├── icons
        │   └── hicolor
        │       ├── 16x16
        │       │   └── apps
        │       │       └── ibus-keyboard.png
        │       ├── 22x22
        │       │   └── apps
        │       │       └── ibus-keyboard.png
        │       ├── 24x24
        │       │   └── apps
        │       │       └── ibus-keyboard.png
        │       ├── 32x32
        │       │   └── apps
        │       │       └── ibus-keyboard.png
        │       ├── 48x48
        │       │   └── apps
        │       │       └── ibus-keyboard.png
        │       └── scalable
        │           └── apps
        │               ├── ibus-engine.svg
        │               ├── ibus-keyboard.svg
        │               ├── ibus-setup.svg
        │               └── ibus.svg
        ├── lintian
        │   └── overrides
        │       └── ibus
        ├── man
        │   └── man1
        │       ├── ibus.1.gz
        │       ├── ibus-daemon.1.gz
        │       └── ibus-setup.1.gz
        └── python3
            └── runtime.d
                └── ibus.rtupdate

45 directories, 54 files

```

或是已經安裝套件的話可以執行，就可以知道有那些檔案安裝在系統上了

``` sh
$ dpkg -L ibus
```


下載原始碼套件來研究

``` sh
$ apt source ibus
```

## GitHub

除了從上面的原始碼套件，也可以從「GitHub / ibus / ibus/ tools/ [main.vala](https://github.com/ibus/ibus/blob/master/tools/main.vala)」，找到這個「[ibus](http://manpages.ubuntu.com/manpages/xenial/en/man1/ibus.1.html)」這個指令的原始碼，是用「[Vala](https://wiki.gnome.org/Projects/Vala)」寫的。

## 相關網址

* [https://github.com/ibus/ibus/wiki](https://github.com/ibus/ibus/wiki)
* [https://zh.wikipedia.org/zh-tw/IBus](https://zh.wikipedia.org/zh-tw/IBus)
* [https://en.wikipedia.org/wiki/Intelligent_Input_Bus](https://en.wikipedia.org/wiki/Intelligent_Input_Bus)

## manpage

* man [ibus](http://manpages.ubuntu.com/manpages/xenial/en/man1/ibus.1.html)
* man [ibus-daemon](http://manpages.ubuntu.com/manpages/xenial/en/man1/ibus-daemon.1.html)
* man [ibus-setup](http://manpages.ubuntu.com/manpages/xenial/en/man1/ibus-setup.1.html)


## gsettings

執行

``` sh
$ gsettings list-recursively | grep ibus
```


執行

``` sh
$ gsettings get org.freedesktop.ibus.general engines-order
```

顯示

```
['xkb:us::eng', 'chewing']
```

執行

``` sh
$ gsettings set org.freedesktop.ibus.general engines-order "['chewing', 'xkb:us::eng']"
```

這時候要重起ibus，就會發現輸入法的順序改變了


執行下面指令恢復，

``` sh
$ gsettings set org.freedesktop.ibus.general engines-order "['xkb:us::eng', 'chewing']"
```

這裡不能用「gsettings reset org.freedesktop.ibus.general engines-order」，
因為「org.freedesktop.ibus.general engines-order」的預設值，
不是「['xkb:us::eng', 'chewing']」


gsettings 的用法，請參考「[這篇](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=349416#forumpost349416)」,「[這篇](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=351280#forumpost351280)」,「[這篇](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=351520#forumpost351520)」討論。
