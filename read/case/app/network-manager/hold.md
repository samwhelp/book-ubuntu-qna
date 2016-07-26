---
layout: page
title: 如何設定 NetworkManager 成不更新不升級
description: >
  Ubuntu 環境，如何設定 NetworkManager 成不更新不升級。
parent:
  title: Network Manager
  url: /read/case/app/network-manager
---


## 原始討論

* 原始討論「[回覆: NetworkManager如何設定成不更新不升級?](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=353756#forumpost353756)」。
* 原始討論「[回覆: NetworkManager如何設定成不更新不升級?](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=353766#forumpost353766)」。

## 相關說明

執行

$ man [apt-mark](http://manpages.ubuntu.com/manpages/xenial/en/man8/apt-mark.8.html)


可以找到下面的說明

```

...略...

PREVENT CHANGES FOR A PACKAGE

       hold
           hold is used to mark a package as held back, which will prevent the
           package from being automatically installed, upgraded or removed.


...略...

```


## 操作步驟

以下步驟，從剛安裝好在VirtualBox上的16.04來測試的。

執行

``` sh
$ sudo apt-get update
```

然後執行

``` sh
$ apt-cache policy network-manager
```

顯示

```
network-manager:
  Installed: 1.1.93-0ubuntu4
  Candidate: 1.2.0-0ubuntu0.16.04.3
  Version table:
     1.2.0-0ubuntu0.16.04.3 500
        500 http://tw.archive.ubuntu.com/ubuntu xenial-updates/main amd64 Packages
 *** 1.1.93-0ubuntu4 500
        500 http://tw.archive.ubuntu.com/ubuntu xenial/main amd64 Packages
        100 /var/lib/dpkg/status

```


執行下面指令，將「[network-manager](http://packages.ubuntu.com/xenial/network-manager)」這個套件，設定為hold。
（樓主，你一開始要問的，只有這個指令，其他的步驟只是確認。）

``` sh
$ sudo apt-mark hold network-manager
```


顯示

```
network-manager set on hold.
```

## 確認方法

### 確認方法一

執行

``` sh
$ apt-mark showhold
```

顯示

```
network-manager
```

### 確認方法二


執行

``` sh
$ dpkg --get-selections | grep hold
```

顯示

```
network-manager					hold
```

### 確認方法三

執行

``` sh
$ grep 'Package: network-manager$' /var/lib/dpkg/status -A 1
```

顯示

```
Package: network-manager
Status: hold ok installed
```

### 確認方法四

執行

``` sh
$ dpkg -l network-manager
```

顯示(一般的狀況，應該是「ii」，現在變成「hi」)

```
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name                          Version             Architecture        Description
+++-=============================-===================-===================-========
hi  network-manager               1.1.93-0ubuntu4     amd64               network management framework (daemon and userspace tools)
```


## 更新測試



執行

``` sh
$ apt-cache policy network-manager
```

顯示

```
network-manager:
  Installed: 1.1.93-0ubuntu4
  Candidate: 1.2.0-0ubuntu0.16.04.3
  Version table:
     1.2.0-0ubuntu0.16.04.3 500
        500 http://tw.archive.ubuntu.com/ubuntu xenial-updates/main amd64 Packages
 *** 1.1.93-0ubuntu4 500
        500 http://tw.archive.ubuntu.com/ubuntu xenial/main amd64 Packages
        100 /var/lib/dpkg/status
```

### 測試 一


執行

``` sh
$ sudo apt-get install network-manager
```

顯示

```
Reading package lists... Done
Building dependency tree
Reading state information... Done
The following held packages will be changed:
  network-manager
The following packages will be upgraded:
  network-manager
1 upgraded, 0 newly installed, 0 to remove and 275 not upgraded.
Need to get 1949 kB of archives.
After this operation, 12.3 kB of additional disk space will be used.
Do you want to continue? [Y/n]

```

### 測試二

執行

``` sh
$ sudo apt-get upgrade
```

顯示  (注意下面的 The following packages have been kept back:)

```
Reading package lists... Done
Building dependency tree
Reading state information... Done
Calculating upgrade... Done
The following packages have been kept back:
  linux-generic linux-headers-generic linux-image-generic network-manager
The following packages will be upgraded:
  accountsservice adwaita-icon-theme apport apport-gtk appstream apt apt-transport-https apt-utils base-files bash bash-completion bind9-host
  binutils brltty brltty-x11 bsdutils command-not-found command-not-found-data console-setup console-setup-linux cpp-5 dh-python
  distro-info-data dmidecode dnsmasq-base dnsutils dosfstools dpkg file-roller firefox firefox-locale-en fonts-noto-cjk fonts-opensymbol fuse
  fwupd gcc-5 gcc-5-base gdb gdbserver gir1.2-gmenu-3.0 gir1.2-gst-plugins-base-1.0 gir1.2-gstreamer-1.0 gir1.2-gtk-3.0
  gir1.2-packagekitglib-1.0 gir1.2-soup-2.4 glib-networking glib-networking-common glib-networking-services gnome-menus gnome-software
  gnome-software-common grep grub-common grub-pc grub-pc-bin grub2-common gstreamer1.0-libav gstreamer1.0-plugins-base
  gstreamer1.0-plugins-good gstreamer1.0-pulseaudio gstreamer1.0-x gtk2-engines-murrine gvfs gvfs-backends gvfs-bin gvfs-common gvfs-daemons
  gvfs-fuse gvfs-libs imagemagick imagemagick-6.q16 imagemagick-common init init-system-helpers initramfs-tools initramfs-tools-bin
  initramfs-tools-core isc-dhcp-client isc-dhcp-common keyboard-configuration klibc-utils language-pack-en language-pack-en-base
  language-pack-gnome-en language-pack-gnome-en-base language-selector-common language-selector-gnome libaccountsservice0 libappstream-glib8
  libappstream3 libapt-inst2.0 libapt-pkg5.0 libarchive13 libasan2 libatomic1 libbind9-140 libblkid1 libboost-date-time1.58.0
  libboost-filesystem1.58.0 libboost-iostreams1.58.0 libboost-system1.58.0 libbrlapi0.6 libcc1-0 libcilkrts5 libdfu1 libdns-export162
  libdns162 libdpkg-perl libdrm-amdgpu1 libdrm-intel1 libdrm-nouveau2 libdrm-radeon1 libdrm2 libexpat1 libfdisk1 libfuse2 libfwupd1
  libgcc-5-dev libgd3 libglib2.0-0 libglib2.0-bin libglib2.0-data libgnome-menu-3-0 libgnutls-openssl27 libgnutls30 libgomp1
  libgstreamer-plugins-base1.0-0 libgstreamer-plugins-good1.0-0 libgstreamer1.0-0 libgtk-3-0 libgtk-3-bin libgtk-3-common libimobiledevice6
  libisc-export160 libisc160 libisccc140 libisccfg140 libitm1 libklibc libksba8 libldap-2.4-2 liblightdm-gobject-1-0 libllvm3.8 liblsan0
  liblwres141 libmagickcore-6.q16-2 libmagickcore-6.q16-2-extra libmagickwand-6.q16-2 libmount1 libmpx0 libndp0 libnm-glib-vpn1 libnm-glib4
  libnm-gtk-common libnm-gtk0 libnm-util2 libnm0 libnma-common libnma0 libnspr4 libnss3 libnss3-nssdb libpackagekit-glib2-16 libpam-systemd
  libplymouth4 libpurple-bin libpurple0 libpython2.7 libpython2.7-minimal libpython2.7-stdlib libpython3.5 libpython3.5-minimal
  libpython3.5-stdlib libquadmath0 libreoffice-base-core libreoffice-calc libreoffice-common libreoffice-core libreoffice-gtk
  libreoffice-help-en-us libreoffice-math libreoffice-style-elementary libreoffice-style-galaxy libreoffice-writer libsmartcols1 libsmbclient
  libsoup-gnome2.4-1 libsoup2.4-1 libssl1.0.0 libstdc++6 libsystemd0 libtasn1-6 libtevent0 libtsan0 libubsan0 libudev1
  libunity-protocol-private0 libunity-scopes-json-def-desktop libunity9 libupower-glib3 libusbmuxd4 libuuid1 libwbclient0 libwhoopsie0
  libwnck-common libwnck22 libxml2 lightdm linux-firmware linux-libc-dev lsb-base lsb-release lshw mount mtr-tiny mythes-en-us
  network-manager-gnome openssh-client openssl pidgin pidgin-data plymouth plymouth-label plymouth-theme-ubuntu-text printer-driver-brlaser
  python2.7 python2.7-minimal python3-apport python3-commandnotfound python3-distupgrade python3-problem-report python3-software-properties
  python3-uno python3-urllib3 python3.5 python3.5-minimal samba-libs sbsigntool shared-mime-info snapd software-properties-common
  software-properties-gtk sudo systemd systemd-sysv thermald thunderbird thunderbird-locale-en thunderbird-locale-en-us tzdata
  ubuntu-core-launcher ubuntu-drivers-common ubuntu-mono ubuntu-release-upgrader-core ubuntu-release-upgrader-gtk udev uno-libs3
  update-notifier update-notifier-common upower upstart ure util-linux uuid-runtime vim-common vim-tiny wget whoopsie xbrlapi xinit
  xserver-common xserver-xorg-core
272 upgraded, 0 newly installed, 0 to remove and 4 not upgraded.
Need to get 379 MB/386 MB of archives.
After this operation, 33.6 MB of additional disk space will be used.
Do you want to continue? [Y/n]
```

## 測試三

執行

``` sh
$ sudo apt-get dist-upgrade
```

顯示  (注意下面的 The following packages have been kept back:)

```
Reading package lists... Done
Building dependency tree
Reading state information... Done
Calculating upgrade... Done
The following NEW packages will be installed:
  linux-headers-4.4.0-31 linux-headers-4.4.0-31-generic linux-image-4.4.0-31-generic linux-image-extra-4.4.0-31-generic
The following packages have been kept back:
  network-manager
The following packages will be upgraded:
  accountsservice adwaita-icon-theme apport apport-gtk appstream apt apt-transport-https apt-utils base-files bash bash-completion bind9-host
  binutils brltty brltty-x11 bsdutils command-not-found command-not-found-data console-setup console-setup-linux cpp-5 dh-python
  distro-info-data dmidecode dnsmasq-base dnsutils dosfstools dpkg file-roller firefox firefox-locale-en fonts-noto-cjk fonts-opensymbol fuse
  fwupd gcc-5 gcc-5-base gdb gdbserver gir1.2-gmenu-3.0 gir1.2-gst-plugins-base-1.0 gir1.2-gstreamer-1.0 gir1.2-gtk-3.0
  gir1.2-packagekitglib-1.0 gir1.2-soup-2.4 glib-networking glib-networking-common glib-networking-services gnome-menus gnome-software
  gnome-software-common grep grub-common grub-pc grub-pc-bin grub2-common gstreamer1.0-libav gstreamer1.0-plugins-base
  gstreamer1.0-plugins-good gstreamer1.0-pulseaudio gstreamer1.0-x gtk2-engines-murrine gvfs gvfs-backends gvfs-bin gvfs-common gvfs-daemons
  gvfs-fuse gvfs-libs imagemagick imagemagick-6.q16 imagemagick-common init init-system-helpers initramfs-tools initramfs-tools-bin
  initramfs-tools-core isc-dhcp-client isc-dhcp-common keyboard-configuration klibc-utils language-pack-en language-pack-en-base
  language-pack-gnome-en language-pack-gnome-en-base language-selector-common language-selector-gnome libaccountsservice0 libappstream-glib8
  libappstream3 libapt-inst2.0 libapt-pkg5.0 libarchive13 libasan2 libatomic1 libbind9-140 libblkid1 libboost-date-time1.58.0
  libboost-filesystem1.58.0 libboost-iostreams1.58.0 libboost-system1.58.0 libbrlapi0.6 libcc1-0 libcilkrts5 libdfu1 libdns-export162
  libdns162 libdpkg-perl libdrm-amdgpu1 libdrm-intel1 libdrm-nouveau2 libdrm-radeon1 libdrm2 libexpat1 libfdisk1 libfuse2 libfwupd1
  libgcc-5-dev libgd3 libglib2.0-0 libglib2.0-bin libglib2.0-data libgnome-menu-3-0 libgnutls-openssl27 libgnutls30 libgomp1
  libgstreamer-plugins-base1.0-0 libgstreamer-plugins-good1.0-0 libgstreamer1.0-0 libgtk-3-0 libgtk-3-bin libgtk-3-common libimobiledevice6
  libisc-export160 libisc160 libisccc140 libisccfg140 libitm1 libklibc libksba8 libldap-2.4-2 liblightdm-gobject-1-0 libllvm3.8 liblsan0
  liblwres141 libmagickcore-6.q16-2 libmagickcore-6.q16-2-extra libmagickwand-6.q16-2 libmount1 libmpx0 libndp0 libnm-glib-vpn1 libnm-glib4
  libnm-gtk-common libnm-gtk0 libnm-util2 libnm0 libnma-common libnma0 libnspr4 libnss3 libnss3-nssdb libpackagekit-glib2-16 libpam-systemd
  libplymouth4 libpurple-bin libpurple0 libpython2.7 libpython2.7-minimal libpython2.7-stdlib libpython3.5 libpython3.5-minimal
  libpython3.5-stdlib libquadmath0 libreoffice-base-core libreoffice-calc libreoffice-common libreoffice-core libreoffice-gtk
  libreoffice-help-en-us libreoffice-math libreoffice-style-elementary libreoffice-style-galaxy libreoffice-writer libsmartcols1 libsmbclient
  libsoup-gnome2.4-1 libsoup2.4-1 libssl1.0.0 libstdc++6 libsystemd0 libtasn1-6 libtevent0 libtsan0 libubsan0 libudev1
  libunity-protocol-private0 libunity-scopes-json-def-desktop libunity9 libupower-glib3 libusbmuxd4 libuuid1 libwbclient0 libwhoopsie0
  libwnck-common libwnck22 libxml2 lightdm linux-firmware linux-generic linux-headers-generic linux-image-generic linux-libc-dev lsb-base
  lsb-release lshw mount mtr-tiny mythes-en-us network-manager-gnome openssh-client openssl pidgin pidgin-data plymouth plymouth-label
  plymouth-theme-ubuntu-text printer-driver-brlaser python2.7 python2.7-minimal python3-apport python3-commandnotfound python3-distupgrade
  python3-problem-report python3-software-properties python3-uno python3-urllib3 python3.5 python3.5-minimal samba-libs sbsigntool
  shared-mime-info snapd software-properties-common software-properties-gtk sudo systemd systemd-sysv thermald thunderbird
  thunderbird-locale-en thunderbird-locale-en-us tzdata ubuntu-core-launcher ubuntu-drivers-common ubuntu-mono ubuntu-release-upgrader-core
  ubuntu-release-upgrader-gtk udev uno-libs3 update-notifier update-notifier-common upower upstart ure util-linux uuid-runtime vim-common
  vim-tiny wget whoopsie xbrlapi xinit xserver-common xserver-xorg-core
275 upgraded, 4 newly installed, 0 to remove and 1 not upgraded.
Need to get 447 MB/454 MB of archives.
After this operation, 329 MB of additional disk space will be used.
Do you want to continue? [Y/n]
```

## 復原

若要「取消hold」，只要執行下面指令就行了。

``` sh
$ sudo apt-mark unhold network-manager
```


## 附註

* 「apt-mark」這個指令，在「[這篇回覆](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=352334#forumpost352334)」，我有提過，當時只是用來找尋被hold的套件。真的實際使用hold，也是在這次才使用，所以我不確定會不會有啥副作用。
* 以前相關的討論「[16.04拒絕了dsl的使用者?](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=351668#forumpost351668)」，「[升級15.10後無法連線(已解決)](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=350398#forumpost350398)」，我想樓主有參考過，只是附註在這，給未來有相關問題的人，可以找到相關參考。

## manpage

* man [dpkg](http://manpages.ubuntu.com/manpages/xenial/en/man1/dpkg.1.html)
* man [dpkg-query](http://manpages.ubuntu.com/manpages/xenial/en/man1/dpkg-query.1.html)
* man [apt-mark](http://manpages.ubuntu.com/manpages/xenial/en/man8/apt-mark.8.html)
* man [apt-cache](http://manpages.ubuntu.com/manpages/xenial/en/man8/apt-cache.8.html)
* man [apt-get](http://manpages.ubuntu.com/manpages/xenial/en/man8/apt-get.8.html)

更多套件操作實務，請參考這個「[索引](http://samwhelp.github.io/book-ubuntu-qna/read/subject/package/)」。


## 另一個操作步驟

提供另一個操作步驟，設定「hold」。
概念上跟上面提到的是一樣的。


## 操作步驟

執行下面指令產生一個「list.txt」。

``` sh
$ echo 'network-manager hold' > list.txt
```

執行下面指令，觀看「list.txt」的內容。

``` sh
$ cat list.txt
```

顯示

```
network-manager hold
```


執行下面指令設定「hold」

``` sh
$ sudo dpkg --set-selections < list.txt
```

上面執行完後，一樣可以使用上面的「確認方法」。

這個方法，可以用在移除套件，我之前有紀錄在「[這篇](http://samwhelp.github.io/book-ubuntu-basic-skill/book/content/package/how-to-remove-package.html)」，下方有個「select移除」。
