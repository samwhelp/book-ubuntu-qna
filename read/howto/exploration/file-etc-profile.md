---
layout: page
title: 關於「/etc/profile」
description: >
  關於「/etc/profile」
parent:
  title: 如何探索「Ubuntu」
  url: '/read/howto/exploration/'
source_url: '/read/howto/exploration/file-etc-profile.md'
---

## 測試環境

* Xubuntu 16.04 amd64 英文界面

## 探索步驟

執行

``` sh
$ dpkg -S /etc/profile
```

顯示

```
dpkg-query: no path found matching pattern /etc/profile
```

執行

``` sh
$ grep '/etc/profile' /var/lib/dpkg/info/* -R -n
```

顯示

```
/var/lib/dpkg/info/base-files.list:72:/etc/profile.d
/var/lib/dpkg/info/base-files.postinst:53:  install_from_default profile       /etc/profile
/var/lib/dpkg/info/base-files.postinst:122:  update_to_current_default profile       /etc/profile
/var/lib/dpkg/info/bash-completion.conffiles:2:/etc/profile.d/bash_completion.sh
/var/lib/dpkg/info/bash-completion.list:5:/etc/profile.d
/var/lib/dpkg/info/bash-completion.list:6:/etc/profile.d/bash_completion.sh
/var/lib/dpkg/info/gvfs-bin.preinst:24:    rm_conffile gvfs-bin /etc/profile.d/gvfs-bash-completion.sh
/var/lib/dpkg/info/language-selector-common.conffiles:10:/etc/profile.d/cedilla-portuguese.sh
/var/lib/dpkg/info/language-selector-common.list:3:/etc/profile.d
/var/lib/dpkg/info/language-selector-common.list:4:/etc/profile.d/cedilla-portuguese.sh
/var/lib/dpkg/info/language-selector-common.postinst:40:dpkg-maintscript-helper mv_conffile /etc/profile.d/cedilla-brazil.sh /etc/profile.d/cedilla-portuguese.sh 0.153~ -- "$@"
/var/lib/dpkg/info/language-selector-common.postrm:13:dpkg-maintscript-helper mv_conffile /etc/profile.d/cedilla-brazil.sh /etc/profile.d/cedilla-portuguese.sh 0.153~ -- "$@"
/var/lib/dpkg/info/language-selector-common.preinst:18:dpkg-maintscript-helper mv_conffile /etc/profile.d/cedilla-brazil.sh /etc/profile.d/cedilla-portuguese.sh 0.153~ -- "$@"
/var/lib/dpkg/info/language-selector-common.prerm:4:dpkg-maintscript-helper mv_conffile /etc/profile.d/cedilla-brazil.sh /etc/profile.d/cedilla-portuguese.sh 0.153~ -- "$@"
/var/lib/dpkg/info/snapd.conffiles:3:/etc/profile.d/apps-bin-path.sh
/var/lib/dpkg/info/snapd.list:22:/etc/profile.d
/var/lib/dpkg/info/snapd.list:23:/etc/profile.d/apps-bin-path.sh
```

執行

``` sh
$ less /var/lib/dpkg/info/base-files.postinst
```

執行

``` sh
$ grep '/etc/profile' /var/lib/dpkg/info/base-files.postinst -n
```

顯示

```
53:  install_from_default profile       /etc/profile
122:  update_to_current_default profile       /etc/profile
```

執行

``` sh
$ apt-cache showsrc base-files | grep '^Binary:' -B 1
```

顯示

```
Package: base-files
Binary: base-files, lsb-release-udeb
```

執行

``` sh
$ dpkg -L base-files | grep profile
```

顯示

```
/usr/share/base-files/dot.profile.md5sums
/usr/share/base-files/profile
/usr/share/base-files/profile.md5sums
/usr/share/base-files/dot.profile
/etc/profile.d
```

執行

``` sh
$ whereis profile
```

顯示

```
profile: /etc/profile /etc/profile.d /usr/include/profile.h
```

執行下面指令，觀看「/etc/profile」

``` sh
$ cat /etc/profile
```

顯示

```
# /etc/profile: system-wide .profile file for the Bourne shell (sh(1))
# and Bourne compatible shells (bash(1), ksh(1), ash(1), ...).

if [ "$PS1" ]; then
  if [ "$BASH" ] && [ "$BASH" != "/bin/sh" ]; then
    # The file bash.bashrc already sets the default PS1.
    # PS1='\h:\w\$ '
    if [ -f /etc/bash.bashrc ]; then
      . /etc/bash.bashrc
    fi
  else
    if [ "`id -u`" -eq 0 ]; then
      PS1='# '
    else
      PS1='$ '
    fi
  fi
fi

if [ -d /etc/profile.d ]; then
  for i in /etc/profile.d/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi
```

執行下面指令，觀看「/usr/share/base-files/profile」

``` sh
$ cat /usr/share/base-files/profile
```

顯示

```
# /etc/profile: system-wide .profile file for the Bourne shell (sh(1))
# and Bourne compatible shells (bash(1), ksh(1), ash(1), ...).

if [ "$PS1" ]; then
  if [ "$BASH" ] && [ "$BASH" != "/bin/sh" ]; then
    # The file bash.bashrc already sets the default PS1.
    # PS1='\h:\w\$ '
    if [ -f /etc/bash.bashrc ]; then
      . /etc/bash.bashrc
    fi
  else
    if [ "`id -u`" -eq 0 ]; then
      PS1='# '
    else
      PS1='$ '
    fi
  fi
fi

if [ -d /etc/profile.d ]; then
  for i in /etc/profile.d/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi
```


執行下面指令，觀看「/usr/share/base-files/dot.profile」

``` sh
$ cat /usr/share/base-files/dot.profile
```

顯示

```
# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

mesg n || true
```

執行

``` sh
$ grep 'dot.profile' /var/lib/dpkg/info/* -R -n
```

顯示

```
/var/lib/dpkg/info/base-files.list:38:/usr/share/base-files/dot.profile.md5sums
/var/lib/dpkg/info/base-files.list:46:/usr/share/base-files/dot.profile
/var/lib/dpkg/info/base-files.md5sums:3:46438b614dcb2175148fa7e0bdc604a4  usr/share/base-files/dot.profile
/var/lib/dpkg/info/base-files.md5sums:4:6db82730e03aaeeecb8fee76b73d96d4  usr/share/base-files/dot.profile.md5sums
/var/lib/dpkg/info/base-files.postinst:51:  install_from_default dot.profile   /root/.profile
/var/lib/dpkg/info/base-files.postinst:124:  update_to_current_default dot.profile   /root/.profile
```

執行

``` sh
$ grep 'dot.profile' /var/lib/dpkg/info/base-files.postinst -n
```

顯示

```
51:  install_from_default dot.profile   /root/.profile
124:  update_to_current_default dot.profile   /root/.profile
```


## Manpage

* man 1 [sh](http://manpages.ubuntu.com/manpages/xenial/en/man1/sh.1.html)
* man 1posix[sh](http://manpages.ubuntu.com/manpages/xenial/en/man1/sh.1posix.html)
* man 1 [bash](http://manpages.ubuntu.com/manpages/xenial/en/man1/bash.1.html)


## Package

* [base-files](https://packages.ubuntu.com/xenial/base-files) (Source: [ base-files](https://packages.ubuntu.com/source/xenial/base-files))


## Ubuntu Community Help Wiki

* [EnvironmentVariables](https://help.ubuntu.com/community/EnvironmentVariables)
* [Locale](https://help.ubuntu.com/community/Locale)


## Debian Wiki

* [EnvironmentVariables](https://wiki.debian.org/EnvironmentVariables)
* [Locale](https://wiki.debian.org/Locale)


## 相關討論

* [#6 回覆: ubuntun 14.04, psql 無法使用](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358372#forumpost358372)
