---
layout: page
title: 從lightdm的log檔，找到的一些資訊
description: >
  Ubuntu環境，從lightdm的log檔，找到的一些資訊。
parent:
  title: 程式如何設定字型
  url: '/read/howto/configure-font/'
---

## /var/log/lightdm/

延續「[如何知道程式開啟那些字型檔案(以lightdm為例)](/book-ubuntu-qna/read/howto/configure-font/lightdm/lsof.html)」這篇最後討論到的「log檔路徑」
找到「/var/log/lightdm/seat0-greeter.log」這個檔。

可以知道「/var/log/lightdm/」這個資料夾，是放置相關的「log檔」。

* /var/log/lightdm/lightdm.log
* /var/log/lightdm/seat0-greeter.log
* /var/log/lightdm/x-0.log


## /var/log/lightdm/seat0-greeter.log

執行下面指令，觀看「/var/log/lightdm/seat0-greeter.log」這個檔。

可以看到如下的資訊

```
** Message: Starting lightdm-gtk-greeter 2.0.1 (Apr 11 2016, 06:05:31)
** Message: [Configuration] Reading file: /usr/share/lightdm/lightdm-gtk-greeter.conf.d/01_ubuntu.conf
** Message: [Configuration] Reading file: /usr/share/lightdm/lightdm-gtk-greeter.conf.d/30_xubuntu.conf
** Message: [Configuration] Reading file: /etc/lightdm/lightdm-gtk-greeter.conf

...略...
```

所以可以找到三個檔案

* /usr/share/lightdm/lightdm-gtk-greeter.conf.d/01_ubuntu.conf
* /usr/share/lightdm/lightdm-gtk-greeter.conf.d/30_xubuntu.conf
* /etc/lightdm/lightdm-gtk-greeter.conf


關於「/etc/lightdm/lightdm-gtk-greeter.conf」這個檔案，剛在[在lightdm，如何指定顯示字型](/book-ubuntu-qna/read/howto/configure-font/lightdm/change-font.html)這篇，有討論到。

在「/usr/share/lightdm/lightdm-gtk-greeter.conf.d/」則是可以找到
「01_ubuntu.conf」和「30_xubuntu.conf」這兩個檔案。

執行

``` sh
ls /usr/share/lightdm/lightdm-gtk-greeter.conf.d/ -1
```

顯示

```
01_ubuntu.conf
30_xubuntu.conf
```

## 相關套件

### /usr/share/lightdm/lightdm-gtk-greeter.conf.d/01_ubuntu.conf

執行

``` sh
$ sudo dpkg -S /usr/share/lightdm/lightdm-gtk-greeter.conf.d/01_ubuntu.conf
```

顯示

```
lightdm-gtk-greeter: /usr/share/lightdm/lightdm-gtk-greeter.conf.d/01_ubuntu.conf
```

表示「/usr/share/lightdm/lightdm-gtk-greeter.conf.d/01_ubuntu.conf」屬於「[lightdm-gtk-greeter](http://packages.ubuntu.com/xenial/lightdm-gtk-greeter)」這個套件。

### /usr/share/lightdm/lightdm-gtk-greeter.conf.d/30_xubuntu.conf

執行

``` sh
$ sudo dpkg -S /usr/share/lightdm/lightdm-gtk-greeter.conf.d/30_xubuntu.conf
```

顯示

```
xubuntu-default-settings: /usr/share/lightdm/lightdm-gtk-greeter.conf.d/30_xubuntu.conf
```

表示「/usr/share/lightdm/lightdm-gtk-greeter.conf.d/30_xubuntu.conf」屬於「[xubuntu-default-settings](http://packages.ubuntu.com/xenial/xubuntu-default-settings)」這個套件。

### /etc/lightdm/lightdm-gtk-greeter.conf

執行

``` sh
$ dpkg -S /etc/lightdm/lightdm-gtk-greeter.conf
```

顯示

```
lightdm-gtk-greeter: /etc/lightdm/lightdm-gtk-greeter.conf
```

表示「/etc/lightdm/lightdm-gtk-greeter.conf」屬於「[lightdm-gtk-greeter](http://packages.ubuntu.com/xenial/lightdm-gtk-greeter)」這個套件。


## 觀察內容

### /usr/share/lightdm/lightdm-gtk-greeter.conf.d/01_ubuntu.conf

執行

``` sh
$ cat /usr/share/lightdm/lightdm-gtk-greeter.conf.d/01_ubuntu.conf
```

顯示

```
# Ubuntu specific defaults
#

[greeter]
background=/usr/share/backgrounds/warty-final-ubuntu.png
theme-name=Ambiance
icon-theme-name=LoginIcons
font-name=Ubuntu 11
xft-antialias=true
xft-dpi=96
xft-hintstyle=slight
xft-rgba=rgb
indicators=~host;~spacer;~session;~language;~a11y;~clock;~power;
clock-format=%d %b, %H:%M
```

可以看到設定「font-name=Ubuntu 11」。

### /usr/share/lightdm/lightdm-gtk-greeter.conf.d/30_xubuntu.conf

執行

``` sh
$ cat /usr/share/lightdm/lightdm-gtk-greeter.conf.d/30_xubuntu.conf
```

顯示

```
# Xubuntu specific defaults
# Settings stack on top of 01_ubuntu.conf
#

[greeter]
background=/usr/share/plymouth/themes/xubuntu-logo/wallpaper.png
theme-name=Greybird
icon-theme-name=elementary-xfce-dark
font-name=Noto Sans 9
keyboard=onboard
screensaver-timeout=60
```

可以看到設定「font-name=Noto Sans 9」。

### /etc/lightdm/lightdm-gtk-greeter.conf

執行

``` sh
$ cat /etc/lightdm/lightdm-gtk-greeter.conf
```

顯示

```
# LightDM GTK+ Configuration
# Available configuration options listed below.
#
# Appearance:
#  theme-name = GTK+ theme to use
#  icon-theme-name = Icon theme to use
#  background = Background file to use, either an image path or a color (e.g. #772953)
#  user-background = false|true ("true" by default)  Display user background (if available)
#  transition-duration = Length of time (in milliseconds) to transition between background images ("500" by default)
#  transition-type = ease-in-out|linear|none  ("ease-in-out" by default)
#
# Fonts:
#  font-name = Font to use
#  xft-antialias = false|true  Whether to antialias Xft fonts
#  xft-dpi = Resolution for Xft in dots per inch (e.g. 96)
#  xft-hintstyle = none|slight|medium|hintfull  What degree of hinting to use
#  xft-rgba = none|rgb|bgr|vrgb|vbgr  Type of subpixel antialiasing
#
# Login window:
#  active-monitor = Monitor to display greeter window (name or number). Use #cursor value to display greeter at monitor with cursor. Can be a semicolon separated list
#  position = x y ("50% 50%" by default)  Login window position
#  default-user-image = Image used as default user icon, path or #icon-name
#  hide-user-image = false|true ("false" by default)
#
# Panel:
#  panel-position = top|bottom ("top" by default)
#  clock-format = strftime-format string, e.g. %H:%M
#  indicators = semi-colon ";" separated list of allowed indicator modules. Built-in indicators include "~a11y", "~language", "~session", "~power", "~clock", "~host", "~spacer". Unity indicators can be represented by short name (e.g. "sound", "power"), service file name, or absolute path
#
# Accessibility:
#  a11y-states = states of accessibility features: "name" - save state on exit, "-name" - disabled at start (default value for unlisted), "+name" - enabled at start. Allowed names: contrast, font, keyboard, reader.
#  keyboard = command to launch on-screen keyboard (e.g. "onboard")
#  keyboard-position = x y[;width height] ("50%,center -0;50% 25%" by default)  Works only for "onboard"
#  reader = command to launch screen reader (e.g. "orca")
#
# Security:
#  allow-debugging = false|true ("false" by default)
#  screensaver-timeout = Timeout (in seconds) until the screen blanks when the greeter is called as lockscreen
#
# Template for per-monitor configuration:
#  [monitor: name]
#  background = overrides default value
#  user-background = overrides default value
#  laptop = false|true ("false" by default) Marks monitor as laptop display
#  transition-duration = overrides default value
#
[greeter]
#background=
#user-background=
#theme-name=
#icon-theme-name=
#font-name=
#xft-antialias=
#xft-dpi=
#xft-hintstyle=
#xft-rgba=
#indicators=
#clock-format=
#keyboard=
#reader=
#position=
#screensaver-timeout=
```

可以看到「#font-name=」。


##  /var/log/lightdm/lightdm.log

執行

``` sh
$ less
```

顯示

```
[+0.04s] DEBUG: Logging to /var/log/lightdm/lightdm.log
[+0.04s] DEBUG: Starting Light Display Manager 1.18.2, UID=0 PID=1806
[+0.04s] DEBUG: Loading configuration dirs from /usr/share/lightdm/lightdm.conf.d
[+0.04s] DEBUG: Loading configuration from /usr/share/lightdm/lightdm.conf.d/50-disable-log-backup.conf
[+0.04s] DEBUG: Loading configuration from /usr/share/lightdm/lightdm.conf.d/50-greeter-wrapper.conf
[+0.04s] DEBUG: Loading configuration from /usr/share/lightdm/lightdm.conf.d/50-guest-wrapper.conf
[+0.04s] DEBUG: Loading configuration from /usr/share/lightdm/lightdm.conf.d/50-xserver-command.conf
[+0.04s] DEBUG: Loading configuration from /usr/share/lightdm/lightdm.conf.d/60-lightdm-gtk-greeter.conf
[+0.04s] DEBUG: Loading configuration from /usr/share/lightdm/lightdm.conf.d/60-xubuntu.conf
[+0.04s] DEBUG: Loading configuration dirs from /usr/local/share/lightdm/lightdm.conf.d
[+0.04s] DEBUG: Loading configuration dirs from /etc/xdg/lightdm/lightdm.conf.d
[+0.04s] DEBUG: Loading configuration from /etc/lightdm/lightdm.conf
...略...
[+0.33s] DEBUG: Quitting Plymouth
[+0.38s] DEBUG: Using VT 7
[+0.38s] DEBUG: Seat seat0: Starting local X display on VT 7
[+0.38s] DEBUG: DisplayServer x-0: Logging to /var/log/lightdm/x-0.log
...略...
[+7.35s] DEBUG: Session pid=2021: Running command /usr/lib/lightdm/lightdm-greeter-session /usr/sbin/lightdm-gtk-greeter
[+7.35s] DEBUG: Creating shared data directory /var/lib/lightdm-data/lightdm
[+7.35s] DEBUG: Session pid=2021: Logging to /var/log/lightdm/seat0-greeter.log
...略...
[+32.91s] DEBUG: User user authorized
[+32.91s] DEBUG: Greeter sets language zh_TW
[+33.16s] DEBUG: Greeter requests session xubuntu
[+33.18s] DEBUG: Writing /home/user/.dmrc
...略...
[+33.26s] DEBUG: Session pid=2131: Running command /usr/sbin/lightdm-session startxfce4
[+33.26s] DEBUG: Creating shared data directory /var/lib/lightdm-data/user
[+33.26s] DEBUG: Session pid=2131: Logging to .xsession-errors
...略...
[+238.15s] DEBUG: Display manager stopped
[+238.15s] DEBUG: Stopping daemon
[+238.16s] DEBUG: Exiting with return value 0
```
