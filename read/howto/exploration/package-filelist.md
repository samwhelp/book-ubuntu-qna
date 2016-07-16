---
layout: page
title: 找「套件」的「檔案列表」
description: >
  找「套件」的「檔案列表」。
parent:
  title: 如何探索「Ubuntu」
  url: '/read/howto/exploration/'
---

## 前提

接續上一篇『[找「已安裝套件」的「檔案列表」](/book-ubuntu-qna/read/howto/exploration/package-installed-filelist.html)』，以「[coreutils](http://packages.ubuntu.com/xenial/coreutils)」這個套件來當案例說明。

透過下載套件，觀看「套件」的「檔案列表」，這可以應用在尚未安裝的套件。

## 步驟

執行下面這個指令，，以「[coreutils](http://packages.ubuntu.com/xenial/coreutils)」這個套件。

``` sh
$ apt-get download coreutils
```

會下載一個檔「coreutils_8.25-2ubuntu2_amd64.deb」。

然後執行下面的指令，觀看「套件」的「檔案列表」。

``` sh
$ dpkg -c coreutils_8.25-2ubuntu2_amd64.deb
```

或是執行

``` sh
$ dpkg-deb -c coreutils_8.25-2ubuntu2_amd64.deb
```

顯示

```
drwxr-xr-x root/root         0 2016-02-18 21:37 ./
drwxr-xr-x root/root         0 2016-02-18 21:37 ./bin/
-rwxr-xr-x root/root     68464 2016-02-18 21:37 ./bin/date
-rwxr-xr-x root/root     72496 2016-02-18 21:37 ./bin/stty
-rwxr-xr-x root/root     39728 2016-02-18 21:37 ./bin/mktemp
-rwxr-xr-x root/root    130488 2016-02-18 21:37 ./bin/mv
-rwxr-xr-x root/root     31408 2016-02-18 21:37 ./bin/sync
-rwxr-xr-x root/root     39632 2016-02-18 21:37 ./bin/readlink
-rwxr-xr-x root/root     31408 2016-02-18 21:37 ./bin/sleep
-rwxr-xr-x root/root     39632 2016-02-18 21:37 ./bin/rmdir
-rwxr-xr-x root/root     31440 2016-02-18 21:37 ./bin/uname
-rwxr-xr-x root/root     56152 2016-02-18 21:37 ./bin/ln
-rwxr-xr-x root/root     52080 2016-02-18 21:37 ./bin/cat
-rwxr-xr-x root/root     76848 2016-02-18 21:37 ./bin/mkdir
-rwxr-xr-x root/root     31376 2016-02-18 21:37 ./bin/echo
-rwxr-xr-x root/root     60272 2016-02-18 21:37 ./bin/rm
-rwxr-xr-x root/root    151024 2016-02-18 21:37 ./bin/cp
-rwxr-xr-x root/root     97912 2016-02-18 21:37 ./bin/df
-rwxr-xr-x root/root     64432 2016-02-18 21:37 ./bin/touch
-rwxr-xr-x root/root     27280 2016-02-18 21:37 ./bin/false
-rwxr-xr-x root/root    126584 2016-02-18 21:37 ./bin/ls
-rwxr-xr-x root/root    126584 2016-02-18 21:37 ./bin/vdir
-rwxr-xr-x root/root    126584 2016-02-18 21:37 ./bin/dir
-rwxr-xr-x root/root     56112 2016-02-18 21:37 ./bin/chmod
-rwxr-xr-x root/root     64496 2016-02-18 21:37 ./bin/mknod
-rwxr-xr-x root/root     72632 2016-02-18 21:37 ./bin/dd
-rwxr-xr-x root/root     64368 2016-02-18 21:37 ./bin/chown
-rwxr-xr-x root/root     27280 2016-02-18 21:37 ./bin/true
-rwxr-xr-x root/root     60272 2016-02-18 21:37 ./bin/chgrp
-rwxr-xr-x root/root     31472 2016-02-18 21:37 ./bin/pwd
drwxr-xr-x root/root         0 2016-02-18 21:37 ./usr/
drwxr-xr-x root/root         0 2016-02-18 21:37 ./usr/sbin/
-rwxr-xr-x root/root     39728 2016-02-18 21:37 ./usr/sbin/chroot
drwxr-xr-x root/root         0 2016-02-18 21:37 ./usr/bin/
-rwxr-xr-x root/root    122032 2016-02-18 21:37 ./usr/bin/du
-rwxr-xr-x root/root     31376 2016-02-18 21:37 ./usr/bin/printenv
-rwxr-xr-x root/root     43792 2016-02-18 21:37 ./usr/bin/uniq
-rwxr-xr-x root/root     60240 2016-02-18 21:37 ./usr/bin/realpath
-rwxr-xr-x root/root     39760 2016-02-18 21:37 ./usr/bin/nl
-rwxr-xr-x root/root     31440 2016-02-18 21:37 ./usr/bin/arch
-rwxr-xr-x root/root     35568 2016-02-18 21:37 ./usr/bin/tac
-rwxr-xr-x root/root     31440 2016-02-18 21:37 ./usr/bin/users
-rwxr-xr-x root/root     39664 2016-02-18 21:37 ./usr/bin/base64
-rwxr-xr-x root/root     35568 2016-02-18 21:37 ./usr/bin/tee
-rwxr-xr-x root/root     51984 2016-02-18 21:37 ./usr/bin/sha256sum
-rwxr-xr-x root/root     31472 2016-02-18 21:37 ./usr/bin/expand
-rwxr-xr-x root/root     31408 2016-02-18 21:37 ./usr/bin/yes
-rwxr-xr-x root/root     47824 2016-02-18 21:37 ./usr/bin/test
-rwxr-xr-x root/root     31440 2016-02-18 21:37 ./usr/bin/groups
-rwxr-xr-x root/root     43792 2016-02-18 21:37 ./usr/bin/sha1sum
-rwxr-xr-x root/root     47856 2016-02-18 21:37 ./usr/bin/seq
-rwxr-xr-x root/root     47856 2016-02-18 21:37 ./usr/bin/tr
-rwxr-xr-x root/root     39760 2016-02-18 21:37 ./usr/bin/id
-rwxr-xr-x root/root     64432 2016-02-18 21:37 ./usr/bin/chcon
-rwxr-xr-x root/root     39632 2016-02-18 21:37 ./usr/bin/fmt
-rwxr-xr-x root/root     43792 2016-02-18 21:37 ./usr/bin/md5sum
-rwxr-xr-x root/root     39728 2016-02-18 21:37 ./usr/bin/cut
-rwxr-xr-x root/root     47984 2016-02-18 21:37 ./usr/bin/who
-rwxr-xr-x root/root     27312 2016-02-18 21:37 ./usr/bin/tty
-rwxr-xr-x root/root     39664 2016-02-18 21:37 ./usr/bin/head
-rwxr-xr-x root/root     43832 2016-02-18 21:37 ./usr/bin/wc
-rwxr-xr-x root/root     80944 2016-02-18 21:37 ./usr/bin/stat
-rwxr-xr-x root/root     39640 2016-02-18 21:37 ./usr/bin/dircolors
-rwxr-xr-x root/root     60272 2016-02-18 21:37 ./usr/bin/numfmt
-rwxr-xr-x root/root     69024 2016-02-18 21:37 ./usr/bin/split
-rwxr-xr-x root/root     35536 2016-02-18 21:37 ./usr/bin/fold
-rwxr-xr-x root/root     51984 2016-02-18 21:37 ./usr/bin/sha224sum
-rwxr-xr-x root/root     39672 2016-02-18 21:37 ./usr/bin/sum
-rwxr-xr-x root/root     31408 2016-02-18 21:37 ./usr/bin/pathchk
-rwxr-xr-x root/root     39664 2016-02-18 21:37 ./usr/bin/base32
-rwxr-xr-x root/root     64432 2016-02-18 21:37 ./usr/bin/tail
-rwxr-xr-x root/root     60368 2016-02-18 21:37 ./usr/bin/mkfifo
-rwxr-xr-x root/root     56144 2016-02-18 21:37 ./usr/bin/shuf
-rwxr-xr-x root/root     31472 2016-02-18 21:37 ./usr/bin/unexpand
-rwxr-xr-x root/root     31408 2016-02-18 21:37 ./usr/bin/env
-rwxr-xr-x root/root     35536 2016-02-18 21:37 ./usr/bin/comm
-rwxr-xr-x root/root     64336 2016-02-18 21:37 ./usr/bin/stdbuf
-rwxr-xr-x root/root     31408 2016-02-18 21:37 ./usr/bin/cksum
-rwxr-xr-x root/root     47888 2016-02-18 21:37 ./usr/bin/join
-rwxr-xr-x root/root     72464 2016-02-18 21:37 ./usr/bin/factor
-rwxr-xr-x root/root     31408 2016-02-18 21:37 ./usr/bin/whoami
-rwxr-xr-x root/root     31440 2016-02-18 21:37 ./usr/bin/nproc
-rwxr-xr-x root/root    138840 2016-02-18 21:37 ./usr/bin/install
-rwxr-xr-x root/root     68432 2016-02-18 21:37 ./usr/bin/od
-rwxr-xr-x root/root    110040 2016-02-18 21:37 ./usr/bin/sort
-rwxr-xr-x root/root     31440 2016-02-18 21:37 ./usr/bin/nohup
-rwxr-xr-x root/root     27280 2016-02-18 21:37 ./usr/bin/hostid
-rwxr-xr-x root/root     52016 2016-02-18 21:37 ./usr/bin/truncate
-rwxr-xr-x root/root     47984 2016-02-18 21:37 ./usr/bin/csplit
-rwxr-xr-x root/root     56080 2016-02-18 21:37 ./usr/bin/sha384sum
-rwxr-xr-x root/root     51920 2016-02-18 21:37 ./usr/bin/[
-rwxr-xr-x root/root     35696 2016-02-18 21:37 ./usr/bin/pinky
-rwxr-xr-x root/root     76752 2016-02-18 21:37 ./usr/bin/pr
-rwxr-xr-x root/root     68560 2016-02-18 21:37 ./usr/bin/ptx
-rwxr-xr-x root/root     43760 2016-02-18 21:37 ./usr/bin/expr
-rwxr-xr-x root/root     31440 2016-02-18 21:37 ./usr/bin/paste
-rwxr-xr-x root/root     27312 2016-02-18 21:37 ./usr/bin/logname
-rwxr-xr-x root/root     31376 2016-02-18 21:37 ./usr/bin/link
-rwxr-xr-x root/root     35632 2016-02-18 21:37 ./usr/bin/runcon
-rwxr-xr-x root/root     56704 2016-02-18 21:37 ./usr/bin/timeout
-rwxr-xr-x root/root     47856 2016-02-18 21:37 ./usr/bin/printf
-rwxr-xr-x root/root     31408 2016-02-18 21:37 ./usr/bin/dirname
-rwxr-xr-x root/root     56240 2016-02-18 21:37 ./usr/bin/shred
-rwxr-xr-x root/root     27280 2016-02-18 21:37 ./usr/bin/unlink
-rwxr-xr-x root/root     35536 2016-02-18 21:37 ./usr/bin/nice
-rwxr-xr-x root/root     31408 2016-02-18 21:37 ./usr/bin/basename
-rwxr-xr-x root/root     39600 2016-02-18 21:37 ./usr/bin/tsort
-rwxr-xr-x root/root     56080 2016-02-18 21:37 ./usr/bin/sha512sum
drwxr-xr-x root/root         0 2016-02-18 21:37 ./usr/lib/
drwxr-xr-x root/root         0 2016-02-18 21:37 ./usr/lib/x86_64-linux-gnu/
drwxr-xr-x root/root         0 2016-02-18 21:37 ./usr/lib/x86_64-linux-gnu/coreutils/
-rw-r--r-- root/root      6208 2016-02-18 21:37 ./usr/lib/x86_64-linux-gnu/coreutils/libstdbuf.so
drwxr-xr-x root/root         0 2016-02-18 21:38 ./usr/share/
drwxr-xr-x root/root         0 2016-02-18 21:37 ./usr/share/info/
-rw-r--r-- root/root    217089 2016-02-18 21:37 ./usr/share/info/coreutils.info.gz
drwxr-xr-x root/root         0 2016-02-18 21:37 ./usr/share/doc/
drwxr-xr-x root/root         0 2016-02-18 21:37 ./usr/share/doc/coreutils/
-rw-r--r-- root/root     63425 2016-02-18 21:37 ./usr/share/doc/coreutils/NEWS.gz
-rw-r--r-- root/root     16247 2016-02-18 21:37 ./usr/share/doc/coreutils/THANKS.gz
-rw-r--r-- root/root      3734 2016-02-18 21:37 ./usr/share/doc/coreutils/AUTHORS
-rw-r--r-- root/root     12531 2016-02-17 01:53 ./usr/share/doc/coreutils/copyright
-rw-r--r-- root/root      5203 2016-02-18 21:37 ./usr/share/doc/coreutils/README.gz
-rw-r--r-- root/root      1882 2016-02-18 21:38 ./usr/share/doc/coreutils/changelog.Debian.gz
-rw-r--r-- root/root       451 2016-02-17 01:53 ./usr/share/doc/coreutils/README.Debian
-rw-r--r-- root/root       795 2016-02-17 01:53 ./usr/share/doc/coreutils/NEWS.Debian.gz
-rw-r--r-- root/root      3562 2016-02-18 21:37 ./usr/share/doc/coreutils/TODO.gz
drwxr-xr-x root/root         0 2016-02-18 21:37 ./usr/share/man/
drwxr-xr-x root/root         0 2016-02-18 21:37 ./usr/share/man/man8/
-rw-r--r-- root/root       878 2016-02-18 21:37 ./usr/share/man/man8/chroot.8.gz
drwxr-xr-x root/root         0 2016-02-18 21:37 ./usr/share/man/man1/
-rw-r--r-- root/root      3141 2016-02-18 21:37 ./usr/share/man/man1/dir.1.gz
-rw-r--r-- root/root      1167 2016-02-18 21:37 ./usr/share/man/man1/sha384sum.1.gz
-rw-r--r-- root/root       682 2016-02-18 21:37 ./usr/share/man/man1/whoami.1.gz
-rw-r--r-- root/root      2022 2016-02-18 21:37 ./usr/share/man/man1/od.1.gz
-rw-r--r-- root/root       785 2016-02-18 21:37 ./usr/share/man/man1/false.1.gz
-rw-r--r-- root/root       657 2016-02-18 21:37 ./usr/share/man/man1/logname.1.gz
-rw-r--r-- root/root       866 2016-02-18 21:37 ./usr/share/man/man1/dirname.1.gz
-rw-r--r-- root/root       858 2016-02-18 21:37 ./usr/share/man/man1/expand.1.gz
-rw-r--r-- root/root       861 2016-02-18 21:37 ./usr/share/man/man1/mkfifo.1.gz
-rw-r--r-- root/root       831 2016-02-18 21:37 ./usr/share/man/man1/fold.1.gz
-rw-r--r-- root/root       734 2016-02-18 21:37 ./usr/share/man/man1/nproc.1.gz
-rw-r--r-- root/root      1348 2016-02-18 21:37 ./usr/share/man/man1/timeout.1.gz
-rw-r--r-- root/root       991 2016-02-18 21:37 ./usr/share/man/man1/tee.1.gz
-rw-r--r-- root/root      1167 2016-02-18 21:37 ./usr/share/man/man1/sha256sum.1.gz
-rw-r--r-- root/root      1469 2016-02-18 21:37 ./usr/share/man/man1/touch.1.gz
-rw-r--r-- root/root       856 2016-02-18 21:37 ./usr/share/man/man1/sleep.1.gz
-rw-r--r-- root/root      1133 2016-02-18 21:37 ./usr/share/man/man1/mknod.1.gz
-rw-r--r-- root/root      1470 2016-02-18 21:37 ./usr/share/man/man1/tr.1.gz
-rw-r--r-- root/root      1344 2016-02-18 21:37 ./usr/share/man/man1/uniq.1.gz
-rw-r--r-- root/root       892 2016-02-18 21:37 ./usr/share/man/man1/pinky.1.gz
-rw-r--r-- root/root      1429 2016-02-18 21:37 ./usr/share/man/man1/mv.1.gz
-rw-r--r-- root/root       887 2016-02-18 21:37 ./usr/share/man/man1/paste.1.gz
-rw-r--r-- root/root      1283 2016-02-18 21:37 ./usr/share/man/man1/chcon.1.gz
-rw-r--r-- root/root      1162 2016-02-18 21:37 ./usr/share/man/man1/sha1sum.1.gz
-rw-r--r-- root/root       869 2016-02-18 21:37 ./usr/share/man/man1/tac.1.gz
-rw-r--r-- root/root       841 2016-02-18 21:37 ./usr/share/man/man1/rmdir.1.gz
-rw-r--r-- root/root      2580 2016-02-18 21:37 ./usr/share/man/man1/date.1.gz
-rw-r--r-- root/root      2050 2016-02-18 21:37 ./usr/share/man/man1/pr.1.gz
-rw-r--r-- root/root      1101 2016-02-18 21:37 ./usr/share/man/man1/runcon.1.gz
-rw-r--r-- root/root      1634 2016-02-18 21:37 ./usr/share/man/man1/stat.1.gz
-rw-r--r-- root/root       686 2016-02-18 21:37 ./usr/share/man/man1/arch.1.gz
-rw-r--r-- root/root      1612 2016-02-18 21:37 ./usr/share/man/man1/test.1.gz
-rw-r--r-- root/root      1199 2016-02-18 21:37 ./usr/share/man/man1/csplit.1.gz
-rw-r--r-- root/root      2662 2016-02-18 21:37 ./usr/share/man/man1/chmod.1.gz
-rw-r--r-- root/root       779 2016-02-18 21:37 ./usr/share/man/man1/pathchk.1.gz
-rw-r--r-- root/root       876 2016-02-18 21:37 ./usr/share/man/man1/dircolors.1.gz
-rw-r--r-- root/root       971 2016-02-18 21:37 ./usr/share/man/man1/shuf.1.gz
-rw-r--r-- root/root      1113 2016-02-18 21:37 ./usr/share/man/man1/seq.1.gz
-rw-r--r-- root/root      1225 2016-02-18 21:37 ./usr/share/man/man1/stdbuf.1.gz
-rw-r--r-- root/root      1230 2016-02-18 21:37 ./usr/share/man/man1/who.1.gz
-rw-r--r-- root/root       707 2016-02-18 21:37 ./usr/share/man/man1/tsort.1.gz
-rw-r--r-- root/root      1821 2016-02-18 21:37 ./usr/share/man/man1/dd.1.gz
-rw-r--r-- root/root      1065 2016-02-18 21:37 ./usr/share/man/man1/head.1.gz
-rw-r--r-- root/root       963 2016-02-18 21:37 ./usr/share/man/man1/nice.1.gz
-rw-r--r-- root/root      1791 2016-02-18 21:37 ./usr/share/man/man1/chown.1.gz
-rw-r--r-- root/root       912 2016-02-18 21:37 ./usr/share/man/man1/nohup.1.gz
-rw-r--r-- root/root       942 2016-02-18 21:37 ./usr/share/man/man1/mkdir.1.gz
-rw-r--r-- root/root      2132 2016-02-18 21:37 ./usr/share/man/man1/numfmt.1.gz
-rw-r--r-- root/root       775 2016-02-18 21:37 ./usr/share/man/man1/sum.1.gz
-rw-r--r-- root/root       670 2016-02-18 21:37 ./usr/share/man/man1/unlink.1.gz
-rw-r--r-- root/root      1100 2016-02-18 21:37 ./usr/share/man/man1/comm.1.gz
-rw-r--r-- root/root       685 2016-02-18 21:37 ./usr/share/man/man1/yes.1.gz
-rw-r--r-- root/root       754 2016-02-18 21:37 ./usr/share/man/man1/groups.1.gz
-rw-r--r-- root/root       865 2016-02-18 21:37 ./usr/share/man/man1/printenv.1.gz
-rw-r--r-- root/root      1729 2016-02-18 21:37 ./usr/share/man/man1/ln.1.gz
-rw-r--r-- root/root      3145 2016-02-18 21:37 ./usr/share/man/man1/vdir.1.gz
-rw-r--r-- root/root      1064 2016-02-18 21:37 ./usr/share/man/man1/fmt.1.gz
-rw-r--r-- root/root       979 2016-02-18 21:37 ./usr/share/man/man1/base32.1.gz
-rw-r--r-- root/root      1848 2016-02-18 21:37 ./usr/share/man/man1/install.1.gz
-rw-r--r-- root/root      1037 2016-02-18 21:37 ./usr/share/man/man1/echo.1.gz
-rw-r--r-- root/root      1301 2016-02-18 21:37 ./usr/share/man/man1/nl.1.gz
-rw-r--r-- root/root      3296 2016-02-18 21:37 ./usr/share/man/man1/stty.1.gz
-rw-r--r-- root/root       707 2016-02-18 21:37 ./usr/share/man/man1/tty.1.gz
-rw-r--r-- root/root      1239 2016-02-18 21:37 ./usr/share/man/man1/cut.1.gz
-rw-r--r-- root/root      2294 2016-02-18 21:37 ./usr/share/man/man1/sort.1.gz
-rw-r--r-- root/root      1822 2016-02-18 21:37 ./usr/share/man/man1/df.1.gz
-rw-r--r-- root/root       894 2016-02-18 21:37 ./usr/share/man/man1/uname.1.gz
-rw-r--r-- root/root      1276 2016-02-18 21:37 ./usr/share/man/man1/chgrp.1.gz
-rw-r--r-- root/root       768 2016-02-18 21:37 ./usr/share/man/man1/users.1.gz
-rw-r--r-- root/root       731 2016-02-18 21:37 ./usr/share/man/man1/factor.1.gz
-rw-r--r-- root/root      1168 2016-02-18 21:37 ./usr/share/man/man1/sha512sum.1.gz
-rw-r--r-- root/root      1147 2016-02-18 21:37 ./usr/share/man/man1/truncate.1.gz
-rw-r--r-- root/root       681 2016-02-18 21:37 ./usr/share/man/man1/hostid.1.gz
-rw-r--r-- root/root      1272 2016-02-18 21:37 ./usr/share/man/man1/printf.1.gz
-rw-r--r-- root/root       885 2016-02-18 21:37 ./usr/share/man/man1/env.1.gz
-rw-r--r-- root/root       674 2016-02-18 21:37 ./usr/share/man/man1/cksum.1.gz
-rw-r--r-- root/root      1321 2016-02-18 21:37 ./usr/share/man/man1/expr.1.gz
-rw-r--r-- root/root      1991 2016-02-18 21:37 ./usr/share/man/man1/shred.1.gz
-rw-r--r-- root/root       959 2016-02-18 21:37 ./usr/share/man/man1/readlink.1.gz
-rw-r--r-- root/root       975 2016-02-18 21:37 ./usr/share/man/man1/realpath.1.gz
-rw-r--r-- root/root      1540 2016-02-18 21:37 ./usr/share/man/man1/join.1.gz
-rw-r--r-- root/root       907 2016-02-18 21:37 ./usr/share/man/man1/unexpand.1.gz
-rw-r--r-- root/root       959 2016-02-18 21:37 ./usr/share/man/man1/id.1.gz
-rw-r--r-- root/root       679 2016-02-18 21:37 ./usr/share/man/man1/link.1.gz
-rw-r--r-- root/root      1666 2016-02-18 21:37 ./usr/share/man/man1/tail.1.gz
-rw-r--r-- root/root      1262 2016-02-18 21:37 ./usr/share/man/man1/md5sum.1.gz
-rw-r--r-- root/root      1319 2016-02-18 21:37 ./usr/share/man/man1/ptx.1.gz
-rw-r--r-- root/root       779 2016-02-18 21:37 ./usr/share/man/man1/true.1.gz
-rw-r--r-- root/root      2240 2016-02-18 21:37 ./usr/share/man/man1/du.1.gz
-rw-r--r-- root/root       962 2016-02-18 21:37 ./usr/share/man/man1/basename.1.gz
-rw-r--r-- root/root      3137 2016-02-18 21:37 ./usr/share/man/man1/ls.1.gz
-rw-r--r-- root/root      2309 2016-02-18 21:37 ./usr/share/man/man1/cp.1.gz
-rw-r--r-- root/root       999 2016-02-18 21:37 ./usr/share/man/man1/cat.1.gz
-rw-r--r-- root/root      1485 2016-02-18 21:37 ./usr/share/man/man1/split.1.gz
-rw-r--r-- root/root       869 2016-02-18 21:37 ./usr/share/man/man1/pwd.1.gz
-rw-r--r-- root/root       979 2016-02-18 21:37 ./usr/share/man/man1/base64.1.gz
-rw-r--r-- root/root      1187 2016-02-18 21:37 ./usr/share/man/man1/mktemp.1.gz
-rw-r--r-- root/root       849 2016-02-18 21:37 ./usr/share/man/man1/sync.1.gz
-rw-r--r-- root/root      1018 2016-02-18 21:37 ./usr/share/man/man1/wc.1.gz
-rw-r--r-- root/root      1163 2016-02-18 21:37 ./usr/share/man/man1/sha224sum.1.gz
-rw-r--r-- root/root      1618 2016-02-18 21:37 ./usr/share/man/man1/rm.1.gz
lrwxrwxrwx root/root         0 2016-02-18 21:37 ./usr/bin/md5sum.textutils -> md5sum
lrwxrwxrwx root/root         0 2016-02-18 21:37 ./usr/share/man/man1/md5sum.textutils.1.gz -> md5sum.1.gz
lrwxrwxrwx root/root         0 2016-02-18 21:37 ./usr/share/man/man1/[.1.gz -> test.1.gz
```


## 後續

待續...
