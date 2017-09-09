---
layout: page
title: 關於「/etc/environment」
description: >
  關於「/etc/environment」
parent:
  title: 如何探索「Ubuntu」
  url: '/read/howto/exploration/'
source_url: '/read/howto/exploration/file-etc-environment.md'
---

## 測試環境

* Xubuntu 16.04 amd64 英文界面

## 探索步驟

執行

``` sh
$ dpkg -S /etc/environment
```

顯示

```
dpkg-query: no path found matching pattern /etc/environment
```

執行

``` sh
$ grep '/etc/environment' /var/lib/dpkg/info/* -R -n
```

顯示

```
/var/lib/dpkg/info/language-selector-common.postinst:53:# Clean up duplicate entries in /etc/environment created by language-selector.
/var/lib/dpkg/info/language-selector-common.postinst:55:   && [ -e /etc/environment ]
/var/lib/dpkg/info/language-selector-common.postinst:62:                match=$(sed -n -e"s/^$var=\"*\([^\"]*\)\"*/\1/p" /etc/environment)
/var/lib/dpkg/info/language-selector-common.postinst:65:                        sed -i -e"/^$var=/d" /etc/environment
/var/lib/dpkg/info/libpam-modules:amd64.postinst:15:if dpkg --compare-versions "$2" lt 0.99.9.0-1 && ! [ -f /etc/environment ]
/var/lib/dpkg/info/libpam-modules:amd64.postinst:17:    touch /etc/environment
/var/lib/dpkg/info/libpam-modules:amd64.postinst:20:# Add PATH to /etc/environment if it's not present there or in
/var/lib/dpkg/info/libpam-modules:amd64.postinst:24:            if ! grep -qs ^PATH= /etc/environment; then
/var/lib/dpkg/info/libpam-modules:amd64.postinst:25:                    echo 'PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"' >> /etc/environment
/var/lib/dpkg/info/libpam-modules:amd64.postinst:26:            elif ! grep -qs "^PATH=.*/usr/local/games" /etc/environment; then
/var/lib/dpkg/info/libpam-modules:amd64.postinst:27:                    sed -i '/^PATH=/ s,:/usr/games,:/usr/games:/usr/local/games,g' /etc/environment
/var/lib/dpkg/info/locales.config:539:DEFAULT_ENVIRONMENT="$(cat /etc/environment /etc/default/locale 2>/dev/null | awk '/^LANG=/ {gsub("\"", ""); sub("LANG=", ""); lang=$0;} END {print lang}')"
```

執行

``` sh
$ cat /var/lib/dpkg/info/libpam-modules\:amd64.postinst
```

可以看到其中有一段如下

```
if dpkg --compare-versions "$2" lt 0.99.9.0-1 && ! [ -f /etc/environment ]
then
        touch /etc/environment
fi

# Add PATH to /etc/environment if it's not present there or in
# /etc/security/pam_env.conf
if [ "$1" = "configure" ] && dpkg --compare-versions "$2" lt 1.1.3-7ubuntu3; then
        if ! grep -qs ^PATH /etc/security/pam_env.conf; then
                if ! grep -qs ^PATH= /etc/environment; then
                        echo 'PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"' >> /etc/environment
                elif ! grep -qs "^PATH=.*/usr/local/games" /etc/environment; then
                        sed -i '/^PATH=/ s,:/usr/games,:/usr/games:/usr/local/games,g' /etc/environment
                fi
        fi
fi
```

執行

``` sh
$ apt-cache showsrc libpam-modules | grep '^Binary:' -B 1
```

顯示

```
Package: pam
Binary: libpam0g, libpam-modules, libpam-modules-bin, libpam-runtime, libpam0g-dev, libpam-cracklib, libpam-doc
```


執行

``` sh
$ apt-get source libpam-modules
```

執行

``` sh
$ grep '/etc/environment' pam-1.1.8/* -R -n
```

顯示

```
pam-1.1.8/ChangeLog-CVS:4823:   /etc/environment as a fatal error when attempting to read it,
pam-1.1.8/debian/libpam-modules.postinst:15:if dpkg --compare-versions "$2" lt 0.99.9.0-1 && ! [ -f /etc/environment ]
pam-1.1.8/debian/libpam-modules.postinst:17:    touch /etc/environment
pam-1.1.8/debian/libpam-modules.postinst:20:# Add PATH to /etc/environment if it's not present there or in
pam-1.1.8/debian/libpam-modules.postinst:24:            if ! grep -qs ^PATH= /etc/environment; then
pam-1.1.8/debian/libpam-modules.postinst:25:                    echo 'PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"' >> /etc/environment
pam-1.1.8/debian/libpam-modules.postinst:26:            elif ! grep -qs "^PATH=.*/usr/local/games" /etc/environment; then
pam-1.1.8/debian/libpam-modules.postinst:27:                    sed -i '/^PATH=/ s,:/usr/games,:/usr/games:/usr/local/games,g' /etc/environment
pam-1.1.8/debian/local/pam_getenv:5:pam_getenv - get environment variables from /etc/environment
pam-1.1.8/debian/local/pam_getenv:13:This tool  will print out the value of I<env_var> from F</etc/environment>.  It will attempt to expand environment variable references in the definition of I<env_var> but will fail if PAM items are expanded.
pam-1.1.8/debian/local/pam_getenv:107:if (open (ENVFILE, "/etc/environment")) {
pam-1.1.8/debian/changelog:12:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's
pam-1.1.8/debian/changelog:93:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's
pam-1.1.8/debian/changelog:178:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's
pam-1.1.8/debian/changelog:248:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's
pam-1.1.8/debian/changelog:322:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's
pam-1.1.8/debian/changelog:376:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's
pam-1.1.8/debian/changelog:451:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's
pam-1.1.8/debian/changelog:537:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's
pam-1.1.8/debian/changelog:599:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's
pam-1.1.8/debian/changelog:675:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's
pam-1.1.8/debian/changelog:796:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's
pam-1.1.8/debian/changelog:876:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's
pam-1.1.8/debian/changelog:934:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's
pam-1.1.8/debian/changelog:1056:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's
pam-1.1.8/debian/changelog:1136:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's
pam-1.1.8/debian/changelog:1207:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's
pam-1.1.8/debian/changelog:1256:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's not
pam-1.1.8/debian/changelog:1303:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's not
pam-1.1.8/debian/changelog:1336:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's not
pam-1.1.8/debian/changelog:1402:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's not
pam-1.1.8/debian/changelog:1478:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's not
pam-1.1.8/debian/changelog:1536:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's not
pam-1.1.8/debian/changelog:1614:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's not
pam-1.1.8/debian/changelog:1677:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's not
pam-1.1.8/debian/changelog:1763:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's not
pam-1.1.8/debian/changelog:1823:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's not
pam-1.1.8/debian/changelog:1918:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's not
pam-1.1.8/debian/changelog:2070:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's not
pam-1.1.8/debian/changelog:2182:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's not
pam-1.1.8/debian/changelog:2221:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's not
pam-1.1.8/debian/changelog:2290:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's not
pam-1.1.8/debian/changelog:2385:  * Create /etc/environment on initial install of libpam-modules (or on
pam-1.1.8/debian/changelog:2436:    default PATH set in /etc/environment as it was pointed out by Colin
pam-1.1.8/debian/changelog:2458:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's not
pam-1.1.8/debian/changelog:2525:    set in /etc/environment (LP: #64064).
pam-1.1.8/debian/changelog:2590:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's not
pam-1.1.8/debian/changelog:2687:    - debian/libpam-modules.postinst: Add PATH to /etc/environment if it's not
pam-1.1.8/debian/changelog:2717:    garbage lines in /etc/environment and log an error, instead of failing
pam-1.1.8/debian/changelog:2968:    - Add PATH to /etc/environment if it's not present there or in
pam-1.1.8/debian/changelog:3135:  * Add PATH to /etc/environment if it's not present there or in
pam-1.1.8/debian/changelog:3162:  * Further regression in pam_env: don't treat a missing /etc/environment
pam-1.1.8/debian/changelog:3175:  * Patch 058:  yes, of course we want to read /etc/environment by
pam-1.1.8/debian/changelog:3216:  * Fix pam_getenv, so that it can read the actual format of /etc/environment
pam-1.1.8/debian/changelog:3239:      /etc/environment using its own syntax rather than the syntax of
pam-1.1.8/debian/changelog:4051:  * modules/pam_env.c: Fixed /etc/environment parsing causing segfaults on
pam-1.1.8/debian/changelog:4064:    syslog message when /etc/environment does not exist.
pam-1.1.8/debian/changelog:4097:    /etc/environment to be compatible with other programs that use it.
pam-1.1.8/debian/changelog:4151:  * Added ability for pam_env to parse /etc/environment and updated
pam-1.1.8/modules/pam_env/pam_env.c:9:#define DEFAULT_ETC_ENVFILE     "/etc/environment"
pam-1.1.8/modules/pam_env/pam_env.8:47:pairs on separate lines (/etc/environment
pam-1.1.8/modules/pam_env/pam_env.8:128:/etc/environment
pam-1.1.8/modules/pam_env/README:15:(/etc/environment by default). You can change the default file to parse, with
pam-1.1.8/modules/pam_env/pam_env.8.xml:63:      (<filename>/etc/environment</filename> by default). You can
pam-1.1.8/modules/pam_env/pam_env.8.xml:214:        <term><filename>/etc/environment</filename></term>
pam-1.1.8/NEWS:276:* pam_env: Support /etc/environment again, but don't treat it as
```

執行

``` sh
$ dpkg -L libpam-modules | grep pam_env
```

顯示

```
/etc/security/pam_env.conf
/lib/x86_64-linux-gnu/security/pam_env.so
/usr/share/man/man8/pam_env.8.gz
/usr/share/man/man5/pam_env.conf.5.gz
```


執行

``` sh
$ dpkg -L libpam-runtime | grep pam_getenv
```

顯示

```
/usr/sbin/pam_getenv
/usr/share/man/man8/pam_getenv.8.gz
```

執行

``` sh
$ whereis pam_getenv
```

顯示

```
pam_getenv: /usr/sbin/pam_getenv /usr/share/man/man8/pam_getenv.8.gz /usr/share/man/man3/pam_getenv.3.gz
```


## Manpage

* man 8 [pam_env](http://manpages.ubuntu.com/manpages/xenial/en/man8/pam_env.8.html)
* man 5 [pam_env.conf](http://manpages.ubuntu.com/manpages/xenial/en/man5/pam_env.conf.5.html)
* man 3 [pam_getenv](http://manpages.ubuntu.com/manpages/xenial/en/man3/pam_getenv.3.html)
* man 8 [pam_getenv](http://manpages.ubuntu.com/manpages/xenial/en/man8/pam_getenv.8.html)


## Package

* [libpam-modules](https://packages.ubuntu.com/xenial/libpam-modules) (Source: [pam](https://packages.ubuntu.com/source/xenial/pam))


## Ubuntu Community Help Wiki

* [EnvironmentVariables](https://help.ubuntu.com/community/EnvironmentVariables)
* [Locale](https://help.ubuntu.com/community/Locale)


## Debian Wiki

* [EnvironmentVariables](https://wiki.debian.org/EnvironmentVariables)
* [Locale](https://wiki.debian.org/Locale)


## 相關討論

* [#6 回覆: ubuntun 14.04, psql 無法使用](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358372#forumpost358372)
