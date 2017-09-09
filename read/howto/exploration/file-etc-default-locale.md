---
layout: page
title: 關於「/etc/default/locale」
description: >
  關於「/etc/default/locale」
parent:
  title: 如何探索「Ubuntu」
  url: '/read/howto/exploration/'
source_url: '/read/howto/exploration/file-etc-default-locale.md'
---

## 測試環境

* Xubuntu 16.04 amd64 英文界面

## 探索步驟

執行

``` sh
$ dpkg -S /etc/default/locale
```

顯示

```
dpkg-query: no path found matching pattern /etc/default/locale
```

執行

``` sh
$ grep '/etc/default/locale' /var/lib/dpkg/info/* -R -n
```

顯示

```
/var/lib/dpkg/info/dictionaries-common.config:354:    # If system is already installed use /etc/default/locale contents.
/var/lib/dpkg/info/dictionaries-common.config:356:    if ( -e "/etc/default/locale" ){
/var/lib/dpkg/info/language-selector-common.postinst:54:if dpkg --compare-versions "$2" lt-nl 0.85 && [ -e /etc/default/locale ] \
/var/lib/dpkg/info/language-selector-common.postinst:57:        . /etc/default/locale
/var/lib/dpkg/info/locales.config:6:EE="/etc/default/locale"
/var/lib/dpkg/info/locales.config:539:DEFAULT_ENVIRONMENT="$(cat /etc/environment /etc/default/locale 2>/dev/null | awk '/^LANG=/ {gsub("\"", ""); sub("LANG=", ""); lang=$0;} END {print lang}')"
/var/lib/dpkg/info/locales.postinst:6:EE="/etc/default/locale"
/var/lib/dpkg/info/locales.postrm:7:    rm -f /etc/default/locale
```

執行

``` sh
$ less /var/lib/dpkg/info/locales.postinst
```

執行

``` sh
$ apt-cache showsrc locales | grep '^Binary:' -B 1
```

顯示

```
Package: glibc
Binary: libc-bin, libc-dev-bin, libc-l10n, glibc-doc, glibc-source, locales, locales-all, nscd, multiarch-support, libc6, libc6-dev, libc6-dbg, libc6-pic, libc6-udeb, libc6.1, libc6.1-dev, libc6.1-dbg, libc6.1-pic, libc6.1-udeb, libc0.3, libc0.3-dev, libc0.3-dbg, libc0.3-pic, libc0.3-udeb, libc0.1, libc0.1-dev, libc0.1-dbg, libc0.1-pic, libc0.1-udeb, libc6-i386, libc6-dev-i386, libc6-sparc, libc6-dev-sparc, libc6-sparc64, libc6-dev-sparc64, libc6-s390, libc6-dev-s390, libc6-amd64, libc6-dev-amd64, libc6-powerpc, libc6-dev-powerpc, libc6-ppc64, libc6-dev-ppc64, libc6-mips32, libc6-dev-mips32, libc6-mipsn32, libc6-dev-mipsn32, libc6-mips64, libc6-dev-mips64, libc6-armhf, libc6-dev-armhf, libc6-armel, libc6-dev-armel, libc0.1-i386, libc0.1-dev-i386, libc6-x32, libc6-dev-x32, libc6-i686, libc6-xen, libc0.1-i686, libc6.1-alphaev67
```


執行

``` sh
$ apt-get source locales
```

執行

``` sh
$ grep '/etc/default/locale' glibc-2.23/* -R -n
```

顯示

```
glibc-2.23/debian/changelog.ubuntu:3427:  * debian/debhelper.in/locales.postrm: remove /etc/default/locale on
glibc-2.23/debian/changelog.ubuntu:3477:    /etc/environment and /etc/default/locale do not exist.
glibc-2.23/debian/changelog.ubuntu:3911:  * debhelper.in/locales.postinst: make sure /etc/default/locale is always
glibc-2.23/debian/changelog.ubuntu:4985:  * debian/debhelper.in/locales.postinst: don't update /etc/default/locale
glibc-2.23/debian/changelog.ubuntu:7218:    even when upgrading new versions.  Of course, /etc/default/locale has
glibc-2.23/debian/changelog.ubuntu:7441:  * Do no more transfer variables from /etc/environment to /etc/default/locale
glibc-2.23/debian/changelog.ubuntu:7520:    /etc/default/locale file.  (Closes: #214898, #349503)
glibc-2.23/debian/local/manpages/update-locale.8:14:installed or removed, it updates the \fB/etc/default/locale\fP file to
glibc-2.23/debian/local/manpages/update-locale.8:29:.BR /etc/default/locale )
glibc-2.23/debian/local/manpages/update-locale.8:42:.B /etc/default/locale
glibc-2.23/debian/local/usr_sbin/update-locale:7:my $locale_file  = "/etc/default/locale";
glibc-2.23/debian/local/usr_sbin/update-locale:31:                       (Default: /etc/default/locale)
glibc-2.23/debian/debhelper.in/locales.postinst:6:EE="/etc/default/locale"
glibc-2.23/debian/debhelper.in/locales.config:6:EE="/etc/default/locale"
glibc-2.23/debian/debhelper.in/locales.config:59:DEFAULT_ENVIRONMENT="$(cat /etc/environment /etc/default/locale 2>/dev/null | awk '/^LANG=/ {gsub("\"", ""); sub("LANG=", ""); lang=$0;} END {print lang}')"
glibc-2.23/debian/debhelper.in/locales.postrm:7:        rm -f /etc/default/locale
glibc-2.23/debian/debhelper.in/locales.NEWS:20:  * Locale variables are now stored in /etc/default/locale and no more
glibc-2.23/debian/changelog:119:  * Tweak locales.config to allow langpacks for /etc/default/locale.
glibc-2.23/debian/changelog:224:    get preseeded correctly both with and without /etc/default/locale.
glibc-2.23/debian/changelog:6390:  * debian/debhelper.in/locales.postrm: remove /etc/default/locale on
glibc-2.23/debian/changelog:6407:    /etc/environment and /etc/default/locale do not exist.
glibc-2.23/debian/changelog:6744:  * debhelper.in/locales.postinst: make sure /etc/default/locale is always
glibc-2.23/debian/changelog:7322:  * debian/debhelper.in/locales.postinst: don't update /etc/default/locale
glibc-2.23/debian/changelog:8938:    even when upgrading new versions.  Of course, /etc/default/locale has
glibc-2.23/debian/changelog:9161:  * Do no more transfer variables from /etc/environment to /etc/default/locale
glibc-2.23/debian/changelog:9240:    /etc/default/locale file.  (Closes: #214898, #349503)
```

執行

``` sh
$ dpkg -L locales | grep '/man/man.*/'
```

顯示

```
/usr/share/man/man5/locale.gen.5.gz
/usr/share/man/man8/validlocale.8.gz
/usr/share/man/man8/locale-gen.8.gz
/usr/share/man/man8/update-locale.8.gz
```

## Manpage

* man 5 [locale.gen](http://manpages.ubuntu.com/manpages/xenial/en/man5/locale.gen.5.html)
* man 8 [validlocale](http://manpages.ubuntu.com/manpages/xenial/en/man8/validlocale.8.html)
* man 8 [locale-gen](http://manpages.ubuntu.com/manpages/xenial/en/man8/locale-gen.8.html)
* man 8 [update-locale](http://manpages.ubuntu.com/manpages/xenial/en/man8/update-locale.8.html)


## Package

* [locales](https://packages.ubuntu.com/xenial/locales) ([Source: glibc](https://packages.ubuntu.com/source/xenial/glibc))


## Ubuntu Community Help Wiki

* [EnvironmentVariables](https://help.ubuntu.com/community/EnvironmentVariables)
* [Locale](https://help.ubuntu.com/community/Locale)


## Debian Wiki

* [EnvironmentVariables](https://wiki.debian.org/EnvironmentVariables)
* [Locale](https://wiki.debian.org/Locale)
