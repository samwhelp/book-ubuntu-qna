---
layout: page
title: tar的基本用法 (Archiving)
description: >
  tar的基本用法 (Archiving)
date: 2016-09-07 13:44:45 +0800
parent:
  title: 檔案的打包以及壓縮與解壓縮
  url: /read/case/file-archiving-and-compression
---

## 操作環境

* Xubuntu 16.04 (64位元) 英文界面
* [tar](http://packages.ubuntu.com/xenial/tar) 1.28-2.1

## 前置作業

執行下面指令，產生測試資料

``` sh
cd /tmp
mkdir aa/bb -p
touch aa/bb/files
echo '測試' > aa/README.md
```

執行

``` sh
$ tree aa/
```

顯示

```
aa
├── bb
│   └── files
└── README.md

1 directory, 2 files
```

## manpage

* man 1 [tar](http://manpages.ubuntu.com/manpages/xenial/en/man1/tar.1.html)

### c

```
-c, --create
	  create a new archive
```

### t

```
-t, --list
	  list the contents of an archive
```

### x

```
-x, --extract, --get
	  extract files from an archive
```

### f

```
-f, --file ARCHIVE
	  use archive file or device ARCHIVE
```

### v

```
-v, --verbose
	  verbosely list files processed
```


## 基本用法

* 打包 (-c) (--create)
* 觀看檔案列表 (-t) (--list)
* 解開 (-x) (--extract)

### 基本用法 / 打包

執行

``` sh
$ tar -c -f aa.tar aa
```

說明:

* 「-c」表示打包
* 「-f aa.tar」表示打包後的檔名
* 「aa」表示要打包的檔案(或是資料夾)

打包完成後，

執行下面指令，觀看檔案類型

``` sh
$ file aa.tar
```

顯示

```
aa.tar: POSIX tar archive (GNU)
```

執行下面指令，觀看檔案內容

``` sh
$ cat aa.tar
```

執行

``` sh
$ strings aa.tar
```

### 基本用法 / 觀看檔案列表

執行

``` sh
$ tar -t -f aa.tar
```

顯示

```
aa/
aa/README.md
aa/bb/
aa/bb/files
```

說明:

* 「-t」表示觀看檔案列表
* 「-f aa.tar」表示要觀看的打包檔


### 基本用法 / 解開

執行

``` sh
$ tar -x -f aa.tar
```

說明:

* 「-x」表示解開
* 「-f aa.tar」表示要解開的打包檔

## 加上「-v」選項

> 以上三個用法均可以加上「-v」選項

### 打包

所以原來的

``` sh
$ tar -c -f aa.tar aa
```

可以加上「-v」選項

``` sh
$ tar -c -v -f aa.tar aa
```

執行後就會顯示

```
aa/
aa/README.md
aa/bb/
aa/bb/files
```

### 觀看檔案列表

所以原來的

``` sh
$ tar -t -f aa.tar
```

可以加上「-v」選項

``` sh
$ tar -t -v -f aa.tar
```

執行後就會顯示

```
drwxrwxr-x user/user           0 2016-09-07 15:33 aa/
-rw-rw-r-- user/user           7 2016-09-07 15:33 aa/README.md
drwxrwxr-x user/user           0 2016-09-07 15:33 aa/bb/
-rw-rw-r-- user/user           0 2016-09-07 15:33 aa/bb/files
```

### 解開

所以原來的

``` sh
$ tar -x -f aa.tar
```

可以加上「-v」選項

``` sh
$ tar -x -v -f aa.tar
```

執行後就會顯示

```
aa/
aa/README.md
aa/bb/
aa/bb/files
```

## 選項合成

> 多個選項可以合在一起


### 打包

所以原來的

``` sh
$ tar -c -v -f aa.tar aa
```

可以合在一起 (注意:「f」要放在最後，因為後面要接「aa.tar」)

``` sh
$ tar -cvf aa.tar aa
```

### 觀看檔案列表

所以原來的

``` sh
$ tar -t -v -f aa.tar
```

可以合在一起 (注意:「f」要放在最後，因為後面要接「aa.tar」)

``` sh
$ tar -tvf aa.tar
```

### 解開

所以原來的

``` sh
$ tar -x -v -f aa.tar
```

可以合在一起 (注意:「f」要放在最後，因為後面要接「aa.tar」)

``` sh
$ tar -xvf aa.tar
```


## 省略「-」

> 選項前面的「-」可以省略

### 打包

所以原來的

``` sh
$ tar -cvf aa.tar aa
```

省略「-」就變成 (注意:「f」要放在最後，因為後面要接「aa.tar」)

``` sh
$ tar cvf aa.tar aa
```

### 觀看檔案列表

所以原來的

``` sh
$ tar -tvf aa.tar
```

省略「-」就變成 (注意:「f」要放在最後，因為後面要接「aa.tar」)

``` sh
$ tar tvf aa.tar
```

### 解開

所以原來的

``` sh
$ tar -xvf aa.tar
```

省略「-」就變成 (注意:「f」要放在最後，因為後面要接「aa.tar」)

``` sh
$ tar xvf aa.tar
```

## 「長選項格式」

* 選項前面使用「-」是「短選項格式」，例如「-c」
* 選項前面使用「--」是「長選項格式」，例如「--create」

> 所以上面的「短選項格式」也可以改成「長選項格式」

例如

``` sh
$ tar -c -v -f aa.tar aa
```

可以改成

``` sh
$ tar --create --verbose --file aa.tar aa
```

或是(長選項的格式也可寫成「--file=aa.tar」，中間有一個「=」)

``` sh
$ tar --create --verbose --file=aa.tar aa
```

> 「短選項格式」和「長選項格式」也可以混用

例如

``` sh
$ tar -vf aa.tar aa --create
```

例如

``` sh
$ tar vf aa.tar aa --create
```

例如

``` sh
$ tar vf aa.tar --create aa
```

## 多個檔案路徑參數

> 上面「aa」是「檔案路徑參數」，也可以接多個。

例如

``` sh
$ tar cvf aa.tar aa/README.md aa/bb/files
```

最後接「aa/README.md」和「aa/bb/files」


可以從「$ man [tar](http://manpages.ubuntu.com/manpages/xenial/en/man1/tar.1.html)」看到下面的說明，「檔案路徑參數」指的就是「[pathname ...]」。

```
SYNOPSIS

     tar [-] A --catenate --concatenate | c --create | d --diff --compare |
         --delete | r --append | t --list | --test-label | u --update | x
         --extract --get [options] [pathname ...]

```
