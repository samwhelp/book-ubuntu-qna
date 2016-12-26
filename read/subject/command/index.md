---
layout: page
title: 如何執行指令
description: >
  Ubuntu環境，如何執行指令。
date: 2015-12-30 01:44:10 +0800  
parent:
  title: 主題
  url: /read/subject
source_url: '/read/subject/command/index.md'
---

[原始連結](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=348698#forumpost348698)


## 起源

來自這篇討論「[回覆: fwbuilder產生的檔無法執行](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=348676#forumpost348676)」。

對「鳥哥的私房菜」作一些重點導讀，來建立「如何執行指令」的一些需要了解的觀念。

「下指令」需要使用「Terminal」，若是不曉得怎麼啟用，

可以參考這篇「Ubuntu Community Help Wiki / [UsingTheTerminal](https://help.ubuntu.com/community/UsingTheTerminal)」，

裡面有介紹幾個主要的桌面環境的啟用方法和快速鍵。

## 鳥哥的私房菜

* [4.2.1 開始下達指令](http://linux.vbird.org/linux_basic/0160startlinux.php#cmd_cmd)
* [5.2 Linux檔案權限概念](http://linux.vbird.org/linux_basic/0210filepermission.php#filepermission)
* [5.3.3 絕對路徑與相對路徑](http://linux.vbird.org/linux_basic/0210filepermission.php#dir_path)
* [10.4.1 路徑與指令搜尋順序](http://linux.vbird.org/linux_basic/0320bash.php#settings_path)
* [13.4.2 sudo](http://linux.vbird.org/linux_basic/0410accountmanager.php#sudo)
* [第十一章、正規表示法與文件格式化處理](http://linux.vbird.org/linux_basic/0330regularex.php)

## 如何查詢Manual

* 鳥哥的私房菜 / [4.3.2 man page](http://linux.vbird.org/linux_basic/0160startlinux.php#manual_man)
* 鳥哥的私房菜 / [4.3.3 info page](http://linux.vbird.org/linux_basic/0160startlinux.php#manual_info)
* [如何查詢某個套件有哪些使用手冊(man page)](http://samwhelp.github.io/book-ubuntu-basic-skill/book/content/manual/how-to-find-out-manpages-by-a-package.html)

## 網頁Manual

* Ubuntu / [manuals](http://manpages.ubuntu.com/)
* Debian / [Man Page](http://manpages.debian.org/cgi-bin/man.cgi)

## 網頁套件查詢

* Ubuntu / [apps](https://apps.ubuntu.com/cat/)
* Ubuntu / [Packages](http://packages.ubuntu.com/)
* [Debian Packages Search](https://packages.debian.org/index)

## 執行指令 相關討論

* [#2 回覆: fwbuilder產生的檔無法執行](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=348676#forumpost348676)
* [#3 回覆: 請問軟體安裝及執行問題](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=348392#forumpost348392)
* [#2 回覆: 對於正體中文資訊書籍/文件的奢望](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=348438#forumpost348438)
* [#4 回覆: 為什麼我的終端機上無法使用"cd"這個指令呢？](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356206#forumpost356206)
* [#4 回覆: 如何在 Terminal 一行裡同時下幾個指令？](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356178#forumpost356178)

## sudo 相關討論

* [如何在 php 中重新設定網路](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=334758#forumpost334758)
* [[分享]在瀏覽檔案時，按右鍵能直接以 root 權限開啟](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=326794#forumpost326794)
* [如何在/etc/pur-ftpd/conf下新增OR修改檔案](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=348236#forumpost348236)
* [回覆: 請問如何將putty設為sudo權限](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=352530#forumpost352530)

## 權限 相關討論案例

* [回覆: 向前輩求教 !! 如何將加密的Home資料夾裡面的檔案COPY出來 ???](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=347794#forumpost347794)


## 相關文件

* $ man [bash](http://manpages.ubuntu.com/manpages/trusty/en/man1/bash.1.html)
* $ man [sh](http://manpages.ubuntu.com/manpages/trusty/en/man1/sh.1.html)
* $ man 1posix [sh](http://manpages.ubuntu.com/manpages/trusty/en/man1/sh.1posix.html)  <-- 事先安裝「[manpages-posix](http://packages.ubuntu.com/trusty/manpages-posix)」這個套件($ sudo apt-get install manpages-posix)
* $ help  <-- bash 環境可以執行
* $ help help <-- bash 環境可以執行
* [bash-handbook](https://github.com/denysdovhan/bash-handbook) ([中文版](https://github.com/denysdovhan/bash-handbook/tree/master/translations/zh-TW)) ([連結紀錄在這](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356222#forumpost356222))
* [The Linux Command Line](http://linuxcommand.org/tlcl.php)

## 相關連結

* [The Grymoire - home for UNIX wizards](http://www.grymoire.com/Unix/index.html)
* [Linux commands - A practical reference](http://www.pixelbeat.org/cmdline.html)

## 相關指令

* $ man 1 [stat](http://manpages.ubuntu.com/manpages/trusty/en/man1/stat.1.html)
* $ man 1 [ls](http://manpages.ubuntu.com/manpages/trusty/en/man1/ls.1.html)
* $ man 8 [sudo](http://manpages.ubuntu.com/manpages/trusty/en/man8/sudo.8.html)

## Ubuntu Community Help Wiki

* [UsingTheTerminal](https://help.ubuntu.com/community/UsingTheTerminal)
* [CommandlineHowto](https://help.ubuntu.com/community/CommandlineHowto)
* [AdvancedCommandlineHowto](https://help.ubuntu.com/community/AdvancedCommandlineHowto)
* [HowToReadline](https://help.ubuntu.com/community/HowToReadline)

## Shell Script

* [#2 回覆: bash-handbook](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356236#forumpost356236)
* [#3 回覆: 為什麼站上沒有16.10可以下載呢？](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=355920#forumpost355920)
* [回覆: 「Mozilla Firefox 官方版」更新腳本](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=353262#forumpost353262)
* [function去呼叫function](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=350648#forumpost350648)
* [shell中 `` 與()問題請教](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=350768#forumpost350768)
* [「set --」的用法?](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=350924#forumpost350924)
* [getopts 問題請教](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=350994#forumpost350994)
* [在busybox(ash)裡不一樣的awk結果](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=340670#forumpost340670)
* [如何在 php 中重新設定網路](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=334758#forumpost334758)
* [shell script 大量刪除匹配資料](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=332254#forumpost332254)
* [[已解決]sed在shell script的用法](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=330990#forumpost330990)
* [關於字串轉16進位](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=335348#forumpost335348)
* [回覆: [自製文件分享]以Windows思維用Linux-GNOME桌面篇-第二版](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=351316#forumpost351316)
