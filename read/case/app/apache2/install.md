---
layout: page
title: 如何安裝 Apache2
description: >
  Ubuntu環境，如何安裝 Apache2。
date: 2016-10-03 14:02:19 +0800
parent:
  title: 安裝 Apache2
  url: /read/case/app/apache2
---


## 原始討論

原始討論「[回覆: ubuntu16.04 伺服器 安裝問題](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=355042#forumpost355042)」。


## 回覆內容

不論是「Ubuntu Desktop版」或是「Ubuntu Server版」，

您只要執行下面的指令，就會安裝「[apache2](http://packages.ubuntu.com/xenial/apache2)」。

``` sh
$ sudo apt-get install apache2
```

您可以參考「Ubuntu Server Guide / Web Servers / HTTPD - Apache2 Web Server / [Installation](https://help.ubuntu.com/lts/serverguide/httpd.html#http-installation)」這裡的說明。

然後最近有「[一篇討論](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=354918#forumpost354918)」，您也可以參考。

「Apache操作實務」我之前紀錄在這個「[索引](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=333560#forumpost333560)」，裡面有一些討論案例和參考連結。

「套件操作實務」則是紀錄在這個「[索引](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=333562#forumpost333562)」。


## ubuntu-software, gnome-software, software-center

在「Ubuntu Desktop版」，「16.04」預設使用「Ubuntu 軟體([ubuntu-software](http://packages.ubuntu.com/xenial/ubuntu-software))([gnome-software](http://packages.ubuntu.com/xenial/gnome-software))」，

取代之前的「Ubuntu 軟體中心([software-center](http://packages.ubuntu.com/xenial/software-center))」。

有關這個可以參考「Ubuntu Wiki / Xenial Xerus Release Notes / 4. Ubuntu Desktop / [1. General](https://wiki.ubuntu.com/XenialXerus/ReleaseNotes#General)」。

```
GNOME Software replaces Ubuntu Software Center.
...略...
```

相關的討論可以參考「[這篇](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=351820#forumpost351820)」和「[這篇](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=354532#forumpost354532)」。

然後我剛剛測試「Ubuntu 軟體(ubuntu-software)」，查詢「apache2」，查不到相關的套件。

## synaptic

若是要使用「GUI工具」，有另外一個工具「[synaptic](http://manpages.ubuntu.com/manpages/xenial/en/man8/synaptic.8.html)」，套件名稱也是「[synaptic](http://packages.ubuntu.com/xenial/synaptic)」，可以嘗試使用，看是否合用。

在「Ubuntu 軟體(ubuntu-software)」，使用「synaptic」查詢，可以查詢的到。

或是在「Terminal」執行下面指令安裝「[synaptic](http://packages.ubuntu.com/xenial/synaptic)」這個套件。

``` sh
$ sudo apt-get install synaptic
```

若是使用「synaptic」，

您使用「apache」或是「apache2」來查詢，

是可以查詢到「[apache2](http://packages.ubuntu.com/xenial/apache2)」這個套件的，

所以您可以透過「synaptic」來安裝「apache2」。


更多「synaptic」的用法，請參考

* 「Ubuntu Community Help Wiki / [SynapticHowto](https://help.ubuntu.com/community/SynapticHowto)」
* 「Debian Wiki / [Synaptic](https://wiki.debian.org/Synaptic)」
* 「Debian Wiki / [HowToSynaptic](https://wiki.debian.org/HowToSynaptic)」
* 「Ubuntu TW Wiki / [Synaptic](https://wiki.ubuntu-tw.org/index.php?title=Synaptic)」。

## software-center

當然也可以把「Ubuntu 軟體中心([software-center](http://packages.ubuntu.com/xenial/software-center))」安裝回來。

``` sh
$ sudo apt-get install software-center
```

這部份操作就請自行嘗試了。

## aptitude

另外在「Terminal」下，也有一個工具「[aptitude](http://packages.ubuntu.com/xenial/aptitude)」。

系統預設沒安裝這個套件，所以執行下面指令安裝。

``` sh
$ sudo apt-get install aptitude
```

### 第一種模式 (互動模式)

執行下面指令，啟動「aptitude」

``` sh
$ sudo aptitude
```

然後移動「光棒」到「Not Installed Packages」，
然後輸入「/」，就會出現「Search for」對話框，就可以輸入「apache」查詢。

更多用法請參考

* 「Ubuntu Server Guide / Package Management / [Aptitude](https://help.ubuntu.com/lts/serverguide/aptitude.html)」
* 「Debian Wiki / [Aptitude](https://wiki.debian.org/Aptitude)」
* 「Ubuntu TW Wiki / [Aptitude](https://wiki.ubuntu-tw.org/index.php?title=Aptitude)」。

### 第二種模式 (指令模式)

執行下面指令，查詢套件

``` sh
$ aptitude search apache2
```

執行下面指令，觀看套件資訊

``` sh
$ aptitude show apache2
```

執行下面指令，安裝套件

``` sh
$ sudo aptitude install apache2
```

不過「aptitude」我比較少使用，所以也許有其他的用法，再請其他慣用「aptitude」的大德來補充，感恩先。

## dpkg, apt-get, apt-cache, apt

而我個人則是慣用「[dpkg](http://manpages.ubuntu.com/manpages/xenial/en/man1/dpkg.1.html)」「[apt-get](http://manpages.ubuntu.com/manpages/xenial/en/man8/apt-get.8.html)」「[apt-cache](http://manpages.ubuntu.com/manpages/xenial/en/man8/apt-cache.8.html)」「[apt](http://manpages.ubuntu.com/manpages/xenial/en/man8/apt.8.html)」這幾個指令。

執行下面指令，更新套件庫的套件資訊。

``` sh
$ sudo apt-get update
```

執行下面指令，查詢套件。

``` sh
$ apt-cache search apache2
```

會顯示

```
apache2 - Apache HTTP Server
apache2-bin - Apache HTTP Server (modules and other binary files)
apache2-data - Apache HTTP Server (common files)
apache2-dbg - Apache debugging symbols
apache2-dev - Apache HTTP Server (development headers)
apache2-doc - Apache HTTP Server (on-site documentation)
apache2-utils - Apache HTTP Server (utility programs for web servers)
...略...
```

因為上面顯示的列表很長，所以您可以搭配「less」或「more」，我傾向用「less」，因為可以向上捲動。

搭配「[less](http://manpages.ubuntu.com/manpages/xenial/en/man1/less.1.html)」。

``` sh
$ apt-cache search apache2 | less
```

搭配「[more](http://manpages.ubuntu.com/manpages/xenial/en/man1/more.1.html)」

``` sh
$ apt-cache search apache2 | more
```

執行下面指令，觀看「[apache2](http://packages.ubuntu.com/xenial/apache2)」套件資訊

``` sh
$ apt-cache show apache2
```

顯示

```
Package: apache2
Priority: optional
Section: web
Installed-Size: 488
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Original-Maintainer: Debian Apache Maintainers <debian-apache@lists.debian.org>
Architecture: amd64
Version: 2.4.18-2ubuntu3.1
Replaces: apache2.2-bin, apache2.2-common
Provides: httpd, httpd-cgi
Depends: lsb-base, procps, perl, mime-support, apache2-bin (= 2.4.18-2ubuntu3.1), apache2-utils (>= 2.4), apache2-data (= 2.4.18-2ubuntu3.1)
Pre-Depends: dpkg (>= 1.17.14)
Recommends: ssl-cert
Suggests: www-browser, apache2-doc, apache2-suexec-pristine | apache2-suexec-custom, ufw
Conflicts: apache2.2-bin, apache2.2-common
Filename: pool/main/a/apache2/apache2_2.4.18-2ubuntu3.1_amd64.deb
Size: 86740
MD5sum: 830a0444cda5e6e80952a8a27c024151
SHA1: 79a9209aa847ab4f98d63245522b7f65bbb4202d
SHA256: 18e4c69ab217f29635f16e8e0b46aa1d524a62c9db76700cb5a5fdabc82aa0ec
Description-en: Apache HTTP Server
 The Apache HTTP Server Project's goal is to build a secure, efficient and
 extensible HTTP server as standards-compliant open source software. The
 result has long been the number one web server on the Internet.
 .
 Installing this package results in a full installation, including the
 configuration files, init scripts and support scripts.
Description-md5: d02426bc360345e5acd45367716dc35c
Homepage: http://httpd.apache.org/
Bugs: https://bugs.launchpad.net/ubuntu/+filebug
Origin: Ubuntu
Supported: 5y
Task: lamp-server, mythbuntu-frontend, mythbuntu-desktop, mythbuntu-backend-slave, mythbuntu-backend-master, mythbuntu-backend-master
```


執行下面指令，安裝「[apache2](http://packages.ubuntu.com/xenial/apache2)」這個套件

``` sh
$ sudo apt-get install apache2
```

若有安裝「[apache2](http://packages.ubuntu.com/xenial/apache2)」這個套件。

執行下面的指令

``` sh
$ dpkg -l apache2
```

會顯示

```
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name                          Version             Architecture        Description
+++-=============================-===================-===================-===================
ii  apache2                       2.4.18-2ubuntu3.1   amd64               Apache HTTP Server
```

了解套件是否已經安裝的方法，可以參考「[這篇](http://samwhelp.github.io/book-ubuntu-basic-skill/book/content/package/how-to-figure-out-package-installed.html)」，裡面有提供其他的方式。

執行下面的指令，則是可以知道「[apache2](http://packages.ubuntu.com/xenial/apache2)」這個套件，安裝哪些檔案在系統上。

``` sh
$ dpkg -L apache2
```

顯示

```
/.
/etc
/etc/logrotate.d
/etc/logrotate.d/apache2
/etc/apache2
/etc/apache2/sites-enabled
/etc/apache2/apache2.conf
/etc/apache2/mods-enabled
/etc/apache2/mods-available
...略...
```

查詢套件安裝在系統上的所有檔案，可以參考「[這篇](http://samwhelp.github.io/book-ubuntu-basic-skill/book/content/package/how-to-find-out-list-of-files-installed-by-a-package.html)」，裡面有提供其他的方式。
