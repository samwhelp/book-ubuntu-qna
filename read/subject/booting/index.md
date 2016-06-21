---
layout: page
title: 開機流程
description: >
  Ubuntu環境，開機流程。
parent:
  title: 主題
  url: /read/subject
---

[原始連結](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=333548#forumpost333548)



# [文章] 如何搶救 Linux 上不能開機的 GRUB 2

剛逛到「OpenFoundry / [如何搶救 Linux 上不能開機的 GRUB 2](https://www.openfoundry.org/tw/foss-programs/9267-linux-grub2-fixing)」這篇參考文章，

是翻譯「[How to Rescue a Non-booting GRUB 2 on Linux ](http://www.linux.com/learn/tutorials/776643-how-to-rescue-a-non-booting-grub-2-on-linux/)」這篇的，順手一貼。

另外也可以使用「[如何搶救 Linux 上不能開機的 GRUB 2](https://www.google.com.tw/#q=%E5%A6%82%E4%BD%95%E6%90%B6%E6%95%91+Linux+%E4%B8%8A%E4%B8%8D%E8%83%BD%E9%96%8B%E6%A9%9F%E7%9A%84+GRUB+2)」，也可以查到一些相關的文章。

例如: 「[這篇](http://anemospring.blogspot.tw/2013/11/grub.html]這篇]」 或「[url=http://jdev.tw/blog/3776/grub-menu-rescue)」，還有「[這篇](http://ahhafree.blogspot.tw/2011/11/ubuntu-grub-rescue.html)」。

:-)

剛發現，我在「[這篇](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=328000#forumpost328000)」有貼過了 :-p


## 相關的討論

* [文字界面開機](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=352888#forumpost352888)
* [安裝ubuntu時偵測不到win7 @@](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=341570#forumpost341570)
* [從 MBR boot code (440 bytes) 探索 Ubuntu 無法開機的問題](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=340038#forumpost340038)
* [回覆: root使用者密碼](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=310770#forumpost310770)
* [回覆: Ubuntu 14.04LTS 開機選單的問題？](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=333322#forumpost333322)
* [回覆: 沒辦法進入另一個作業系統.........](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=333444#forumpost333444)
* [回覆: 如何重裝 Ubuntu ?](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=331380#forumpost331380)
* [grub2 重新安裝心得](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=327766#forumpost327766)
* [回覆: 關於手動安裝 grub2 問題](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=326812#forumpost326812)
* [GRUB2 引導 HD/USB 安裝 ubuntu](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=328374#forumpost328374)
* [回覆: Windows7 為主、Ubuntu為副 共存如何安裝?](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=319080#forumpost319080)
* [求救！原Win7安裝Ubuntu後不能選擇Win7](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?topic_id=95506&forum=22&post_id=334220#forumpost334220)
* [Ubuntu安裝完，開機選項卻沒有出現Ubuntu可選，只能進win7](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=339486#forumpost339486)

* [回覆: debian apt-get dist-upgrade後無法進入系統](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=326160#forumpost326160)
* [回覆: 開機時出現無法掛載partition的訊息](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=327644#forumpost327644)
* [ 請問關於GPT分割問題](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=326718#forumpost326718)
* [安裝完ubuntu後,如何找回原來的D槽](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=335890#forumpost335890)
* [回覆: 電腦安裝了ubuntu 32bit 14.4 LTS 中文版，但開不回原來的window](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=336908#forumpost336908)
* [回覆: 以不同硬碟安裝好win7與Ubuntu後，要怎麼新增啟動項目](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=338142#forumpost338142)
* [回覆: GUI關機時，要如何出現關機過程的System Log](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=338330#forumpost338330)
* [回覆: 請教ubuntu 10.04 server 與 桌面板 顯示或開機黑屛問題](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=338806#forumpost338806)

* [更改GRUB「預設開機選項」](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=340492#forumpost340492)
* [設定GRUB「預設開機選項」為上一次開機的系統](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=340498#forumpost340498)
* [回覆: 請問如何同時安裝 Fedora & Ubuntu 雙系統 在同一個硬碟上,](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=352704#forumpost352704)


## 「Wikipedia」

* [GNU_GRUB (中文)](http://zh.wikipedia.org/zh-tw/GNU_GRUB)
* [GNU_GRUB](http://en.wikipedia.org/wiki/GNU_GRUB)
* [Linux startup process](http://en.wikipedia.org/wiki/Linux_startup_process)

## 「Ubuntu 」官方參考文件

* Ubuntu Community Help Wiki / [Grub2 Setup](https://help.ubuntu.com/community/Grub2/Setup)
* Ubuntu Community Help Wiki / [Grub2](https://help.ubuntu.com/community/Grub2)
* Ubuntu Community Help Wiki / [ Grub2 Installing](https://help.ubuntu.com/community/Grub2/Installing)
* Ubuntu Community Help Wiki / [Grub2 Submenus](https://help.ubuntu.com/community/Grub2/Submenus)
* Ubuntu Community Help Wiki / [Grub2 Upgrading](https://help.ubuntu.com/community/Grub2/Upgrading)
* Ubuntu Community Help Wiki / [Boot-Repair](https://help.ubuntu.com/community/Boot-Repair)
* Ubuntu Wiki / [Booting](https://wiki.ubuntu.com/Booting)

## 「Debian」

* Debian Wiki / [BootProcess](https://wiki.debian.org/BootProcess)

## 「Manual」

* $ info grub
* $ info -f grub -n 'Simple configuration'
* $ man [update-grub](http://manpages.ubuntu.com/manpages/trusty/en/man8/update-grub.8.html)
* $ man [grub-install](http://manpages.ubuntu.com/manpages/trusty/en/man8/grub-install.8.html)
* $ man [grub-mkconfig](http://manpages.ubuntu.com/manpages/trusty/en/man8/grub-mkconfig.8.html)


##  「Arch Wiki」

* [GRUB](https://wiki.archlinux.org/index.php/GRUB)

## 「Ubuntu TW Wiki」

* [GRUB2中文指南第二版(上）](http://wiki.ubuntu-tw.org/index.php?title=GRUB2%E4%B8%AD%E6%96%87%E6%8C%87%E5%8D%97%E7%AC%AC%E4%BA%8C%E7%89%88%28%E4%B8%8A%EF%BC%89)
* [Grub2](http://wiki.ubuntu-tw.org/index.php?title=Grub2)
* [HowtoRestoreGrub](http://wiki.ubuntu-tw.org/index.php?title=HowtoRestoreGrub) (舊版)
