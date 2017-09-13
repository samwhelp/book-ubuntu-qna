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

執行

``` sh
$ ps -1
```

或是執行

``` sh
$ ps -p 1
```

顯示

```
PID TTY      STAT   TIME COMMAND
  1 ?        Ss     0:01 /sbin/init splash
```

執行

``` sh
$ dpkg -S /sbin/init
```

顯示

```
systemd-sysv: /sbin/init
```

執行

``` sh
$ dpkg -L systemd-sysv | sort
```

顯示

```
/.
/sbin
/sbin/halt
/sbin/init
/sbin/poweroff
/sbin/reboot
/sbin/runlevel
/sbin/shutdown
/sbin/telinit
/usr
/usr/share
/usr/share/doc
/usr/share/doc/systemd-sysv
/usr/share/doc/systemd-sysv/changelog.Debian.gz
/usr/share/doc/systemd-sysv/copyright
/usr/share/man
/usr/share/man/man1
/usr/share/man/man1/init.1.gz
/usr/share/man/man8
/usr/share/man/man8/halt.8.gz
/usr/share/man/man8/poweroff.8.gz
/usr/share/man/man8/reboot.8.gz
/usr/share/man/man8/runlevel.8.gz
/usr/share/man/man8/shutdown.8.gz
/usr/share/man/man8/telinit.8.gz
```

執行

``` sh
$ apt-cache showsrc systemd-sysv | grep '^Binary:' -B 1
```

顯示

```
Package: systemd
Binary: systemd, systemd-sysv, systemd-container, systemd-journal-remote, systemd-coredump, libpam-systemd, libnss-myhostname, libnss-mymachines, libnss-resolve, libsystemd0, libsystemd-dev, udev, libudev1, libudev-dev, udev-udeb, libudev1-udeb, systemd-dbg
```

執行

``` sh
$ dpkg -l '*systemd*'
```

顯示

```
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name                          Version             Architecture        Description
+++-=============================-===================-===================-================================================================
ii  dh-systemd                    1.29ubuntu4         all                 debhelper add-on to handle systemd unit files
ii  libpam-systemd:amd64          229-4ubuntu19       amd64               system and service manager - PAM module
un  libsystemd-daemon-dev         <none>              <none>              (no description available)
ii  libsystemd-dev:amd64          229-4ubuntu19       amd64               systemd utility library - development files
un  libsystemd-id128-dev          <none>              <none>              (no description available)
un  libsystemd-journal-dev        <none>              <none>              (no description available)
un  libsystemd-login-dev          <none>              <none>              (no description available)
ii  libsystemd0:amd64             229-4ubuntu19       amd64               systemd utility library
ii  python3-systemd               231-2build1         amd64               Python 3 bindings for systemd
ii  systemd                       229-4ubuntu19       amd64               system and service manager
un  systemd-container             <none>              <none>              (no description available)
un  systemd-services              <none>              <none>              (no description available)
un  systemd-shim                  <none>              <none>              (no description available)
ii  systemd-sysv                  229-4ubuntu19       amd64               system and service manager - SysV links
un  systemd-ui                    <none>              <none>              (no description available)
```

執行

``` sh
$ apt-get source systemd-sysv
```

執行

``` sh
$ grep '/etc/default/locale' systemd-229/* -R -n
```

顯示

```
systemd-229/debian/tests/localed-locale:9:    LOCALE_CONF=/etc/default/locale
systemd-229/debian/patches/Update-localed-to-use-the-Debian-config-files.patch:5:Prefer /etc/default/locale over /etc/locale.conf when writing the locale
systemd-229/debian/patches/Update-localed-to-use-the-Debian-config-files.patch:23:+                r = parse_env_file("/etc/default/locale", NEWLINE,
systemd-229/debian/patches/Update-localed-to-use-the-Debian-config-files.patch:129:+                path = "/etc/default/locale";
systemd-229/debian/patches/Add-back-support-for-Debian-specific-config-files.patch:5:For now fallback to read the locale settings from /etc/default/locale.
systemd-229/debian/patches/Add-back-support-for-Debian-specific-config-files.patch:57:+                r = parse_env_file("/etc/default/locale", NEWLINE,
systemd-229/debian/patches/Add-back-support-for-Debian-specific-config-files.patch:75:+                        log_warning("Failed to read /etc/default/locale: %s", strerror(-r));
systemd-229/src/core/locale-setup.c:84:                r = parse_env_file("/etc/default/locale", NEWLINE,
systemd-229/src/core/locale-setup.c:102:                        log_warning("Failed to read /etc/default/locale: %s", strerror(-r));
systemd-229/src/locale/localed.c:167:                r = parse_env_file("/etc/default/locale", NEWLINE,
systemd-229/src/locale/localed.c:253:                path = "/etc/default/locale";
```

執行

``` sh
$ grep '/etc/locale.conf' systemd-229/* -R -n
```

顯示

```
systemd-229/debian/tests/localed-locale:7:    LOCALE_CONF=/etc/locale.conf
systemd-229/debian/tests/localed-locale:35:! [ -f /etc/locale.conf ]
systemd-229/debian/changelog:450:  * debian/tests/localed-locale: Check /etc/locale.conf if $TEST_UPSTREAM is
systemd-229/debian/patches/Update-localed-to-use-the-Debian-config-files.patch:5:Prefer /etc/default/locale over /etc/locale.conf when writing the locale
systemd-229/debian/patches/Update-localed-to-use-the-Debian-config-files.patch:122:+        const char *path = "/etc/locale.conf";
systemd-229/debian/patches/Update-localed-to-use-the-Debian-config-files.patch:126:-        r = load_env_file(NULL, "/etc/locale.conf", NULL, &l);
systemd-229/debian/patches/Update-localed-to-use-the-Debian-config-files.patch:139:-                if (unlink("/etc/locale.conf") < 0)
systemd-229/debian/patches/Update-localed-to-use-the-Debian-config-files.patch:146:-        r = write_env_file_label("/etc/locale.conf", l);
systemd-229/debian/patches/Add-back-support-for-Debian-specific-config-files.patch:53:                         log_warning_errno(r, "Failed to read /etc/locale.conf: %m");
systemd-229/man/systemd.xml:1081:        the settings in <filename>/etc/locale.conf</filename>. For
systemd-229/man/locale.conf.xml:50:    <para><filename>/etc/locale.conf</filename></para>
systemd-229/man/locale.conf.xml:56:    <para>The <filename>/etc/locale.conf</filename> file configures
systemd-229/man/locale.conf.xml:86:    <filename>/etc/locale.conf</filename> are system-wide and are
systemd-229/man/locale.conf.xml:106:    <filename>/etc/locale.conf</filename>:
systemd-229/man/locale.conf.xml:133:      <para><filename>/etc/locale.conf</filename>:</para>
systemd-229/NEWS:4394:        * The various "environment" files, such as /etc/locale.conf
systemd-229/src/core/locale-setup.c:60:         * try /etc/locale.conf */
systemd-229/src/core/locale-setup.c:62:                r = parse_env_file("/etc/locale.conf", NEWLINE,
systemd-229/src/core/locale-setup.c:80:                        log_warning_errno(r, "Failed to read /etc/locale.conf: %m");
systemd-229/src/firstboot/firstboot.c:247:        etc_localeconf = prefix_roota(arg_root, "/etc/locale.conf");
systemd-229/src/firstboot/firstboot.c:254:                r = copy_file("/etc/locale.conf", etc_localeconf, 0, 0644, 0);
systemd-229/src/locale/localed.c:149:        r = parse_env_file("/etc/locale.conf", NEWLINE,
systemd-229/src/locale/localed.c:247:        const char *path = "/etc/locale.conf";
systemd-229/src/locale/localectl.c:126:                                log_warning("Warning: Settings on kernel command line override system locale settings in /etc/locale.conf.\n"
```

執行

``` sh
$ grep 'locale_setup' systemd-229/* -R -n
```

顯示

```
systemd-229/debian/patches/Add-back-support-for-Debian-specific-config-files.patch:52:@@ -80,6 +80,28 @@ int locale_setup(char ***environment) {
systemd-229/src/core/locale-setup.c:32:int locale_setup(char ***environment) {
systemd-229/src/core/locale-setup.h:22:int locale_setup(char ***environment);
systemd-229/src/core/manager.c:533:                locale_setup(&m->environment);
```


執行

``` sh
$ dpkg -L systemd | grep locale | sort
```

顯示

```
/etc/dbus-1/system.d/org.freedesktop.locale1.conf
/lib/systemd/system/dbus-org.freedesktop.locale1.service
/lib/systemd/systemd-localed
/lib/systemd/system/systemd-localed.service
/usr/bin/localectl
/usr/share/bash-completion/completions/localectl
/usr/share/dbus-1/system-services/org.freedesktop.locale1.service
/usr/share/man/man1/localectl.1.gz
/usr/share/man/man5/locale.conf.5.gz
/usr/share/man/man8/systemd-localed.8.gz
/usr/share/man/man8/systemd-localed.service.8.gz
/usr/share/polkit-1/actions/org.freedesktop.locale1.policy
/usr/share/zsh/vendor-completions/_localectl
```

執行

``` sh
$ dpkg -L systemd | grep '/man/man.*/' | grep locale | sort
```

顯示

```
/usr/share/man/man1/localectl.1.gz
/usr/share/man/man5/locale.conf.5.gz
/usr/share/man/man8/systemd-localed.8.gz
/usr/share/man/man8/systemd-localed.service.8.gz
```

執行

``` sh
$ localectl
```

或是執行

``` sh
$ localectl status
```

顯示

```
System Locale: LANG=en_US.UTF-8
	VC Keymap: n/a
   X11 Layout: us
	X11 Model: pc105
```

執行

``` sh
$ cat /etc/default/keyboard
```

顯示

```
# KEYBOARD CONFIGURATION FILE

# Consult the keyboard(5) manual page.

XKBMODEL="pc105"
XKBLAYOUT="us"
XKBVARIANT=""
XKBOPTIONS=""
```

執行

``` sh
$ grep '/etc/default/keyboard' systemd-229/* -R -n
```

顯示

```
systemd-229/debian/tests/localed-locale:22:if ! [ -e /etc/default/keyboard ]; then
systemd-229/debian/tests/localed-locale:23:    /bin/echo -e 'XKBMODEL=us\nXKBLAYOUT=pc105' > /etc/default/keyboard
systemd-229/debian/tests/localed-x11-keymap:6:ORIG_KBD=`cat /etc/default/keyboard`
systemd-229/debian/tests/localed-x11-keymap:22:    assert_in 'XKBLAYOUT="\?et"\?' "`cat /etc/default/keyboard`"
systemd-229/debian/tests/localed-x11-keymap:23:    assert_in 'XKBMODEL="\?pc101"\?' "`cat /etc/default/keyboard`"
systemd-229/debian/tests/localed-x11-keymap:33:echo "$ORIG_KBD" > /etc/default/keyboard
systemd-229/debian/patches/Update-localed-to-use-the-Debian-config-files.patch:6:configuration and use /etc/default/keyboard instead of
systemd-229/debian/patches/Update-localed-to-use-the-Debian-config-files.patch:108:+        r = parse_env_file("/etc/default/keyboard", NEWLINE,
systemd-229/debian/patches/Update-localed-to-use-the-Debian-config-files.patch:164:+        r = load_env_file(NULL, "/etc/default/keyboard", NULL, &l);
systemd-229/debian/patches/Update-localed-to-use-the-Debian-config-files.patch:275:+                if (unlink("/etc/default/keyboard") < 0)
systemd-229/debian/patches/Update-localed-to-use-the-Debian-config-files.patch:285:+        r = write_env_file("/etc/default/keyboard", l);
systemd-229/src/locale/localed.c:225:        r = parse_env_file("/etc/default/keyboard", NEWLINE,
systemd-229/src/locale/localed.c:412:        r = load_env_file(NULL, "/etc/default/keyboard", NULL, &l);
systemd-229/src/locale/localed.c:494:                if (unlink("/etc/default/keyboard") < 0)
systemd-229/src/locale/localed.c:500:        r = write_env_file("/etc/default/keyboard", l);
```

執行

``` sh
$ whatis locale
```

顯示

```
locale (7)           - description of multilanguage support
locale (1)           - get locale-specific information
locale (5)           - describes a locale definition file
locale (1posix)      - get locale-specific information
```

執行

``` sh
$ whereis locale
```

顯示

```
locale: /usr/bin/locale /usr/lib/locale /etc/locale.gen /etc/locale.alias /usr/include/locale.h /usr/share/locale /usr/share/man/man1/locale.1posix.gz /usr/share/man/man1/locale.1.gz /usr/share/man/man5/locale.5.gz /usr/share/man/man7/locale.7.gz
```

執行

``` sh
$ dpkg -S /usr/share/man/man1/locale.1posix.gz
```

顯示

```
manpages-posix: /usr/share/man/man1/locale.1posix.gz
```

執行

``` sh
$ dpkg -S /usr/share/man/man1/locale.1.gz
```

顯示

```
manpages: /usr/share/man/man1/locale.1.gz
```

執行

``` sh
$ dpkg -S /usr/share/man/man5/locale.5.gz
```

顯示

```
manpages: /usr/share/man/man5/locale.5.gz
```

執行

``` sh
$ dpkg -S /usr/share/man/man7/locale.7.gz
```

顯示

```
manpages: /usr/share/man/man7/locale.7.gz
```

執行

``` sh
$ dpkg -L manpages-posix | grep locale
```

顯示

```
/usr/share/man/man1/locale.1posix.gz
/usr/share/man/man1/localedef.1posix.gz
```

執行

``` sh
$ dpkg -L manpages | grep locale
```

顯示

```
/usr/share/man/man1/locale.1.gz
/usr/share/man/man1/localedef.1.gz
/usr/share/man/man5/locale.5.gz
/usr/share/man/man7/locale.7.gz
```


## Manpage

* man 5 [locale.gen](http://manpages.ubuntu.com/manpages/xenial/en/man5/locale.gen.5.html)
* man 8 [validlocale](http://manpages.ubuntu.com/manpages/xenial/en/man8/validlocale.8.html)
* man 8 [locale-gen](http://manpages.ubuntu.com/manpages/xenial/en/man8/locale-gen.8.html)
* man 8 [update-locale](http://manpages.ubuntu.com/manpages/xenial/en/man8/update-locale.8.html)
* man 1 [init](http://manpages.ubuntu.com/manpages/xenial/en/man1/init.1.html)
* man 1 [localectl](http://manpages.ubuntu.com/manpages/xenial/en/man1/localectl.1.html)
* man 5 [locale.conf](http://manpages.ubuntu.com/manpages/xenial/en/man5/locale.conf.5.html)
* man 8 [systemd-localed](http://manpages.ubuntu.com/manpages/xenial/en/man8/systemd-localed.8.html)
* man 8 [systemd-localed.service](http://manpages.ubuntu.com/manpages/xenial/en/man8/systemd-localed.service.8.html)
* man 1posix [locale](http://manpages.ubuntu.com/manpages/xenial/en/man1/locale.1posix.html)
* man 1posix [localedef](http://manpages.ubuntu.com/manpages/xenial/en/man1/localedef.1posix.html)
* man 1 [locale](http://manpages.ubuntu.com/manpages/xenial/en/man1/locale.1.html)
* man 1 [localedef](http://manpages.ubuntu.com/manpages/xenial/en/man1/localedef.1.html)
* man 5 [locale](http://manpages.ubuntu.com/manpages/xenial/en/man5/locale.5.html)
* man 7 [locale](http://manpages.ubuntu.com/manpages/xenial/en/man7/locale.7.html)


## Package

* [locales](https://packages.ubuntu.com/xenial/locales) (Source: [glibc](https://packages.ubuntu.com/source/xenial/glibc))
* [systemd-sysv](https://packages.ubuntu.com/xenial/systemd-sysv) (Source: [systemd](https://packages.ubuntu.com/source/xenial/systemd))
* [systemd](https://packages.ubuntu.com/xenial/systemd) (Source: [systemd](https://packages.ubuntu.com/source/xenial/systemd))
* [manpages-posix](https://packages.ubuntu.com/xenial/manpages-posix) (Source: [manpages-posix](https://packages.ubuntu.com/source/xenial/manpages-posix))
* [manpages](https://packages.ubuntu.com/xenial/manpages) (Source: [manpages](https://packages.ubuntu.com/source/xenial/manpages))


## Ubuntu Community Help Wiki

* [EnvironmentVariables](https://help.ubuntu.com/community/EnvironmentVariables)
* [Locale](https://help.ubuntu.com/community/Locale)


## Debian Wiki

* [EnvironmentVariables](https://wiki.debian.org/EnvironmentVariables)
* [Locale](https://wiki.debian.org/Locale)


## 相關討論

* [#6 回覆: ubuntun 14.04, psql 無法使用](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358372#forumpost358372)


## 相關檔案

* [/etc/environment](file-etc-environment.html)
* /var/log/syslog
