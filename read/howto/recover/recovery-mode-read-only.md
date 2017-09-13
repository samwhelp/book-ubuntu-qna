---
layout: page
title: Ubuntu recovery mode read-only
description: >
  Ubuntu recovery mode read-only。
date: 2016-10-04 14:04:23 +0800  
parent:
  title: 如何修復「Ubuntu」
  url: '/read/howto/recover/'
source_url: '/read/howto/recover/recovery-mode-read-only.md' 
---


## 原始討論

原始討論「[回覆: 改了GRUB_CMDLINE_LINUX_DEFAULT="text"之後開不了機](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=355060#forumpost355060)」。


## 回覆內容

歹勢，剛剛才想到之前我有做一些索引「[放在這](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=333548#forumpost333548)」 :p

參考「[這篇](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=310770#forumpost310770)」提到的步驟三。

``` sh
$ mount -o remount,rw /
```

另外使用「[ubuntu recovery mode](https://www.google.com.tw/#q=ubuntu+recovery+mode)」，可以找到「Ubuntu Wiki / [RecoveryMode](https://wiki.ubuntu.com/RecoveryMode)」，裡面有紀錄說明，參考「步驟8」。

:-)

## manpage

$ man 8 [mount](http://manpages.ubuntu.com/manpages/xenial/en/man8/mount.8.html)
