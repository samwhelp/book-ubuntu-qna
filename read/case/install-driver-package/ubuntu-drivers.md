---
layout: page
title: 如何使用「ubuntu-drivers」這個指令，來輔助安裝驅動程式套件
description: >
  如何使用「ubuntu-drivers」這個指令，來輔助安裝驅動程式套件。
parent:
  title: 透過安裝驅動程式套件的方式，來安裝驅動程式。
  url: /read/case/install-driver-package
---


## 原始討論

原始討論「[回覆: linux mint 安裝顯示卡問題](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=353072#forumpost353072)」。


## 回覆內容

### 前提

這個方法，是透過「CLI(指令)」的方式，來安裝「額外的驅動程式」。

之前有些了一篇「[Ubuntu環境下，如何使用下指令的方式查詢「額外驅動程式」](http://samwhelp.github.io/book-ubuntu-basic-skill/book/content/driver/ubuntu-drivers.html)」，

這篇根據此次的討論，再重新寫一遍操作步驟。


「ubuntu-drivers」這個指令，

我是在「Ubuntu Community Help Wiki / BinaryDriverHowto/Nvidia / [Installation without X / from the console](https://help.ubuntu.com/community/BinaryDriverHowto/Nvidia#Installation_without_X_.2BAC8_from_the_console)」看到的。


### 閱讀 help

執行

``` sh
$ ubuntu-drivers
```

顯示

```
usage: ubuntu-drivers [-h] [--package-list PATH] <command>
ubuntu-drivers: error: the following arguments are required: <command>
```

執行

```
$ ubuntu-drivers -h
```

顯示

```
usage: ubuntu-drivers [-h] [--package-list PATH] <command>

List/install driver packages for Ubuntu.

positional arguments:
  <command>            See below

optional arguments:
  -h, --help           show this help message and exit
  --package-list PATH  Create file with list of installed packages (in
                       autoinstall mode)

Available commands:
   list: Show all driver packages which apply to the current system.
   devices: Show all devices which need drivers, and which packages apply to them.
   autoinstall: Install drivers that are appropriate for automatic installation.
   debug: Print all available information and debug data about drivers.

```


### 使用範例

執行

``` sh
$ sudo ubuntu-drivers devices
```

顯示

```
== /sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0 ==
modalias : pci:v000010DEd00000DF4sv00001043sd000015F2bc03sc00i00
vendor   : NVIDIA Corporation
model    : GF108M [GeForce GT 540M]
driver   : nvidia-304 - distro non-free
driver   : nvidia-340 - distro non-free
driver   : xserver-xorg-video-nouveau - distro free builtin
driver   : nvidia-304-updates - distro non-free
driver   : nvidia-361 - distro non-free recommended

== cpu-microcode.py ==
driver   : intel-microcode - distro non-free
```

這裡看到兩個偵測到的硬體

* /sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0
* cpu-microcode.py

然後分別有列出，可以安裝的驅動程式套件


### intel-microcode

第一個偵測到的「cpu-microcode.py」

下面有「driver   : intel-microcode - distro non-free」

也就是你可以安裝「[intel-microcode](http://packages.ubuntu.com/xenial/intel-microcode)」這個驅動程式套件。

你可以執行下來指令，來觀看「[intel-microcode](http://packages.ubuntu.com/xenial/intel-microcode)」這個套件的相關資訊。

``` sh
$ apt-cache show intel-microcode
```

顯示

```
Package: intel-microcode
Priority: extra
Section: restricted/admin
Installed-Size: 571
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Original-Maintainer: Henrique de Moraes Holschuh <hmh@debian.org>
Architecture: amd64
Version: 3.20151106.1
Depends: iucode-tool (>= 1.0)
Recommends: initramfs-tools (>= 0.113~)
Conflicts: microcode.ctl (<< 0.18~0)
Filename: pool/restricted/i/intel-microcode/intel-microcode_3.20151106.1_amd64.deb
Size: 464444
MD5sum: e8a45c9674b27a8c5adf303fe31d723d
SHA1: 5f931a9e1011b93e83f2807b0d32882d346333ac
SHA256: 752528a4373dfebe4ce537866cf99810fe8b8d7a6d92b01252713f5d7f9c671b
Description-en: Processor microcode firmware for Intel CPUs
 This package contains updated system processor microcode for
 Intel i686 and Intel X86-64 processors.  Intel releases microcode
 updates to correct processor behavior as documented in the
 respective processor specification updates.
 .
 For AMD processors, please refer to the amd64-microcode package.
Description-md5: 3edb9824276886579313f0e847f6bb14
Homepage: http://feeds.downloadcenter.intel.com/rss/?p=483&lang=eng
Bugs: https://bugs.launchpad.net/ubuntu/+filebug
Origin: Ubuntu
Supported: 5y

````

現在也可使用「[apt](http://manpages.ubuntu.com/manpages/xenial/en/man8/apt.8.html)」這個指令

``` sh
$ apt show intel-microcode
```

顯示

```
Package: intel-microcode
Version: 3.20151106.1
Priority: extra
Section: restricted/admin
Origin: Ubuntu
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Original-Maintainer: Henrique de Moraes Holschuh <hmh@debian.org>
Bugs: https://bugs.launchpad.net/ubuntu/+filebug
Installed-Size: 585 kB
Depends: iucode-tool (>= 1.0)
Recommends: initramfs-tools (>= 0.113~)
Conflicts: microcode.ctl (<< 0.18~0)
Homepage: http://feeds.downloadcenter.intel.com/rss/?p=483&lang=eng
Supported: 5y
Download-Size: 464 kB
APT-Manual-Installed: yes
APT-Sources: http://tw.archive.ubuntu.com/ubuntu xenial/restricted amd64 Packages
Description: Processor microcode firmware for Intel CPUs
 This package contains updated system processor microcode for
 Intel i686 and Intel X86-64 processors.  Intel releases microcode
 updates to correct processor behavior as documented in the
 respective processor specification updates.
 .
 For AMD processors, please refer to the amd64-microcode package.
```

執行下面指令，安裝「[intel-microcode](http://packages.ubuntu.com/xenial/intel-microcode)」這個套件

``` sh
$ sudo apt-get install intel-microcode
```

### Nvidia

另一個偵測到的硬體「/sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0」

有列多個可以安裝的套件供選擇，安裝其中一個就行了。

* driver   : [nvidia-304](http://packages.ubuntu.com/xenial/nvidia-304) - distro non-free
* driver   : [nvidia-340](http://packages.ubuntu.com/xenial/nvidia-340) - distro non-free
* driver   : [xserver-xorg-video-nouveau](http://packages.ubuntu.com/xenial/xserver-xorg-video-nouveau) - distro free builtin
* driver   : [nvidia-304-updates](http://packages.ubuntu.com/xenial/nvidia-304-updates) - distro non-free
* driver   : [nvidia-361](http://packages.ubuntu.com/xenial/nvidia-361) - distro non-free recommended


系統一開始裝好，應該預設就會安裝「[xserver-xorg-video-nouveau](http://packages.ubuntu.com/xenial/xserver-xorg-video-nouveau)」這個套件，上面的資訊有「distro free builtin」。

而我此時測試，先前也已經安裝了「[nvidia-361](http://packages.ubuntu.com/xenial/nvidia-361)」這個套件。

從上面給的資訊，目前看不到特別的資訊來區分，那些套件已經安裝，那些套件還沒安裝，

我們先假設還沒安裝「[nvidia-361](http://packages.ubuntu.com/xenial/nvidia-361)」這個套件，上面的資訊有一個「recommended」。

所以執行下面的指令安裝

``` sh
$ sudo apt-get install nvidia-361
```

若已經安裝，則會有相關的訊息顯示安裝了，若沒有，就會有確認訊息，詢問你是否確定要安裝。

至於套件是否已經安裝的議題，請參考「[如何知道某個套件是否已經安裝](http://samwhelp.github.io/book-ubuntu-basic-skill/book/content/package/how-to-figure-out-package-installed.html)」，就不再紀錄在這裡了。


執行

``` sh
$ sudo ubuntu-drivers list
```

顯示

```
intel-microcode
nvidia-361
nvidia-340
nvidia-304
nvidia-304-updates
```

也就是顯示可以安裝的額外驅動程式的套件列表，
可以對照上面「`sudo ubuntu-drivers devices`」得出來的結果。

* [intel-microcode](http://packages.ubuntu.com/xenial/intel-microcode)
* [nvidia-361](http://packages.ubuntu.com/xenial/nvidia-361)
* [nvidia-340](http://packages.ubuntu.com/xenial/nvidia-340)
* [nvidia-304](http://packages.ubuntu.com/xenial/nvidia-304)
* [nvidia-304-updates](http://packages.ubuntu.com/xenial/nvidia-304-updates)


另外提供一個指令，可以執行找出「Nvidia驅動程式套件」。

``` sh
$ apt-cache search 'nvidia-[0-9]'
```

顯示

```
nvidia-304 - NVIDIA legacy binary driver - version 304.131
nvidia-304-dev - NVIDIA binary Xorg driver development files
nvidia-304-updates - NVIDIA legacy binary driver - version 304.131
nvidia-304-updates-dev - NVIDIA binary Xorg driver development files
nvidia-331 - Transitional package for nvidia-331
nvidia-331-dev - Transitional package for nvidia-340-dev
nvidia-331-updates - Transitional package for nvidia-340
nvidia-331-updates-dev - Transitional package for nvidia-340-dev
nvidia-331-updates-uvm - Transitional package for nvidia-340
nvidia-331-uvm - Transitional package for nvidia-340
nvidia-340 - NVIDIA binary driver - version 340.96
nvidia-340-dev - NVIDIA binary Xorg driver development files
nvidia-340-updates - Transitional package for nvidia-340
nvidia-340-updates-dev - Transitional package for nvidia-340-dev
nvidia-340-updates-uvm - Transitional package for nvidia-340-updates
nvidia-340-uvm - Transitional package for nvidia-340
nvidia-346 - Transitional package for nvidia-346
nvidia-346-dev - Transitional package for nvidia-352-dev
nvidia-346-updates - Transitional package for nvidia-346-updates
nvidia-346-updates-dev - Transitional package for nvidia-352-updates-dev
nvidia-352 - Transitional package for nvidia-361
nvidia-352-dev - Transitional package for nvidia-361-dev
nvidia-352-updates - Transitional package for nvidia-361
nvidia-352-updates-dev - Transitional package for nvidia-361-dev
nvidia-361 - NVIDIA binary driver - version 361.42
nvidia-361-dev - NVIDIA binary Xorg driver development files
nvidia-361-updates - Transitional package for nvidia-361
nvidia-361-updates-dev - Transitional package for nvidia-361-dev
```
