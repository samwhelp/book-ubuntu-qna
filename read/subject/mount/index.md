---
layout: page
title: 硬碟掛載
description: >
  Ubuntu環境，硬碟掛載操作實務。
parent:
  title: 主題
  url: '/read/subject'
---

[原始連結](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=333574#forumpost333574)

## 相關討論

* [自動掛載設定範例](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=338250#forumpost338250)
* [開機時出現無法掛載partition的訊息](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=327644#forumpost327644)
* 回覆: 請問如何將多個帳號的資料備份在同一硬碟上？([1](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=327956#forumpost327956))([2](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=328062#forumpost328062))
* [回覆: 請教大家的 SSD 速度](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=326982#forumpost326982)
* [有必要將固態硬碟上的 /tmp 及 /var 及 SWAP 改到傳統硬碟上的分割區嗎?](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=335526#forumpost335526)
* [回覆: 重新安裝後, 無法讀取某個 partation](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=335068#forumpost335068)
* [安裝完ubuntu後,如何找回原來的D槽](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=335910#forumpost335910)
* [回覆: 關於設定Debian Jessie /etc/default/tmpfs遇到的狀況](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=340798#forumpost340798)
* [[請教] 如何掛載 Linux 檔案系統的外接式硬碟而不用考慮權限問題？](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=350724#forumpost350724)



## 「鳥哥的 Linux 私房菜」的參考文件

* 第八章、Linux 磁碟與檔案系統管理 / [磁碟掛載與卸載](http://linux.vbird.org/linux_basic/0230filesystem.php#mount)
* 第八章、Linux 磁碟與檔案系統管理 / [設定開機掛載](http://linux.vbird.org/linux_basic/0230filesystem.php#bootup)
* 第六章、Linux 的檔案權限與目錄配置 / [Linux目錄配置](http://linux.vbird.org/linux_basic/0210filepermission.php#dir)

## 「Ubuntu 」官方參考文件

* Ubuntu Community Help Wiki /  [Mount](https://help.ubuntu.com/community/Mount)
* Ubuntu Community Help Wiki /  [Introduction to fstab](https://help.ubuntu.com/community/Fstab)
* Ubuntu Community Help Wiki /  [Automatically Mount Partitions](https://help.ubuntu.com/community/AutomaticallyMountPartitions)
* Ubuntu Community Help Wiki /  [Mounting Windows Partitions](https://help.ubuntu.com/community/MountingWindowsPartitions)
* Ubuntu Community Help Wiki /  [Mount USB](https://help.ubuntu.com/community/Mount/USB)

## Debian Wiki

* Debian Wiki / [fstab](https://wiki.debian.org/fstab)
* Debian Wiki / [Part-UUID](https://wiki.debian.org/Part-UUID)

## 「Manual」

* $ man [fstab](http://manpages.ubuntu.com/manpages/trusty/en/man5/fstab.5.html)
* $ man 8 [mount](http://manpages.ubuntu.com/manpages/trusty/en/man8/mount.8.html)
* $ man 8 [umount](http://manpages.ubuntu.com/manpages/trusty/en/man8/umount.8.html)
* $ man [lsblk](http://manpages.ubuntu.com/manpages/trusty/en/man8/lsblk.8.html)
* $ man [blkid](http://manpages.ubuntu.com/manpages/trusty/en/man8/blkid.8.html)
* $ man [fdisk](http://manpages.ubuntu.com/manpages/trusty/en/man8/fdisk.8.html)
* $ man [df](http://manpages.ubuntu.com/manpages/trusty/en/man1/df.1.html)

## Ubuntu TW Wiki

* [UbuntuInstallNEW](http://wiki.ubuntu-tw.org/index.php?title=UbuntuInstallNEW#.E7.A3.81.E7.A2.9F.E5.88.86.E5.89.B2)

## FlossDoc

* [配置檔案系統掛載](http://wiki.debian.org.hk/w/Configure_filesystem_mounting)
* [使用 UUID 管理檔案系統](http://wiki.debian.org.hk/w/Manage_filesystem_with_UUID)
* [使用檔案系統標簽 (filesystem label) 管理檔案系統](http://wiki.debian.org.hk/w/Manage_filesystem_with_filesystem_label)
* [改變檔案系統標簽 (Filesystem label)](http://wiki.debian.org.hk/w/Change_filesystem_label)

## 範例指令

執行

``` sh
$ lsblk
```

執行

``` sh
$ mount
```

執行

``` sh
$ sudo  blkid
```

執行

``` sh
$ sudo fdisk -l
```

執行

``` sh
$ df -h
```
