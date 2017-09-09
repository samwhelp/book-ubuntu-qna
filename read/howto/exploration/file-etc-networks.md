---
layout: page
title: 關於「/etc/networks」
description: >
  關於「/etc/networks」
parent:
  title: 如何探索「Ubuntu」
  url: '/read/howto/exploration/'
source_url: '/read/howto/exploration/file-etc-networks.md'
---

## 測試環境

* Xubuntu 16.04 amd64 英文界面

## 探索步驟

執行

``` sh
$ dpkg -S /etc/networks
```

顯示

```
dpkg-query: no path found matching pattern /etc/networks
```

執行

``` sh
$ grep '/etc/networks' /var/lib/dpkg/info/* -R -n
```

顯示

```
/var/lib/dpkg/info/base-files.postinst:54:  install_from_default networks      /etc/networks
/var/lib/dpkg/info/netbase.postinst:16:  if [ -e /etc/networks ]; then return 0; fi
/var/lib/dpkg/info/netbase.postinst:18:  cat > /etc/networks <<-EOF
/var/lib/dpkg/info/netbase.postrm:13:  if [ -e /etc/networks ]; then
/var/lib/dpkg/info/netbase.postrm:14:  md5="$(md5sum /etc/networks | sed -e 's/ .*//')"
/var/lib/dpkg/info/netbase.postrm:16:    d013c6de91b961753d4ba901347aa6c8) rm /etc/networks ;;
/var/lib/dpkg/info/resolvconf.templates:286: Até /etc/networks/interfaces ter sido editado e as interfaces afectadas re-iniciadas, os endereços dos servidores de nomes não serão incluídos no ficheiro de configuração do resolver gerado dinamicamente.
```

執行

``` sh
$ less /var/lib/dpkg/info/base-files.postinst
```

執行

``` sh
$ grep 'networks' /var/lib/dpkg/info/base-files.postinst -n
```

顯示

```
54:  install_from_default networks      /etc/networks
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
$ dpkg -L base-files | grep networks
```

顯示

```
/usr/share/base-files/networks
```

觀看「/usr/share/base-files/networks」

``` sh
$ cat /usr/share/base-files/networks
```

執行

``` sh
$ whatis networks
```

顯示

```
networks (5)         - network name information
```

執行

``` sh
$ whereis networks
```

顯示

```
networks: /etc/networks /usr/share/man/man5/networks.5.gz
```


## Manpage

* man 5 [networks](http://manpages.ubuntu.com/manpages/xenial/en/man5/networks.5.html)

## Package

* [base-files](https://packages.ubuntu.com/xenial/base-files) ([Source:  base-files](https://packages.ubuntu.com/source/xenial/base-files))

## Debian Wiki

* [Network](https://wiki.debian.org/Network)


## 相關討論

* [如何查詢某個檔案，屬於哪個套件](http://samwhelp.github.io/book-ubuntu-basic-skill/book/content/package/how-to-find-out-what-package-a-file-belongs-to.html)
