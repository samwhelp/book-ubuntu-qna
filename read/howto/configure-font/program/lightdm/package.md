---
layout: page
title: 如何找尋lightdm相關的套件
description: >
  Ubuntu環境，如何找尋lightdm相關的套件。
parent:
  title: 程式如何設定字型
  url: '/read/howto/configure-font/'
source_url: '/read/howto/configure-font/program/lightdm/package.md'
---

## 找尋相關套件

執行

```
$ dpkg -l '*lightdm*'
```

繁體中文版會顯示

```
要求=U:未知/I:安裝/R:刪除/P:清除/H:保留
| 狀態=N:未安裝/I:已安裝/C:設定檔/U:已解開/F:半設定/H:半安裝/W:待觸發/T:未觸發
|/ 錯誤?=(無)/R:須重新安裝（狀態，錯誤：大寫=有問題）
||/ 名稱                                               版本                           硬體平台                       簡介
+++-==================================================-==============================-==============================-==========================================================================================================
un  liblightdm-gobject-0-0                             <無>                           <none>                         （無相關介紹）
ii  liblightdm-gobject-1-0:amd64                       1.18.2-0ubuntu1                amd64                          LightDM GObject client library
un  liblightdm-qt-0-0                                  <無>                           <none>                         （無相關介紹）
ii  lightdm                                            1.18.2-0ubuntu1                amd64                          Display Manager
un  lightdm-greeter                                    <無>                           <none>                         （無相關介紹）
un  lightdm-gtk                                        <無>                           <none>                         （無相關介紹）
ii  lightdm-gtk-greeter                                2.0.1-2ubuntu4                 amd64                          simple display manager (GTK+ greeter)
un  lightdm-gtk-greeter-config                         <無>                           <none>                         （無相關介紹）
ii  lightdm-gtk-greeter-settings                       1.2.1-0ubuntu1                 all                            settings editor for the LightDM GTK+ Greeter
un  lightdm-kde-greeter                                <無>                           <none>                         （無相關介紹）
```

英文版會顯示

```
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name                          Version             Architecture        Description
+++-=============================-===================-===================-================================================================
un  liblightdm-gobject-0-0        <none>              <none>              (no description available)
ii  liblightdm-gobject-1-0:amd64  1.18.3-0ubuntu1     amd64               LightDM GObject client library
un  liblightdm-qt-0-0             <none>              <none>              (no description available)
ii  lightdm                       1.18.3-0ubuntu1     amd64               Display Manager
un  lightdm-greeter               <none>              <none>              (no description available)
un  lightdm-gtk                   <none>              <none>              (no description available)
ii  lightdm-gtk-greeter           2.0.1-2ubuntu4      amd64               simple display manager (GTK+ greeter)
un  lightdm-gtk-greeter-config    <none>              <none>              (no description available)
ii  lightdm-gtk-greeter-settings  1.2.1-0ubuntu1      all                 settings editor for the LightDM GTK+ Greeter
un  lightdm-kde-greeter           <none>              <none>              (no description available)

```

從上面的訊息，下面列出已經安裝在系統上的套件

* [lightdm](http://packages.ubuntu.com/xenial/lightdm)
* [lightdm-gtk-greeter](http://packages.ubuntu.com/xenial/lightdm-gtk-greeter)
* [lightdm-gtk-greeter-settings](http://packages.ubuntu.com/xenial/lightdm-gtk-greeter-settings)
* [liblightdm-gobject-1-0](http://packages.ubuntu.com/xenial/liblightdm-gobject-1-0)


## lightdm

執行下面指令，列出「[lightdm](http://packages.ubuntu.com/xenial/lightdm)」安裝在系統上的檔案

``` sh
$ dpkg -L lightdm | sort
```

顯示

```
/.
/etc
/etc/apparmor.d
/etc/apparmor.d/abstractions
/etc/apparmor.d/abstractions/lightdm
/etc/apparmor.d/abstractions/lightdm_chromium-browser
/etc/apparmor.d/lightdm-guest-session
/etc/dbus-1
/etc/dbus-1/system.d
/etc/dbus-1/system.d/org.freedesktop.DisplayManager.conf
/etc/guest-session
/etc/init
/etc/init.d
/etc/init.d/lightdm
/etc/init/lightdm.conf
/etc/lightdm
/etc/lightdm/lightdm.conf.d
/etc/lightdm/users.conf
/etc/logrotate.d
/etc/logrotate.d/lightdm
/etc/pam.d
/etc/pam.d/lightdm
/etc/pam.d/lightdm-autologin
/etc/pam.d/lightdm-greeter
/etc/X11
/lib
/lib/systemd
/lib/systemd/system
/lib/systemd/system/lightdm.service
/usr
/usr/bin
/usr/bin/dm-tool
/usr/lib
/usr/lib/lightdm
/usr/lib/lightdm/config-error-dialog.sh
/usr/lib/lightdm/guest-session-auto.sh
/usr/lib/lightdm/lightdm-greeter-session
/usr/lib/lightdm/lightdm-guest-session
/usr/sbin
/usr/sbin/guest-account
/usr/sbin/lightdm
/usr/sbin/lightdm-session
/usr/share
/usr/share/apport
/usr/share/apport/package-hooks
/usr/share/apport/package-hooks/source_lightdm.py
/usr/share/bash-completion
/usr/share/bash-completion/completions
/usr/share/bash-completion/completions/dm-tool
/usr/share/bash-completion/completions/lightdm
/usr/share/doc
/usr/share/doc/lightdm
/usr/share/doc/lightdm/changelog.Debian.gz
/usr/share/doc/lightdm/copyright
/usr/share/doc/lightdm/keys.conf
/usr/share/doc/lightdm/lightdm.conf.gz
/usr/share/lightdm
/usr/share/lightdm/guest-session
/usr/share/lightdm/guest-session/setup.sh
/usr/share/lightdm/guest-session/skel
/usr/share/lightdm/guest-session/skel/.config
/usr/share/lightdm/guest-session/skel/.config/autostart
/usr/share/lightdm/guest-session/skel/.config/autostart/guest-session-startup.desktop
/usr/share/lightdm/lightdm.conf.d
/usr/share/lightdm/lightdm.conf.d/50-disable-log-backup.conf
/usr/share/lightdm/lightdm.conf.d/50-greeter-wrapper.conf
/usr/share/lightdm/lightdm.conf.d/50-guest-wrapper.conf
/usr/share/lightdm/lightdm.conf.d/50-xserver-command.conf
/usr/share/man
/usr/share/man/man1
/usr/share/man/man1/dm-tool.1.gz
/usr/share/man/man1/lightdm.1.gz
/var
/var/cache
/var/cache/lightdm
/var/lib
/var/lib/lightdm-data
/var/log
/var/log/lightdm

```

上面的列表，也可以從「/var/lib/dpkg/info/lightdm.list」這個檔找到。

``` sh
$ cat /var/lib/dpkg/info/lightdm.list | sort
```

## lightdm-gtk-greeter

執行下面指令，列出「[lightdm-gtk-greeter](http://packages.ubuntu.com/xenial/lightdm-gtk-greeter)」安裝在系統上的檔案

``` sh
$ dpkg -L lightdm-gtk-greeter | sort
```

顯示

```
/.
/etc
/etc/lightdm
/etc/lightdm/lightdm-gtk-greeter.conf
/usr
/usr/sbin
/usr/sbin/lightdm-gtk-greeter
/usr/share
/usr/share/doc
/usr/share/doc/lightdm-gtk-greeter
/usr/share/doc/lightdm-gtk-greeter/changelog.Debian.gz
/usr/share/doc/lightdm-gtk-greeter/copyright
/usr/share/doc/lightdm-gtk-greeter/sample-lightdm-gtk-greeter.css
/usr/share/icons
/usr/share/icons/hicolor
/usr/share/icons/hicolor/scalable
/usr/share/icons/hicolor/scalable/places
/usr/share/icons/hicolor/scalable/places/gnome_badge-symbolic.svg
/usr/share/icons/hicolor/scalable/places/gnome-classic_badge-symbolic.svg
/usr/share/icons/hicolor/scalable/places/gnome-fallback_badge-symbolic.svg
/usr/share/icons/hicolor/scalable/places/gnome-fallback-compiz_badge-symbolic.svg
/usr/share/icons/hicolor/scalable/places/gnome-flashback_badge-symbolic.svg
/usr/share/icons/hicolor/scalable/places/gnome-flashback-compiz_badge-symbolic.svg
/usr/share/icons/hicolor/scalable/places/gnome-shell_badge-symbolic.svg
/usr/share/icons/hicolor/scalable/places/kde_badge-symbolic.svg
/usr/share/icons/hicolor/scalable/places/kde-plasma_badge-symbolic.svg
/usr/share/icons/hicolor/scalable/places/lubuntu_badge-symbolic.svg
/usr/share/icons/hicolor/scalable/places/lxde_badge-symbolic.svg
/usr/share/icons/hicolor/scalable/places/mate_badge-symbolic.svg
/usr/share/icons/hicolor/scalable/places/pantheon_badge-symbolic.svg
/usr/share/icons/hicolor/scalable/places/ubuntu-2d_badge-symbolic.svg
/usr/share/icons/hicolor/scalable/places/ubuntu_badge-symbolic.svg
/usr/share/icons/hicolor/scalable/places/ubuntustudio_badge-symbolic.svg
/usr/share/icons/hicolor/scalable/places/wmaker-common_badge-symbolic.svg
/usr/share/icons/hicolor/scalable/places/xfce_badge-symbolic.svg
/usr/share/icons/hicolor/scalable/places/xterm_badge-symbolic.svg
/usr/share/icons/hicolor/scalable/places/xubuntu_badge-symbolic.svg
/usr/share/lightdm
/usr/share/lightdm/lightdm.conf.d
/usr/share/lightdm/lightdm.conf.d/60-lightdm-gtk-greeter.conf
/usr/share/lightdm/lightdm-gtk-greeter.conf.d
/usr/share/lightdm/lightdm-gtk-greeter.conf.d/01_ubuntu.conf
/usr/share/lintian
/usr/share/lintian/overrides
/usr/share/lintian/overrides/lightdm-gtk-greeter
/usr/share/locale
/usr/share/locale/ar
/usr/share/locale/ar/LC_MESSAGES
/usr/share/locale/ar/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/ast
/usr/share/locale/ast/LC_MESSAGES
/usr/share/locale/ast/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/be
/usr/share/locale/be/LC_MESSAGES
/usr/share/locale/be/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/bg
/usr/share/locale/bg/LC_MESSAGES
/usr/share/locale/bg/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/bn
/usr/share/locale/bn/LC_MESSAGES
/usr/share/locale/bn/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/bo
/usr/share/locale/bo/LC_MESSAGES
/usr/share/locale/bo/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/br
/usr/share/locale/br/LC_MESSAGES
/usr/share/locale/br/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/bs
/usr/share/locale/bs/LC_MESSAGES
/usr/share/locale/bs/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/ca
/usr/share/locale/ca/LC_MESSAGES
/usr/share/locale/ca/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/ca@valencia
/usr/share/locale/ca@valencia/LC_MESSAGES
/usr/share/locale/ca@valencia/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/cs
/usr/share/locale/cs/LC_MESSAGES
/usr/share/locale/cs/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/da
/usr/share/locale/da/LC_MESSAGES
/usr/share/locale/da/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/de
/usr/share/locale/de/LC_MESSAGES
/usr/share/locale/de/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/el
/usr/share/locale/el/LC_MESSAGES
/usr/share/locale/el/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/en_AU
/usr/share/locale/en_AU/LC_MESSAGES
/usr/share/locale/en_AU/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/en_CA
/usr/share/locale/en_CA/LC_MESSAGES
/usr/share/locale/en_CA/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/en_GB
/usr/share/locale/en_GB/LC_MESSAGES
/usr/share/locale/en_GB/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/eo
/usr/share/locale/eo/LC_MESSAGES
/usr/share/locale/eo/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/es
/usr/share/locale/es/LC_MESSAGES
/usr/share/locale/es/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/et
/usr/share/locale/et/LC_MESSAGES
/usr/share/locale/et/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/eu
/usr/share/locale/eu/LC_MESSAGES
/usr/share/locale/eu/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/fi
/usr/share/locale/fi/LC_MESSAGES
/usr/share/locale/fi/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/fr
/usr/share/locale/fr/LC_MESSAGES
/usr/share/locale/fr/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/fy
/usr/share/locale/fy/LC_MESSAGES
/usr/share/locale/fy/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/gd
/usr/share/locale/gd/LC_MESSAGES
/usr/share/locale/gd/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/gl
/usr/share/locale/gl/LC_MESSAGES
/usr/share/locale/gl/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/he
/usr/share/locale/he/LC_MESSAGES
/usr/share/locale/he/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/hi
/usr/share/locale/hi/LC_MESSAGES
/usr/share/locale/hi/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/hr
/usr/share/locale/hr/LC_MESSAGES
/usr/share/locale/hr/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/hu
/usr/share/locale/hu/LC_MESSAGES
/usr/share/locale/hu/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/ia
/usr/share/locale/ia/LC_MESSAGES
/usr/share/locale/ia/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/id
/usr/share/locale/id/LC_MESSAGES
/usr/share/locale/id/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/it
/usr/share/locale/it/LC_MESSAGES
/usr/share/locale/it/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/ja
/usr/share/locale/ja/LC_MESSAGES
/usr/share/locale/ja/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/kk
/usr/share/locale/kk/LC_MESSAGES
/usr/share/locale/kk/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/km
/usr/share/locale/km/LC_MESSAGES
/usr/share/locale/km/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/ko
/usr/share/locale/ko/LC_MESSAGES
/usr/share/locale/ko/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/ku
/usr/share/locale/ku/LC_MESSAGES
/usr/share/locale/ku/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/lb
/usr/share/locale/lb/LC_MESSAGES
/usr/share/locale/lb/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/lt
/usr/share/locale/lt/LC_MESSAGES
/usr/share/locale/lt/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/lv
/usr/share/locale/lv/LC_MESSAGES
/usr/share/locale/lv/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/mhr
/usr/share/locale/mhr/LC_MESSAGES
/usr/share/locale/mhr/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/ml
/usr/share/locale/ml/LC_MESSAGES
/usr/share/locale/ml/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/ms
/usr/share/locale/ms/LC_MESSAGES
/usr/share/locale/ms/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/nb
/usr/share/locale/nb/LC_MESSAGES
/usr/share/locale/nb/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/nl
/usr/share/locale/nl/LC_MESSAGES
/usr/share/locale/nl/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/nn
/usr/share/locale/nn/LC_MESSAGES
/usr/share/locale/nn/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/oc
/usr/share/locale/oc/LC_MESSAGES
/usr/share/locale/oc/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/pl
/usr/share/locale/pl/LC_MESSAGES
/usr/share/locale/pl/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/pt
/usr/share/locale/pt_BR
/usr/share/locale/pt_BR/LC_MESSAGES
/usr/share/locale/pt_BR/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/pt/LC_MESSAGES
/usr/share/locale/pt/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/ro
/usr/share/locale/ro/LC_MESSAGES
/usr/share/locale/ro/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/ru
/usr/share/locale/ru/LC_MESSAGES
/usr/share/locale/ru/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/sd
/usr/share/locale/sd/LC_MESSAGES
/usr/share/locale/sd/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/si
/usr/share/locale/si/LC_MESSAGES
/usr/share/locale/si/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/sk
/usr/share/locale/sk/LC_MESSAGES
/usr/share/locale/sk/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/sl
/usr/share/locale/sl/LC_MESSAGES
/usr/share/locale/sl/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/sq
/usr/share/locale/sq/LC_MESSAGES
/usr/share/locale/sq/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/sr
/usr/share/locale/sr/LC_MESSAGES
/usr/share/locale/sr/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/sv
/usr/share/locale/sv/LC_MESSAGES
/usr/share/locale/sv/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/ta
/usr/share/locale/ta/LC_MESSAGES
/usr/share/locale/ta/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/te
/usr/share/locale/te/LC_MESSAGES
/usr/share/locale/te/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/th
/usr/share/locale/th/LC_MESSAGES
/usr/share/locale/th/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/tr
/usr/share/locale/tr/LC_MESSAGES
/usr/share/locale/tr/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/ug
/usr/share/locale/ug/LC_MESSAGES
/usr/share/locale/ug/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/uk
/usr/share/locale/uk/LC_MESSAGES
/usr/share/locale/uk/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/uz
/usr/share/locale/uz/LC_MESSAGES
/usr/share/locale/uz/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/vi
/usr/share/locale/vi/LC_MESSAGES
/usr/share/locale/vi/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/wae
/usr/share/locale/wae/LC_MESSAGES
/usr/share/locale/wae/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/zh_CN
/usr/share/locale/zh_CN/LC_MESSAGES
/usr/share/locale/zh_CN/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/zh_HK
/usr/share/locale/zh_HK/LC_MESSAGES
/usr/share/locale/zh_HK/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/locale/zh_TW
/usr/share/locale/zh_TW/LC_MESSAGES
/usr/share/locale/zh_TW/LC_MESSAGES/lightdm-gtk-greeter.mo
/usr/share/xgreeters
/usr/share/xgreeters/lightdm-gtk-greeter.desktop
```

上面的列表，也可以從「/var/lib/dpkg/info/lightdm-gtk-greeter.list」這個檔找到。

``` sh
$ cat /var/lib/dpkg/info/lightdm-gtk-greeter.list | sort
```


更多的套件探索方式，請參考「[如何探索「Ubuntu](/book-ubuntu-qna/read/howto/exploration/)」。
