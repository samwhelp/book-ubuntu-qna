---
layout: page
title: 探索套件「cuda-repo-ubuntu1404」
---

## 原始討論

原始討論「[回覆: unmet dependencies && broken packages](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=352462#forumpost352462)」。

## 回覆內容

# deb (network)

## 前置作業

準備工作環境資料夾

``` sh
mkdir ~/Downloads/cuda_network -p
cd ~/Downloads/cuda_network
```


## 下載檔案

下載「[cuda-repo-ubuntu1404_7.5-18_amd64.deb](http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/cuda-repo-ubuntu1404_7.5-18_amd64.deb)」

``` sh
$ wget -c http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/cuda-repo-ubuntu1404_7.5-18_amd64.deb
```


## 檔案訊息

執行

``` sh
$ dpkg -I cuda-repo-ubuntu1404_7.5-18_amd64.deb
```

顯示

```
 new debian package, version 2.0.
 size 2126 bytes: control archive=553 bytes.
      34 bytes,     1 lines      conffiles            
     290 bytes,    12 lines      control              
     220 bytes,     4 lines   *  postinst             #!/bin/sh
      63 bytes,     4 lines   *  postrm               #!/bin/sh
 Package: cuda-repo-ubuntu1404
 Version: 7.5-18
 Maintainer: cudatools <cudatools@nvidia.com>
 Architecture: amd64
 Section: devel
 Priority: optional
 Installed-Size: 24
 Description: CUDA repo configuration files.
  Contains configuration files needed to set up access to the
  CUDA repository.
```


執行

``` sh
$ dpkg -f cuda-repo-ubuntu1404_7.5-18_amd64.deb
```

顯示

```
Package: cuda-repo-ubuntu1404
Version: 7.5-18
Maintainer: cudatools <cudatools@nvidia.com>
Architecture: amd64
Section: devel
Priority: optional
Installed-Size: 24
Description: CUDA repo configuration files.
 Contains configuration files needed to set up access to the
 CUDA repository.
```

跟上一個指令顯示出來的對照，少了一些訊息。

執行

``` sh
$ dpkg -c cuda-repo-ubuntu1404_7.5-18_amd64.deb
```

顯示

```
drwxr-xr-x root/root         0 2016-01-29 08:35 ./
drwxr-xr-x root/root         0 2016-01-29 08:35 ./etc/
drwxr-xr-x root/root         0 2016-01-29 08:35 ./etc/apt/
drwxr-xr-x root/root         0 2016-01-29 08:35 ./etc/apt/sources.list.d/
-rw-r--r-- root/root        80 2016-01-29 08:35 ./etc/apt/sources.list.d/cuda.list
drwxr-xr-x root/root         0 2016-01-29 08:35 ./usr/
drwxr-xr-x root/root         0 2016-01-29 08:35 ./usr/share/
drwxr-xr-x root/root         0 2016-01-29 08:35 ./usr/share/doc/
drwxr-xr-x root/root         0 2016-01-29 08:35 ./usr/share/doc/cuda-repo-ubuntu1404/
-rw-r--r-- root/root        88 2016-01-29 08:35 ./usr/share/doc/cuda-repo-ubuntu1404/copyright
-rw-r--r-- root/root       164 2016-01-29 08:35 ./usr/share/doc/cuda-repo-ubuntu1404/changelog.Debian.gz
drwxr-xr-x root/root         0 2016-01-29 08:35 ./usr/share/lintian/
drwxr-xr-x root/root         0 2016-01-29 08:35 ./usr/share/lintian/overrides/
-rw-r--r-- root/root       127 2016-01-29 08:35 ./usr/share/lintian/overrides/cuda-repo-ubuntu1404
```

## 解開套件

執行

``` sh
$ dpkg -x cuda-repo-ubuntu1404_7.5-18_amd64.deb cuda-repo-ubuntu1404
```


會將「cuda-repo-ubuntu1404_7.5-18_amd64.deb」解開到「cuda-repo-ubuntu1404」這個資料夾

觀看「cuda-repo-ubuntu1404」這個資料夾結構

執行

``` sh
$ tree cuda-repo-ubuntu1404
```

顯示

```
cuda-repo-ubuntu1404
├── etc
│   └── apt
│       └── sources.list.d
│           └── cuda.list
└── usr
    └── share
        ├── doc
        │   └── cuda-repo-ubuntu1404
        │       ├── changelog.Debian.gz
        │       └── copyright
        └── lintian
            └── overrides
                └── cuda-repo-ubuntu1404

9 directories, 4 files
```

可以對照上面「dpkg -c cuda-repo-ubuntu1404_7.5-18_amd64.deb」顯示出來的結果，只是這裡顯示的方式是「樹狀(tree)」。


觀看「cuda-repo-ubuntu1404/etc/apt/sources.list.d/cuda.list」的內容

執行

``` sh
$ cat cuda-repo-ubuntu1404/etc/apt/sources.list.d/cuda.list
```

顯示

```
deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64 /
```


解開「Control檔」和「[MaintainerScripts](https://wiki.debian.org/MaintainerScripts)」。

執行

``` sh
$ dpkg -e cuda-repo-ubuntu1404_7.5-18_amd64.deb
```

會產生一個資料夾「DEBIAN」，裡面放的是「Control檔」和「[MaintainerScripts](https://wiki.debian.org/MaintainerScripts)」

也可以指定解開到某個資料夾，上面的指令可以改成「dpkg -e cuda-repo-ubuntu1404_7.5-18_amd64.deb cuda-repo-ubuntu1404/debian」

觀看「DEBIAN」資料夾結構

執行

``` sh
$ tree DEBIAN
```

顯示

```
DEBIAN/
├── conffiles
├── control
├── postinst
└── postrm

0 directories, 4 files
```

或是執行

``` sh
$ ls DEBIAN/ -1
```


顯示

```
conffiles
control
postinst
postrm
```


執行

``` sh
$ cat DEBIAN/conffiles
```

顯示

```
/etc/apt/sources.list.d/cuda.list
```


執行

``` sh
$ cat DEBIAN/control
```

顯示

```
Package: cuda-repo-ubuntu1404
Version: 7.5-18
Maintainer: cudatools <cudatools@nvidia.com>
Architecture: amd64
Section: devel
Priority: optional
Installed-Size: 24
Description: CUDA repo configuration files.
 Contains configuration files needed to set up access to the
 CUDA repository.
```


可以對照上面「dpkg -I」和「dpkg -f」顯示出來的結果。

執行

``` sh
$ cat DEBIAN/postinst
```

顯示

```
#!/bin/sh
set -e

wget -q -O - http://developer.download.nvidia.com/compute/cuda/repos/GPGKEY | apt-key add - || echo "Failed to add GPGKEY at http://developer.download.nvidia.com/compute/cuda/repos/GPGKEY to apt keys."
```

執行

``` sh
$ cat DEBIAN/postrm
```

顯示

```
#!/bin/sh
set -e

apt-key remove cudatools >/dev/null 2>&1 ||:
```

關於「apt-key」的使用方法，可以參考這篇「[討論](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=351866#forumpost351866)」。


## 小結

從以上的分析看來，

安裝「cuda-repo-ubuntu1404_7.5-18_amd64.deb」這個套件，

也就是執行「sudo dpkg -i cuda-repo-ubuntu1404_7.5-18_amd64.deb」，

只是幫你把安裝「cuda」的「套件庫來源」。

也就是會在「/etc/apt/sources.list.d/」多放一個檔案「cuda.list」，檔案內容紀錄的就是套件庫來源網址。

然後還會執行「DEBIAN/postinst」，也就是把「apt-key」加進去。

所以安裝完「cuda-repo-ubuntu1404_7.5-18_amd64.deb」這個套件，

要再多執行一個指令「sudo apt-get update」，更新套件庫的套件資訊。

## 實際安裝

執行

``` sh
$ sudo dpkg -i cuda-repo-ubuntu1404_7.5-18_amd64.deb
```

安裝完畢後，

要再執行一個指令「sudo apt-get update」，更新套件庫的套件資訊。

``` sh
$ sudo apt-get update
```

可以觀察「/var/lib/apt/lists/」這個資料夾裡的檔案

安裝好「cuda-repo-ubuntu1404_7.5-18_amd64.deb」這個套件，

就可以執行下面的指令

``` sh
$ dpkg -L cuda-repo-ubuntu1404
```


顯示

```
/.
/etc
/etc/apt
/etc/apt/sources.list.d
/etc/apt/sources.list.d/cuda.list
/usr
/usr/share
/usr/share/doc
/usr/share/doc/cuda-repo-ubuntu1404
/usr/share/doc/cuda-repo-ubuntu1404/copyright
/usr/share/doc/cuda-repo-ubuntu1404/changelog.Debian.gz
/usr/share/lintian
/usr/share/lintian/overrides
/usr/share/lintian/overrides/cuda-repo-ubuntu1404
```

上面這個列表，表示「cuda-repo-ubuntu1404_7.5-18_amd64.deb」這個套件，安裝了那些檔案在系統上。

可以對照上面的「dpkg -c cuda-repo-ubuntu1404_7.5-18_amd64.deb」得到的列表。

或是對照上面的「dpkg -x cuda-repo-ubuntu1404_7.5-18_amd64.deb cuda-repo-ubuntu1404」然後再用「tree cuda-repo-ubuntu1404」得到的結果。


執行

``` sh
$ ls /var/lib/dpkg/info/cuda-repo-ubuntu1404.*
```

顯示

```
/var/lib/dpkg/info/cuda-repo-ubuntu1404.conffiles
/var/lib/dpkg/info/cuda-repo-ubuntu1404.list
/var/lib/dpkg/info/cuda-repo-ubuntu1404.md5sums
/var/lib/dpkg/info/cuda-repo-ubuntu1404.postinst
/var/lib/dpkg/info/cuda-repo-ubuntu1404.postrm
```

可以對照剛剛使用「`dpkg -e cuda-repo-ubuntu1404_7.5-18_amd64.deb`」解開到「DEBIAN」這個資料夾的檔案

* /var/lib/dpkg/info/cuda-repo-ubuntu1404.conffiles      <-->      DEBIAN/conffiles  
* /var/lib/dpkg/info/cuda-repo-ubuntu1404.postinst       <-->      DEBIAN/postinst
* /var/lib/dpkg/info/cuda-repo-ubuntu1404.postrm         <-->      DEBIAN/postrm
* /var/lib/dpkg/info/cuda-repo-ubuntu1404.list           <-->      $ dpkg -L cuda-repo-ubuntu1404



「DEBIAN/control」則可以在下面幾個地方，找到類似的蹤跡，

* 「$ dpkg -s cuda-repo-ubuntu1404」
* 「/var/lib/dpkg/status」
* 「/var/lib/dpkg/available」
* 「$ apt-cache show cuda-repo-ubuntu1404」
* 「/var/lib/apt/lists/developer.download.nvidia.com_compute_cuda_repos_ubuntu1404_x86%5f64_Packages 」
