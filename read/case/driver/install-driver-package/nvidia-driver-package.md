---
layout: page
title: 如何找出「Nvidia驅動程式套件」
description: >
  Ubuntu環境，如何找出「Nvidia驅動程式套件」。
parent:
  title: 透過安裝驅動程式套件的方式，來安裝驅動程式
  url: /read/case/driver/install-driver-package
---


## 原始討論

* 原始討論「[回覆: linux mint 安裝顯示卡問題](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=353072#forumpost353072)」。
* 原始討論「[回覆: [分享]ubuntu 安裝 nvidia 驅動心得](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=327392#forumpost327392)」

## 回覆內容


## 方法一

參考『[如何使用「ubuntu-drivers」這個指令，來輔助安裝驅動程式套件](/book-ubuntu-qna/read/case/driver/install-driver-package/ubuntu-drivers.html)』這篇的說明。


## 方法二

執行

``` sh
$ apt-cache search 'nvidia-[0-9]'
```

顯示

```
nvidia-304 - NVIDIA legacy binary driver - version 304.131
nvidia-304-dev - NVIDIA binary Xorg driver development files
nvidia-304-updates - NVIDIA legacy binary driver - version 304.131
nvidia-304-updates-dev - NVIDIA binary Xorg driver development files
nvidia-331 - Transitional package for nvidia-331
nvidia-331-dev - Transitional package for nvidia-340-dev
nvidia-331-updates - Transitional package for nvidia-340
nvidia-331-updates-dev - Transitional package for nvidia-340-dev
nvidia-331-updates-uvm - Transitional package for nvidia-340
nvidia-331-uvm - Transitional package for nvidia-340
nvidia-340 - NVIDIA binary driver - version 340.96
nvidia-340-dev - NVIDIA binary Xorg driver development files
nvidia-340-updates - Transitional package for nvidia-340
nvidia-340-updates-dev - Transitional package for nvidia-340-dev
nvidia-340-updates-uvm - Transitional package for nvidia-340-updates
nvidia-340-uvm - Transitional package for nvidia-340
nvidia-346 - Transitional package for nvidia-346
nvidia-346-dev - Transitional package for nvidia-352-dev
nvidia-346-updates - Transitional package for nvidia-346-updates
nvidia-346-updates-dev - Transitional package for nvidia-352-updates-dev
nvidia-352 - Transitional package for nvidia-361
nvidia-352-dev - Transitional package for nvidia-361-dev
nvidia-352-updates - Transitional package for nvidia-361
nvidia-352-updates-dev - Transitional package for nvidia-361-dev
nvidia-361 - NVIDIA binary driver - version 361.42
nvidia-361-dev - NVIDIA binary Xorg driver development files
nvidia-361-updates - Transitional package for nvidia-361
nvidia-361-updates-dev - Transitional package for nvidia-361-dev
```

## 方法三

在「Terminal」輸入

``` sh
sudo apt-get install nvidia-
```

然後此時按下「tab」
