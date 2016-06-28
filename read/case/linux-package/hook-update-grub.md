---
layout: page
title: hook update-grub
description: >
  hook update-grub。
parent:
  title: Linux Package
  url: /read/case/linux-package
---


先執行

``` sh
$ sudo update-grub
```

顯示

```
Generating grub configuration file ...
Warning: Setting GRUB_TIMEOUT to a non-zero value when GRUB_HIDDEN_TIMEOUT is set is no longer supported.
Found linux image: /boot/vmlinuz-4.4.0-28-generic
Found initrd image: /boot/initrd.img-4.4.0-28-generic
Found linux image: /boot/vmlinuz-4.4.0-21-generic
Found initrd image: /boot/initrd.img-4.4.0-21-generic
Found memtest86+ image: /boot/memtest86+.elf
Found memtest86+ image: /boot/memtest86+.bin
done
```

然後延續上一篇「[update linux-generic](/book-ubuntu-qna/read/case/linux-package/update-linux-generic.html)」觀察到的訊息。

```
...略...

Setting up linux-image-4.4.0-28-generic (4.4.0-28.47) ...
Running depmod.
update-initramfs: deferring update (hook will be called later)
Examining /etc/kernel/postinst.d.
run-parts: executing /etc/kernel/postinst.d/apt-auto-removal 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/initramfs-tools 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
update-initramfs: Generating /boot/initrd.img-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/pm-utils 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/unattended-upgrades 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/update-notifier 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/zz-update-grub 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
Generating grub configuration file ...
Warning: Setting GRUB_TIMEOUT to a non-zero value when GRUB_HIDDEN_TIMEOUT is set is no longer supported.
Found linux image: /boot/vmlinuz-4.4.0-28-generic
Found initrd image: /boot/initrd.img-4.4.0-28-generic
Found linux image: /boot/vmlinuz-4.4.0-21-generic
Found initrd image: /boot/initrd.img-4.4.0-21-generic
Found memtest86+ image: /boot/memtest86+.elf
Found memtest86+ image: /boot/memtest86+.bin
done

...略...
```

觀看「/var/lib/dpkg/info/linux-image-4.4.0-28-generic.postinst」這個「[Maintainer Script](https://wiki.debian.org/MaintainerScripts)」，查詢「postinst.d」

``` sh
$ less /var/lib/dpkg/info/linux-image-4.4.0-28-generic.postinst
```

可以找到一段perl程式碼

```
#! /usr/bin/perl

# ...略...

# Ignore all invocations except when called on to configure.
exit 0 unless $ARGV[0] =~ /configure/;

# ...略...

if (-d "/etc/kernel/postinst.d") {
  print STDERR "Examining /etc/kernel/postinst.d.\n";
  system ("run-parts --verbose --exit-on-error --arg=$version " .
          "--arg=$realimageloc$kimage-$version " .
          "/etc/kernel/postinst.d") &&
            die "Failed to process /etc/kernel/postinst.d";
}

if (-d "/etc/kernel/postinst.d/$version") {
  print STDERR "Examining /etc/kernel/postinst.d/$version.\n";
  system ("run-parts --verbose --exit-on-error --arg=$version " .
          "--arg=$realimageloc$kimage-$version " .
          "/etc/kernel/postinst.d/$version") &&
            die "Failed to process /etc/kernel/postinst.d/$version";
}

# ...略...
```

從一開始的訊息「Examining /etc/kernel/postinst.d.」，

然後透過「[run-parts](http://manpages.ubuntu.com/manpages/xenial/en/man8/run-parts.8.html)」這個指令，執行「/etc/kernel/postinst.d」這個資料夾裡面的檔案。

執行

``` sh
$ ls /etc/kernel/postinst.d/ -l
```

顯示

```
total 20
-rwxr-xr-x 1 root root 2704 Apr 14 15:45 apt-auto-removal
-rwxr-xr-x 1 root root  858 Feb 17  2014 initramfs-tools
-rwxr-xr-x 1 root root  196 Feb 15 17:26 pm-utils
-rwxr-xr-x 1 root root   73 Feb 19 06:19 unattended-upgrades
lrwxrwxrwx 1 root root   49 Apr 22 13:38 update-notifier -> /usr/share/update-notifier/notify-reboot-required
-rwxr-xr-x 1 root root  646 Mar 16 02:08 zz-update-grub
```

執行

``` sh
dpkg -S /etc/kernel/postinst.d/
```

顯示

```
update-notifier-common, unattended-upgrades, pm-utils, initramfs-tools, grub-pc, apt: /etc/kernel/postinst.d
```

執行

``` sh
$ dpkg -S /etc/kernel/postinst.d/zz-update-grub
```

顯示

```
grub-pc: /etc/kernel/postinst.d/zz-update-grub
```

執行

``` sh
$ cat /etc/kernel/postinst.d/zz-update-grub
```

顯示

```
#! /bin/sh
set -e

which update-grub >/dev/null 2>&1 || exit 0

if type systemd-detect-virt >/dev/null 2>&1 &&
   systemd-detect-virt --quiet --container; then
        exit 0
fi

set -- $DEB_MAINT_PARAMS
mode="${1#\'}"
mode="${mode%\'}"
case $0:$mode in
    # Only run on postinst configure and postrm remove, to avoid wasting
    # time by calling update-grub multiple times on upgrade and removal.
    # Also run if we have no DEB_MAINT_PARAMS, in order to work with old
    # kernel packages.
    */postinst.d/*:|*/postinst.d/*:configure|*/postrm.d/*:|*/postrm.d/*:remove)
        if [ -e /boot/grub/grub.cfg ]; then
                exec update-grub
        fi
        ;;
esac

exit 0

```

延續上一篇「[update linux-generic](/book-ubuntu-qna/read/case/linux-package/update-linux-generic.html)」觀察到的另一段訊息。

```
Setting up linux-image-extra-4.4.0-28-generic (4.4.0-28.47) ...
run-parts: executing /etc/kernel/postinst.d/apt-auto-removal 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/initramfs-tools 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
update-initramfs: Generating /boot/initrd.img-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/pm-utils 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/unattended-upgrades 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/update-notifier 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/zz-update-grub 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
Generating grub configuration file ...
Warning: Setting GRUB_TIMEOUT to a non-zero value when GRUB_HIDDEN_TIMEOUT is set is no longer supported.
Found linux image: /boot/vmlinuz-4.4.0-28-generic
Found initrd image: /boot/initrd.img-4.4.0-28-generic
Found linux image: /boot/vmlinuz-4.4.0-21-generic
Found initrd image: /boot/initrd.img-4.4.0-21-generic
Found memtest86+ image: /boot/memtest86+.elf
Found memtest86+ image: /boot/memtest86+.bin
done
```

觀看「/var/lib/dpkg/info/linux-image-extra-4.4.0-28-generic.postinst」這個這個「[Maintainer Script](https://wiki.debian.org/MaintainerScripts)」，

執行

``` sh
$ less /var/lib/dpkg/info/linux-image-extra-4.4.0-28-generic.postinst
```

顯示

```
#!/bin/sh
set -e

case "$0::$1" in
*.postinst::configure|*.postrm::remove)
        depmod -a -F /boot/System.map-4.4.0-28-generic 4.4.0-28-generic || true
        for dir in "/etc/kernel/postinst.d" "/etc/kernel/postinst.d/4.4.0-28-generic"
        do
                if [ -d "$dir" ]; then
                        run-parts --verbose --exit-on-error --arg="4.4.0-28-generic" --arg="/boot/vmlinuz-4.4.0-28-generic" "$dir"
                fi
        done
        ;;
esac
```

概念上跟上面的差不多，就不再贅述了。

## 測試

註: 以下指令，我尚未確認是否會有什麼副作用，所以請在測試系統測試。

### linux-image-4.4.0-28-generic

執行

``` sh
$ sudo /var/lib/dpkg/info/linux-image-4.4.0-28-generic.postinst configure
```

或是執行

``` sh
$ sudo dpkg-reconfigure linux-image-4.4.0-28-generic
```

顯示

```
Running depmod.
update-initramfs: Generating /boot/initrd.img-4.4.0-28-generic
initrd.img(/boot/initrd.img-4.4.0-28-generic
) points to /boot/initrd.img-4.4.0-28-generic
 (/boot/initrd.img-4.4.0-28-generic) -- doing nothing at /var/lib/dpkg/info/linux-image-4.4.0-28-generic.postinst line 491.
vmlinuz(/boot/vmlinuz-4.4.0-28-generic
) points to /boot/vmlinuz-4.4.0-28-generic
 (/boot/vmlinuz-4.4.0-28-generic) -- doing nothing at /var/lib/dpkg/info/linux-image-4.4.0-28-generic.postinst line 491.
Examining /etc/kernel/postinst.d.
run-parts: executing /etc/kernel/postinst.d/apt-auto-removal 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/initramfs-tools 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
update-initramfs: Generating /boot/initrd.img-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/pm-utils 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/unattended-upgrades 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/update-notifier 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/zz-update-grub 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
Generating grub configuration file ...
Warning: Setting GRUB_TIMEOUT to a non-zero value when GRUB_HIDDEN_TIMEOUT is set is no longer supported.
Found linux image: /boot/vmlinuz-4.4.0-28-generic
Found initrd image: /boot/initrd.img-4.4.0-28-generic
Found linux image: /boot/vmlinuz-4.4.0-21-generic
Found initrd image: /boot/initrd.img-4.4.0-21-generic
Found memtest86+ image: /boot/memtest86+.elf
Found memtest86+ image: /boot/memtest86+.bin
done
```

### linux-image-extra-4.4.0-28-generic

執行

``` sh
$ sudo /var/lib/dpkg/info/linux-image-extra-4.4.0-28-generic.postinst configure
```

或是執行

``` sh
$ sudo dpkg-reconfigure linux-image-extra-4.4.0-28-generic
```

顯示

```
run-parts: executing /etc/kernel/postinst.d/apt-auto-removal 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/initramfs-tools 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
update-initramfs: Generating /boot/initrd.img-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/pm-utils 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/unattended-upgrades 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/update-notifier 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
run-parts: executing /etc/kernel/postinst.d/zz-update-grub 4.4.0-28-generic /boot/vmlinuz-4.4.0-28-generic
Generating grub configuration file ...
Warning: Setting GRUB_TIMEOUT to a non-zero value when GRUB_HIDDEN_TIMEOUT is set is no longer supported.
Found linux image: /boot/vmlinuz-4.4.0-28-generic
Found initrd image: /boot/initrd.img-4.4.0-28-generic
Found linux image: /boot/vmlinuz-4.4.0-21-generic
Found initrd image: /boot/initrd.img-4.4.0-21-generic
Found memtest86+ image: /boot/memtest86+.elf
Found memtest86+ image: /boot/memtest86+.bin
done
```

## manpage

* man 8 [run-parts](http://manpages.ubuntu.com/manpages/xenial/en/man8/run-parts.8.html)
* man 8 [dpkg-reconfigure](http://manpages.ubuntu.com/manpages/xenial/en/man8/dpkg-reconfigure.8.html)

## package

* [linux-generic](http://packages.ubuntu.com/xenial/linux-generic)
* [linux-image-generic](http://packages.ubuntu.com/xenial/linux-image-generic)
* [linux-image-4.4.0-28-generic](http://packages.ubuntu.com/xenial/linux-image-4.4.0-28-generic)
* [linux-image-4.4.0-28-generic](http://packages.ubuntu.com/xenial/linux-image-4.4.0-28-generic)
* [linux-image-extra-4.4.0-28-generic](http://packages.ubuntu.com/xenial/linux-image-extra-4.4.0-28-generic)

## concept

* Debian Wiki / [MaintainerScripts](https://wiki.debian.org/MaintainerScripts)
* Ubuntu Community Help Wiki / [MetaPackages](https://help.ubuntu.com/community/MetaPackages)
