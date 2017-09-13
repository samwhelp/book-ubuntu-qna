---
layout: page
title: 找「已安裝套件」的「檔案列表」
description: >
  找「已安裝套件」的「檔案列表」。
parent:
  title: 如何探索「Ubuntu」
  url: '/read/howto/explore/'
source_url: '/read/howto/explore/package-installed-filelist.md'
---

## 前提

接續上一篇『[從「指令」找到「所屬套件」](/book-ubuntu-qna/read/howto/explore/command-and-package.html)』，以「[coreutils](http://packages.ubuntu.com/xenial/coreutils)」這個套件來當案例說明。


## 步驟

執行

``` sh
$ dpkg -L coreutils
```

顯示

```
/.
/bin
/bin/date
/bin/stty
/bin/mktemp
/bin/mv
/bin/sync
/bin/readlink
/bin/sleep
/bin/rmdir
/bin/uname
/bin/ln
/bin/cat
/bin/mkdir
/bin/echo
/bin/rm
/bin/cp
/bin/df
/bin/touch
/bin/false
/bin/ls
/bin/vdir
/bin/dir
/bin/chmod
/bin/mknod
/bin/dd
/bin/chown
/bin/true
/bin/chgrp
/bin/pwd
/usr
/usr/sbin
/usr/sbin/chroot
/usr/bin
/usr/bin/du
/usr/bin/printenv
/usr/bin/uniq
/usr/bin/realpath
/usr/bin/nl
/usr/bin/arch
/usr/bin/tac
/usr/bin/users
/usr/bin/base64
/usr/bin/tee
/usr/bin/sha256sum
/usr/bin/expand
/usr/bin/yes
/usr/bin/test
/usr/bin/groups
/usr/bin/sha1sum
/usr/bin/seq
/usr/bin/tr
/usr/bin/id
/usr/bin/chcon
/usr/bin/fmt
/usr/bin/md5sum
/usr/bin/cut
/usr/bin/who
/usr/bin/tty
/usr/bin/head
/usr/bin/wc
/usr/bin/stat
/usr/bin/dircolors
/usr/bin/numfmt
/usr/bin/split
/usr/bin/fold
/usr/bin/sha224sum
/usr/bin/sum
/usr/bin/pathchk
/usr/bin/base32
/usr/bin/tail
/usr/bin/mkfifo
/usr/bin/shuf
/usr/bin/unexpand
/usr/bin/env
/usr/bin/comm
/usr/bin/stdbuf
/usr/bin/cksum
/usr/bin/join
/usr/bin/factor
/usr/bin/whoami
/usr/bin/nproc
/usr/bin/install
/usr/bin/od
/usr/bin/sort
/usr/bin/nohup
/usr/bin/hostid
/usr/bin/truncate
/usr/bin/csplit
/usr/bin/sha384sum
/usr/bin/[
/usr/bin/pinky
/usr/bin/pr
/usr/bin/ptx
/usr/bin/expr
/usr/bin/paste
/usr/bin/logname
/usr/bin/link
/usr/bin/runcon
/usr/bin/timeout
/usr/bin/printf
/usr/bin/dirname
/usr/bin/shred
/usr/bin/unlink
/usr/bin/nice
/usr/bin/basename
/usr/bin/tsort
/usr/bin/sha512sum
/usr/lib
/usr/lib/x86_64-linux-gnu
/usr/lib/x86_64-linux-gnu/coreutils
/usr/lib/x86_64-linux-gnu/coreutils/libstdbuf.so
/usr/share
/usr/share/info
/usr/share/info/coreutils.info.gz
/usr/share/doc
/usr/share/doc/coreutils
/usr/share/doc/coreutils/NEWS.gz
/usr/share/doc/coreutils/THANKS.gz
/usr/share/doc/coreutils/AUTHORS
/usr/share/doc/coreutils/copyright
/usr/share/doc/coreutils/README.gz
/usr/share/doc/coreutils/changelog.Debian.gz
/usr/share/doc/coreutils/README.Debian
/usr/share/doc/coreutils/NEWS.Debian.gz
/usr/share/doc/coreutils/TODO.gz
/usr/share/man
/usr/share/man/man8
/usr/share/man/man8/chroot.8.gz
/usr/share/man/man1
/usr/share/man/man1/dir.1.gz
/usr/share/man/man1/sha384sum.1.gz
/usr/share/man/man1/whoami.1.gz
/usr/share/man/man1/od.1.gz
/usr/share/man/man1/false.1.gz
/usr/share/man/man1/logname.1.gz
/usr/share/man/man1/dirname.1.gz
/usr/share/man/man1/expand.1.gz
/usr/share/man/man1/mkfifo.1.gz
/usr/share/man/man1/fold.1.gz
/usr/share/man/man1/nproc.1.gz
/usr/share/man/man1/timeout.1.gz
/usr/share/man/man1/tee.1.gz
/usr/share/man/man1/sha256sum.1.gz
/usr/share/man/man1/touch.1.gz
/usr/share/man/man1/sleep.1.gz
/usr/share/man/man1/mknod.1.gz
/usr/share/man/man1/tr.1.gz
/usr/share/man/man1/uniq.1.gz
/usr/share/man/man1/pinky.1.gz
/usr/share/man/man1/mv.1.gz
/usr/share/man/man1/paste.1.gz
/usr/share/man/man1/chcon.1.gz
/usr/share/man/man1/sha1sum.1.gz
/usr/share/man/man1/tac.1.gz
/usr/share/man/man1/rmdir.1.gz
/usr/share/man/man1/date.1.gz
/usr/share/man/man1/pr.1.gz
/usr/share/man/man1/runcon.1.gz
/usr/share/man/man1/stat.1.gz
/usr/share/man/man1/arch.1.gz
/usr/share/man/man1/test.1.gz
/usr/share/man/man1/csplit.1.gz
/usr/share/man/man1/chmod.1.gz
/usr/share/man/man1/pathchk.1.gz
/usr/share/man/man1/dircolors.1.gz
/usr/share/man/man1/shuf.1.gz
/usr/share/man/man1/seq.1.gz
/usr/share/man/man1/stdbuf.1.gz
/usr/share/man/man1/who.1.gz
/usr/share/man/man1/tsort.1.gz
/usr/share/man/man1/dd.1.gz
/usr/share/man/man1/head.1.gz
/usr/share/man/man1/nice.1.gz
/usr/share/man/man1/chown.1.gz
/usr/share/man/man1/nohup.1.gz
/usr/share/man/man1/mkdir.1.gz
/usr/share/man/man1/numfmt.1.gz
/usr/share/man/man1/sum.1.gz
/usr/share/man/man1/unlink.1.gz
/usr/share/man/man1/comm.1.gz
/usr/share/man/man1/yes.1.gz
/usr/share/man/man1/groups.1.gz
/usr/share/man/man1/printenv.1.gz
/usr/share/man/man1/ln.1.gz
/usr/share/man/man1/vdir.1.gz
/usr/share/man/man1/fmt.1.gz
/usr/share/man/man1/base32.1.gz
/usr/share/man/man1/install.1.gz
/usr/share/man/man1/echo.1.gz
/usr/share/man/man1/nl.1.gz
/usr/share/man/man1/stty.1.gz
/usr/share/man/man1/tty.1.gz
/usr/share/man/man1/cut.1.gz
/usr/share/man/man1/sort.1.gz
/usr/share/man/man1/df.1.gz
/usr/share/man/man1/uname.1.gz
/usr/share/man/man1/chgrp.1.gz
/usr/share/man/man1/users.1.gz
/usr/share/man/man1/factor.1.gz
/usr/share/man/man1/sha512sum.1.gz
/usr/share/man/man1/truncate.1.gz
/usr/share/man/man1/hostid.1.gz
/usr/share/man/man1/printf.1.gz
/usr/share/man/man1/env.1.gz
/usr/share/man/man1/cksum.1.gz
/usr/share/man/man1/expr.1.gz
/usr/share/man/man1/shred.1.gz
/usr/share/man/man1/readlink.1.gz
/usr/share/man/man1/realpath.1.gz
/usr/share/man/man1/join.1.gz
/usr/share/man/man1/unexpand.1.gz
/usr/share/man/man1/id.1.gz
/usr/share/man/man1/link.1.gz
/usr/share/man/man1/tail.1.gz
/usr/share/man/man1/md5sum.1.gz
/usr/share/man/man1/ptx.1.gz
/usr/share/man/man1/true.1.gz
/usr/share/man/man1/du.1.gz
/usr/share/man/man1/basename.1.gz
/usr/share/man/man1/ls.1.gz
/usr/share/man/man1/cp.1.gz
/usr/share/man/man1/cat.1.gz
/usr/share/man/man1/split.1.gz
/usr/share/man/man1/pwd.1.gz
/usr/share/man/man1/base64.1.gz
/usr/share/man/man1/mktemp.1.gz
/usr/share/man/man1/sync.1.gz
/usr/share/man/man1/wc.1.gz
/usr/share/man/man1/sha224sum.1.gz
/usr/share/man/man1/rm.1.gz
/usr/bin/md5sum.textutils
/usr/share/man/man1/md5sum.textutils.1.gz
/usr/share/man/man1/[.1.gz
```

## 檔案

也可以從「/var/lib/dpkg/info/coreutils.list」這個檔案找到「filelist」。

執行

```
$ cat /var/lib/dpkg/info/coreutils.list
```

就可看到上面的列表

## 網頁

也可以從「[coreutils](http://packages.ubuntu.com/xenial/coreutils)」這個頁面，找到「[filelist (list of files)](http://packages.ubuntu.com/xenial/amd64/coreutils/filelist)」的頁面。


## 後續

接下來，透過下載套件，[觀看「套件」的「檔案列表」](/book-ubuntu-qna/read/howto/explore/package-filelist.html)，這可以應用在尚未安裝的套件。
