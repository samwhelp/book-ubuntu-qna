---
layout: page
title: Apache操作實務
description: >
  Ubuntu環境，Apache操作實務。
parent:
  title: 主題
  url: /read/subject
---

[原始連結](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=333560#forumpost333560)


# [索引] 在 泛Ubuntu 底下，「Apache」的操作實務


## 相關討論

* [回覆: 14-10版 網頁伺服器 內容更新問題](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=330888#forumpost330888)
* [[分享]快速安裝及設定 owncloud 7.0.4](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?topic_id=94422)
* 回覆: 如何使用home 來架站 ([1](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=330962#forumpost330962)) ([2](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=330964#forumpost330964)) ([3](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=330986#forumpost330986)) ([4](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=330968#forumpost330968)) ([5](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=330992#forumpost330992))
* [回覆: owncloud 上傳限制設定](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=331756#forumpost331756)
* [回覆: 請教!!有用終端機開遊戲伺服器的大大](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=329440#forumpost329440)
* [如何更新apache](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?topic_id=93934)


## 案例

* [phpmyadmin安裝](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=339148#forumpost339148)
* [回覆: 關於phpmyadmin的問題](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=320994#forumpost320994)
* [回覆: xoops 安裝後](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=333406#forumpost333406)
* [回覆: xoops 安裝出現 無法寫入](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=331442#forumpost331442)
* [回覆: Php突然無法執行](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=330362#forumpost330362)
* [如何在 php 中重新設定網路](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=334758#forumpost334758)
* [開啟a2enmod userdir後，想限制瀏覽網頁的ip](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=338534#forumpost338534)
* [回覆: Ubuntu 16.04 架站問題](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=351892#forumpost351892)
* [回覆: ubuntu16.04 伺服器 安裝問題](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=355042#forumpost355042)


## 「鳥哥的 Linux 私房菜」的參考文件

*  [ 第二十章、WWW 伺服器](http://linux.vbird.org/linux_server/0360apache.php)


## 「Ubuntu 」官方參考文件

* [Ubuntu Server Guide](https://help.ubuntu.com/lts/serverguide/index.html) / [Web Servers](https://help.ubuntu.com/lts/serverguide/web-servers.html) / [HTTPD - Apache2 Web Server](https://help.ubuntu.com/lts/serverguide/httpd.html)
* Ubuntu Community Help Wiki / [ApacheMySQLPHP](https://help.ubuntu.com/community/ApacheMySQLPHP)


## 「Manual」

* $ man [a2enconf](http://manpages.ubuntu.com/manpages/trusty/en/man8/a2enconf.8.html)
* $ man [a2enmod](http://manpages.ubuntu.com/manpages/trusty/en/man8/a2enmod.8.html)
* $ man [a2ensite](http://manpages.ubuntu.com/manpages/trusty/en/man8/a2ensite.8.html)
* $ man [a2disconf](http://manpages.ubuntu.com/manpages/trusty/en/man8/a2disconf.8.html)
* $ man [a2dismod](http://manpages.ubuntu.com/manpages/trusty/en/man8/a2dismod.8.html)
* $ man [a2dissite](http://manpages.ubuntu.com/manpages/trusty/en/man8/a2dissite.8.html)
* $ man [a2query](http://manpages.ubuntu.com/manpages/trusty/en/man1/a2query.1.html)
* $ man [apache2ctl](http://manpages.ubuntu.com/manpages/trusty/en/man8/apache2ctl.8.html)
* $ man [apachectl](http://manpages.ubuntu.com/manpages/trusty/en/man8/apachectl.8.html)


* $ man [php5](http://manpages.ubuntu.com/manpages/trusty/en/man1/php5.1.html)

另外有三個跟「PHP管理相關的指令」，
「php5dismod」，「php5enmod」，「php5query」，
是屬於「[php5-common](http://packages.ubuntu.com/trusty/php5-common)」這個套件，
沒有「manual」，放在「/usr/sbin/」這個資料夾，可以使用「ls /usr/sbin/php5*」查詢。
用法請參考「[回覆: 關於phpmyadmin的問題](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=320994#forumpost320994)」這篇。


## 更多參考

* Ubuntu Wiki / [Systemd For Upstart Users](https://wiki.ubuntu.com/SystemdForUpstartUsers)
* [淺析 Linux 初始化 init 系統，第 1 部分: sysvinit](http://www.ibm.com/developerworks/cn/linux/1407_liuming_init1/)
* [淺析 Linux 初始化 init 系統，第 2 部分: UpStart](http://www.ibm.com/developerworks/cn/linux/1407_liuming_init2/)
* [淺析 Linux 初始化 init 系統，第 3 部分: Systemd](http://www.ibm.com/developerworks/cn/linux/1407_liuming_init3/)


## 站外文章

* [Apache Http Server](http://lms.ctl.cyut.edu.tw/sysdata/53/20253/doc/bde3934073d34191/attach/1094276.htm) ([這篇提到的](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=338534#forumpost338534)) (很完整的操作實務)
