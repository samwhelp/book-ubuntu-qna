---
layout: page
title: trace linux-generic
description: >
  trace linux-generic。
parent:
  title: Linux Package
  url: /read/case/linux-package
---

延續這篇「[update linux-generic](/book-ubuntu-qna/read/case/linux-package/update-linux-generic.html)」，


## 觀察目前套件狀態

執行

``` sh
$ dpkg -l 'linux*'
```

顯示

```
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name                          Version             Architecture        Description
+++-=============================-===================-===================-================================================================
ii  linux-base                    4.0ubuntu1          all                 Linux image base package
un  linux-doc-4.4.0               <none>              <none>              (no description available)
ii  linux-firmware                1.157               all                 Firmware for Linux kernel drivers
ii  linux-generic                 4.4.0.28.30         amd64               Complete Generic Linux kernel and headers
un  linux-headers                 <none>              <none>              (no description available)
un  linux-headers-3.0             <none>              <none>              (no description available)
ii  linux-headers-4.4.0-21        4.4.0-21.37         all                 Header files related to Linux kernel version 4.4.0
ii  linux-headers-4.4.0-21-generi 4.4.0-21.37         amd64               Linux kernel headers for version 4.4.0 on 64 bit x86 SMP
ii  linux-headers-4.4.0-28        4.4.0-28.47         all                 Header files related to Linux kernel version 4.4.0
ii  linux-headers-4.4.0-28-generi 4.4.0-28.47         amd64               Linux kernel headers for version 4.4.0 on 64 bit x86 SMP
ii  linux-headers-generic         4.4.0.28.30         amd64               Generic Linux kernel headers
un  linux-image                   <none>              <none>              (no description available)
ii  linux-image-4.4.0-21-generic  4.4.0-21.37         amd64               Linux kernel image for version 4.4.0 on 64 bit x86 SMP
ii  linux-image-4.4.0-28-generic  4.4.0-28.47         amd64               Linux kernel image for version 4.4.0 on 64 bit x86 SMP
ii  linux-image-extra-4.4.0-21-ge 4.4.0-21.37         amd64               Linux kernel extra modules for version 4.4.0 on 64 bit x86 SMP
ii  linux-image-extra-4.4.0-28-ge 4.4.0-28.47         amd64               Linux kernel extra modules for version 4.4.0 on 64 bit x86 SMP
ii  linux-image-generic           4.4.0.28.30         amd64               Generic Linux kernel image
un  linux-initramfs-tool          <none>              <none>              (no description available)
un  linux-kernel-headers          <none>              <none>              (no description available)
un  linux-kernel-log-daemon       <none>              <none>              (no description available)
ii  linux-libc-dev:amd64          4.4.0-21.37         amd64               Linux Kernel Headers for development
un  linux-restricted-common       <none>              <none>              (no description available)
ii  linux-sound-base              1.0.25+dfsg-0ubuntu all                 base package for ALSA and OSS sound systems
un  linux-source-4.4.0            <none>              <none>              (no description available)
un  linux-tools                   <none>              <none>              (no description available)
```

## linux-generic

執行

``` sh
$ dpkg -s linux-generic
```

顯示

```
Package: linux-generic
Status: install ok installed
Priority: optional
Section: kernel
Installed-Size: 11
Maintainer: Ubuntu Kernel Team <kernel-team@lists.ubuntu.com>
Architecture: amd64
Source: linux-meta
Version: 4.4.0.28.30
Depends: linux-image-generic (= 4.4.0.28.30), linux-headers-generic (= 4.4.0.28.30)
Description: Complete Generic Linux kernel and headers
 This package will always depend on the latest complete generic Linux kernel
 and headers.
```

執行

``` sh
$ dpkg -L linux-generic
```

顯示

```
/.
/usr
/usr/share
/usr/share/doc
/usr/share/doc/linux-generic
/usr/share/doc/linux-generic/copyright
/usr/share/doc/linux-generic/changelog.gz
```

「[linux-generic](http://packages.ubuntu.com/xenial/linux-generic)」是一個「[MetaPackage](https://help.ubuntu.com/community/MetaPackages)」。

執行

``` sh
$ dpkg -s linux-generic | grep Depends:
```

顯示

```
Depends: linux-image-generic (= 4.4.0.28.30), linux-headers-generic (= 4.4.0.28.30)
```

## linux-image-generic

執行

``` sh
$ dpkg -s linux-image-generic
```

顯示

```
Package: linux-image-generic
Status: install ok installed
Priority: optional
Section: kernel
Installed-Size: 11
Maintainer: Ubuntu Kernel Team <kernel-team@lists.ubuntu.com>
Architecture: amd64
Source: linux-meta
Version: 4.4.0.28.30
Depends: linux-image-4.4.0-28-generic, linux-image-extra-4.4.0-28-generic, linux-firmware
Recommends: thermald
Description: Generic Linux kernel image
 This package will always depend on the latest generic kernel image
 available.
```

執行

``` sh
$ dpkg -L linux-image-generic
```

顯示

```
/.
/usr
/usr/share
/usr/share/doc
/usr/share/doc/linux-image-generic
/usr/share/doc/linux-image-generic/changelog.gz
/usr/share/doc/linux-image-generic/copyright
```


「[linux-image-generic](http://packages.ubuntu.com/xenial/linux-image-generic)」一樣是「[MetaPackage](https://help.ubuntu.com/community/MetaPackages)」。

執行

``` sh
$ dpkg -s linux-image-generic | grep Depends:
```

顯示

```
Depends: linux-image-4.4.0-28-generic, linux-image-extra-4.4.0-28-generic, linux-firmware
```

## linux-image-4.4.0-28-generic

執行

``` sh
$ dpkg -s linux-image-4.4.0-28-generic
```

顯示

```
Package: linux-image-4.4.0-28-generic
Status: install ok installed
Priority: optional
Section: kernel
Installed-Size: 54254
Maintainer: Ubuntu Kernel Team <kernel-team@lists.ubuntu.com>
Architecture: amd64
Source: linux
Version: 4.4.0-28.47
Provides: fuse-module, ivtv-modules, kvm-api-4, linux-image, redhat-cluster-modules, spl-dkms, virtualbox-guest-modules, zfs-dkms
Depends: initramfs-tools | linux-initramfs-tool, kmod
Recommends: grub-pc | grub-efi-amd64 | grub-efi-ia32 | grub | lilo
Suggests: fdutils, linux-doc-4.4.0 | linux-source-4.4.0, linux-tools, linux-headers-4.4.0-28-generic
Description: Linux kernel image for version 4.4.0 on 64 bit x86 SMP
 This package contains the Linux kernel image for version 4.4.0 on
 64 bit x86 SMP.
 .
 Also includes the corresponding System.map file, the modules built by the
 packager, and scripts that try to ensure that the system is not left in an
 unbootable state after an update.
 .
 Supports Generic processors.
 .
 Geared toward desktop and server systems.
 .
 You likely do not want to install this package directly. Instead, install
 the linux-generic meta-package, which will ensure that upgrades work
 correctly, and that supporting packages are also installed.

```

執行

``` sh
$ dpkg -L linux-image-4.4.0-28-generic
```

「[linux-image-4.4.0-28-generic](http://packages.ubuntu.com/xenial/linux-image-4.4.0-28-generic)」檔案很多，就不列在這了，檔案列表請自行執行上面的指令。

## linux-image-4.4.0-28-generic

執行

``` sh
$ dpkg -s linux-image-extra-4.4.0-28-generic
```

顯示

```
Package: linux-image-extra-4.4.0-28-generic
Status: install ok installed
Priority: optional
Section: kernel
Installed-Size: 158185
Maintainer: Ubuntu Kernel Team <kernel-team@lists.ubuntu.com>
Architecture: amd64
Source: linux
Version: 4.4.0-28.47
Depends: linux-image-4.4.0-28-generic, crda | wireless-crda
Description: Linux kernel extra modules for version 4.4.0 on 64 bit x86 SMP
 This package contains the Linux kernel extra modules for version 4.4.0 on
 64 bit x86 SMP.
 .
 Also includes the corresponding System.map file, the modules built by the
 packager, and scripts that try to ensure that the system is not left in an
 unbootable state after an update.
 .
 Supports Generic processors.
 .
 Geared toward desktop and server systems.
 .
 You likely do not want to install this package directly. Instead, install
 the linux-generic meta-package, which will ensure that upgrades work
 correctly, and that supporting packages are also installed.

```

執行

``` sh
$ dpkg -L linux-image-extra-4.4.0-28-generic
```


「[linux-image-extra-4.4.0-28-generic](http://packages.ubuntu.com/xenial/linux-image-extra-4.4.0-28-generic)」檔案很多，就不列在這了，檔案列表請自行執行上面的指令。

## manpage

* man 1 [dpkg](http://manpages.ubuntu.com/manpages/xenial/en/man1/dpkg.1.html)


## package

* [linux-generic](http://packages.ubuntu.com/xenial/linux-generic)
* [linux-image-generic](http://packages.ubuntu.com/xenial/linux-image-generic)
* [linux-image-4.4.0-28-generic](http://packages.ubuntu.com/xenial/linux-image-4.4.0-28-generic)
* [linux-image-extra-4.4.0-28-generic](http://packages.ubuntu.com/xenial/linux-image-extra-4.4.0-28-generic)


## concept

* Ubuntu Community Help Wiki / [MetaPackages](https://help.ubuntu.com/community/MetaPackages)
