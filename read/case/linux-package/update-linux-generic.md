---
layout: page
title: update linux-generic
description: >
  update linux-generic。
parent:
  title: Linux Package
  url: /read/case/linux-package
---


## 相關討論

* [回覆: 文字界面開機](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=352994#forumpost352994)


## 測試環境

* Xubuntu 16.04 64位元 英文界面(新安裝在VirtualBox)


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
ii  linux-generic                 4.4.0.21.22         amd64               Complete Generic Linux kernel and headers
un  linux-headers                 <none>              <none>              (no description available)
un  linux-headers-3.0             <none>              <none>              (no description available)
ii  linux-headers-4.4.0-21        4.4.0-21.37         all                 Header files related to Linux kernel version 4.4.0
ii  linux-headers-4.4.0-21-generi 4.4.0-21.37         amd64               Linux kernel headers for version 4.4.0 on 64 bit x86 SMP
ii  linux-headers-generic         4.4.0.21.22         amd64               Generic Linux kernel headers
un  linux-image                   <none>              <none>              (no description available)
ii  linux-image-4.4.0-21-generic  4.4.0-21.37         amd64               Linux kernel image for version 4.4.0 on 64 bit x86 SMP
ii  linux-image-extra-4.4.0-21-ge 4.4.0-21.37         amd64               Linux kernel extra modules for version 4.4.0 on 64 bit x86 SMP
ii  linux-image-generic           4.4.0.21.22         amd64               Generic Linux kernel image
un  linux-initramfs-tool          <none>              <none>              (no description available)
un  linux-kernel-headers          <none>              <none>              (no description available)
un  linux-kernel-log-daemon       <none>              <none>              (no description available)
ii  linux-libc-dev:amd64          4.4.0-21.37         amd64               Linux Kernel Headers for development
un  linux-restricted-common       <none>              <none>              (no description available)
ii  linux-sound-base              1.0.25+dfsg-0ubuntu all                 base package for ALSA and OSS sound systems
un  linux-source-4.4.0            <none>              <none>              (no description available)
un  linux-tools                   <none>              <none>              (no description available)
```


## 觀察可更新套件

執行

``` sh
$ apt-cache policy linux-generic
```

顯示

```
linux-generic:
  Installed: 4.4.0.21.22
  Candidate: 4.4.0.21.22
  Version table:
 *** 4.4.0.21.22 500
        500 http://tw.archive.ubuntu.com/ubuntu xenial/main amd64 Packages
        100 /var/lib/dpkg/status

```


## 更新套件庫資訊

執行

``` sh
$ sudo apt-get update
```

顯示

```
[sudo] password for user:
Hit:1 http://tw.archive.ubuntu.com/ubuntu xenial InRelease
Get:2 http://tw.archive.ubuntu.com/ubuntu xenial-updates InRelease [94.5 kB]
Get:3 http://security.ubuntu.com/ubuntu xenial-security InRelease [94.5 kB]                                     
Get:4 http://tw.archive.ubuntu.com/ubuntu xenial-backports InRelease [92.2 kB]      
Get:5 http://tw.archive.ubuntu.com/ubuntu xenial-updates/main amd64 Packages [224 kB]           
Get:6 http://tw.archive.ubuntu.com/ubuntu xenial-updates/main i386 Packages [220 kB]
Get:7 http://tw.archive.ubuntu.com/ubuntu xenial-updates/main Translation-en [86.3 kB]
Get:8 http://tw.archive.ubuntu.com/ubuntu xenial-updates/main amd64 DEP-11 Metadata [187 kB]
Get:9 http://tw.archive.ubuntu.com/ubuntu xenial-updates/main DEP-11 64x64 Icons [146 kB]
Get:10 http://tw.archive.ubuntu.com/ubuntu xenial-updates/restricted amd64 DEP-11 Metadata [157 B]
Get:11 http://tw.archive.ubuntu.com/ubuntu xenial-updates/universe amd64 Packages [101 kB]
Get:12 http://tw.archive.ubuntu.com/ubuntu xenial-updates/universe i386 Packages [97.7 kB]
Get:13 http://tw.archive.ubuntu.com/ubuntu xenial-updates/universe Translation-en [48.7 kB]
Get:14 http://tw.archive.ubuntu.com/ubuntu xenial-updates/universe amd64 DEP-11 Metadata [21.6 kB]
Get:15 http://tw.archive.ubuntu.com/ubuntu xenial-updates/universe DEP-11 64x64 Icons [49.8 kB]
Get:16 http://tw.archive.ubuntu.com/ubuntu xenial-updates/multiverse amd64 Packages [1176 B]
Get:17 http://tw.archive.ubuntu.com/ubuntu xenial-updates/multiverse i386 Packages [1344 B]
Get:18 http://tw.archive.ubuntu.com/ubuntu xenial-updates/multiverse Translation-en [628 B]
Get:19 http://tw.archive.ubuntu.com/ubuntu xenial-updates/multiverse amd64 DEP-11 Metadata [158 B]
Get:20 http://tw.archive.ubuntu.com/ubuntu xenial-backports/main amd64 Packages [676 B]
Get:21 http://tw.archive.ubuntu.com/ubuntu xenial-backports/main i386 Packages [676 B]
Get:22 http://tw.archive.ubuntu.com/ubuntu xenial-backports/main Translation-en [528 B]
Get:23 http://tw.archive.ubuntu.com/ubuntu xenial-backports/main amd64 DEP-11 Metadata [197 B]
Get:24 http://tw.archive.ubuntu.com/ubuntu xenial-backports/restricted amd64 DEP-11 Metadata [194 B]
Get:25 http://tw.archive.ubuntu.com/ubuntu xenial-backports/universe amd64 DEP-11 Metadata [194 B]                                            
Get:26 http://tw.archive.ubuntu.com/ubuntu xenial-backports/multiverse amd64 DEP-11 Metadata [194 B]                                          
Get:27 http://security.ubuntu.com/ubuntu xenial-security/main amd64 Packages [89.7 kB]                                                        
Get:28 http://security.ubuntu.com/ubuntu xenial-security/main i386 Packages [86.5 kB]                                                         
Get:29 http://security.ubuntu.com/ubuntu xenial-security/main Translation-en [36.2 kB]                                                        
Get:30 http://security.ubuntu.com/ubuntu xenial-security/main amd64 DEP-11 Metadata [5690 B]                                                  
Get:31 http://security.ubuntu.com/ubuntu xenial-security/main DEP-11 64x64 Icons [27.2 kB]                                                    
Get:32 http://security.ubuntu.com/ubuntu xenial-security/restricted amd64 DEP-11 Metadata [158 B]                                             
Get:33 http://security.ubuntu.com/ubuntu xenial-security/universe amd64 Packages [24.9 kB]                                                    
Get:34 http://security.ubuntu.com/ubuntu xenial-security/universe i386 Packages [24.9 kB]                                                     
Get:35 http://security.ubuntu.com/ubuntu xenial-security/universe Translation-en [15.8 kB]                                                    
Get:36 http://security.ubuntu.com/ubuntu xenial-security/universe amd64 DEP-11 Metadata [2329 B]                                              
Get:37 http://security.ubuntu.com/ubuntu xenial-security/universe DEP-11 64x64 Icons [4102 B]                                                 
Get:38 http://security.ubuntu.com/ubuntu xenial-security/multiverse amd64 Packages [1176 B]                                                   
Get:39 http://security.ubuntu.com/ubuntu xenial-security/multiverse i386 Packages [1344 B]                                                    
Get:40 http://security.ubuntu.com/ubuntu xenial-security/multiverse Translation-en [628 B]                                                    
Get:41 http://security.ubuntu.com/ubuntu xenial-security/multiverse amd64 DEP-11 Metadata [200 B]                                             
Fetched 1789 kB in 13s (130 kB/s)                                                                                                             
Reading package lists... Done
```


## 再度觀察可更新套件

執行

```
$ apt-cache policy linux-generic
```

顯示

```
linux-generic:
  Installed: 4.4.0.21.22
  Candidate: 4.4.0.28.30
  Version table:
     4.4.0.28.30 500
        500 http://tw.archive.ubuntu.com/ubuntu xenial-updates/main amd64 Packages
        500 http://security.ubuntu.com/ubuntu xenial-security/main amd64 Packages
 *** 4.4.0.21.22 500
        500 http://tw.archive.ubuntu.com/ubuntu xenial/main amd64 Packages
        100 /var/lib/dpkg/status
```


## 更新套件

執行

``` sh
$ sudo apt-get install linux-generic
```

顯示

```
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following additional packages will be installed:
  linux-headers-4.4.0-28 linux-headers-4.4.0-28-generic linux-headers-generic linux-image-4.4.0-28-generic linux-image-extra-4.4.0-28-generic
  linux-image-generic
Suggested packages:
  fdutils linux-doc-4.4.0 | linux-source-4.4.0 linux-tools
The following NEW packages will be installed:
  linux-headers-4.4.0-28 linux-headers-4.4.0-28-generic linux-image-4.4.0-28-generic linux-image-extra-4.4.0-28-generic
The following packages will be upgraded:
  linux-generic linux-headers-generic linux-image-generic
3 upgraded, 4 newly installed, 0 to remove and 203 not upgraded.
Need to get 68.3 MB of archives.
After this operation, 295 MB of additional disk space will be used.
Do you want to continue? [Y/n]
Get:1 http://tw.archive.ubuntu.com/ubuntu xenial-updates/main amd64 linux-image-4.4.0-28-generic amd64 4.4.0-28.47 [18.7 MB]
Get:2 http://tw.archive.ubuntu.com/ubuntu xenial-updates/main amd64 linux-image-extra-4.4.0-28-generic amd64 4.4.0-28.47 [38.8 MB]            
Get:3 http://tw.archive.ubuntu.com/ubuntu xenial-updates/main amd64 linux-generic amd64 4.4.0.28.30 [1790 B]                                  
Get:4 http://tw.archive.ubuntu.com/ubuntu xenial-updates/main amd64 linux-image-generic amd64 4.4.0.28.30 [2332 B]                            
Get:5 http://tw.archive.ubuntu.com/ubuntu xenial-updates/main amd64 linux-headers-4.4.0-28 all 4.4.0-28.47 [9944 kB]                          
Get:6 http://tw.archive.ubuntu.com/ubuntu xenial-updates/main amd64 linux-headers-4.4.0-28-generic amd64 4.4.0-28.47 [790 kB]                 
Get:7 http://tw.archive.ubuntu.com/ubuntu xenial-updates/main amd64 linux-headers-generic amd64 4.4.0.28.30 [2306 B]                          
Fetched 68.3 MB in 29min 13s (39.0 kB/s)                                                                                                      
Selecting previously unselected package linux-image-4.4.0-28-generic.
(Reading database ... 154656 files and directories currently installed.)
Preparing to unpack .../linux-image-4.4.0-28-generic_4.4.0-28.47_amd64.deb ...
Done.
Unpacking linux-image-4.4.0-28-generic (4.4.0-28.47) ...
Selecting previously unselected package linux-image-extra-4.4.0-28-generic.
Preparing to unpack .../linux-image-extra-4.4.0-28-generic_4.4.0-28.47_amd64.deb ...
Unpacking linux-image-extra-4.4.0-28-generic (4.4.0-28.47) ...
Preparing to unpack .../linux-generic_4.4.0.28.30_amd64.deb ...
Unpacking linux-generic (4.4.0.28.30) over (4.4.0.21.22) ...
Preparing to unpack .../linux-image-generic_4.4.0.28.30_amd64.deb ...
Unpacking linux-image-generic (4.4.0.28.30) over (4.4.0.21.22) ...
Selecting previously unselected package linux-headers-4.4.0-28.
Preparing to unpack .../linux-headers-4.4.0-28_4.4.0-28.47_all.deb ...
Unpacking linux-headers-4.4.0-28 (4.4.0-28.47) ...
Selecting previously unselected package linux-headers-4.4.0-28-generic.
Preparing to unpack .../linux-headers-4.4.0-28-generic_4.4.0-28.47_amd64.deb ...
Unpacking linux-headers-4.4.0-28-generic (4.4.0-28.47) ...
Preparing to unpack .../linux-headers-generic_4.4.0.28.30_amd64.deb ...
Unpacking linux-headers-generic (4.4.0.28.30) over (4.4.0.21.22) ...
Setting up linux-image-4.4.0-28-generic (4.4.0-28.47) ...
Running depmod.
update-initramfs: deferring update (hook will be called later)
Examining /etc/kernel/postinst.d.
run-parts: executing /etc/kernel/postinst.d/apt-auto-removal 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/initramfs-tools 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
update-initramfs: Generating /boot/initrd.img-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/pm-utils 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/unattended-upgrades 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/update-notifier 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/zz-update-grub 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
Generating grub configuration file ...
Warning: Setting GRUB_TIMEOUT to a non-zero value when GRUB_HIDDEN_TIMEOUT is set is no longer supported.
Found linux image: /boot/vmlinuz-4.4.0-28-generic
Found initrd image: /boot/initrd.img-4.4.0-28-generic
Found linux image: /boot/vmlinuz-4.4.0-21-generic
Found initrd image: /boot/initrd.img-4.4.0-21-generic
Found memtest86+ image: /boot/memtest86+.elf
Found memtest86+ image: /boot/memtest86+.bin
done
Setting up linux-image-extra-4.4.0-28-generic (4.4.0-28.47) ...
run-parts: executing /etc/kernel/postinst.d/apt-auto-removal 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/initramfs-tools 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
update-initramfs: Generating /boot/initrd.img-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/pm-utils 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/unattended-upgrades 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/update-notifier 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/zz-update-grub 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
Generating grub configuration file ...
Warning: Setting GRUB_TIMEOUT to a non-zero value when GRUB_HIDDEN_TIMEOUT is set is no longer supported.
Found linux image: /boot/vmlinuz-4.4.0-28-generic
Found initrd image: /boot/initrd.img-4.4.0-28-generic
Found linux image: /boot/vmlinuz-4.4.0-21-generic
Found initrd image: /boot/initrd.img-4.4.0-21-generic
Found memtest86+ image: /boot/memtest86+.elf
Found memtest86+ image: /boot/memtest86+.bin
done
Setting up linux-image-generic (4.4.0.28.30) ...
Setting up linux-headers-4.4.0-28 (4.4.0-28.47) ...
Setting up linux-headers-4.4.0-28-generic (4.4.0-28.47) ...
Setting up linux-headers-generic (4.4.0.28.30) ...
Setting up linux-generic (4.4.0.28.30) ...
```


## 觀察可更新套件

執行

``` sh
$ apt-cache policy linux-generic
```

顯示

```
linux-generic:
  Installed: 4.4.0.28.30
  Candidate: 4.4.0.28.30
  Version table:
 *** 4.4.0.28.30 500
        500 http://tw.archive.ubuntu.com/ubuntu xenial-updates/main amd64 Packages
        500 http://security.ubuntu.com/ubuntu xenial-security/main amd64 Packages
        100 /var/lib/dpkg/status
     4.4.0.21.22 500
        500 http://tw.archive.ubuntu.com/ubuntu xenial/main amd64 Packages
```


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


## manpage

* man 1 [dpkg](http://manpages.ubuntu.com/manpages/xenial/en/man1/dpkg.1.html)
* man 8 [apt-cache](http://manpages.ubuntu.com/manpages/xenial/en/man8/apt-cache.8.html)
* man 8 [apt-get](http://manpages.ubuntu.com/manpages/xenial/en/man8/apt-get.8.html)


## package

* [linux-generic](http://packages.ubuntu.com/xenial/linux-generic)
* [linux-image-generic](http://packages.ubuntu.com/xenial/linux-image-generic)
* [linux-image-4.4.0-28-generic](http://packages.ubuntu.com/xenial/linux-image-4.4.0-28-generic)
* [linux-image-4.4.0-28-generic](http://packages.ubuntu.com/xenial/linux-image-4.4.0-28-generic)
* [linux-image-extra-4.4.0-28-generic](http://packages.ubuntu.com/xenial/linux-image-extra-4.4.0-28-generic)


## 後續

接著來看「[hook update-grub](/book-ubuntu-qna/read/case/linux-package/hook-update-grub.html)」。
