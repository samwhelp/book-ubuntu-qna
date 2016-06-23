---
layout: page
title: 如何使用下指令的方式啟動「額外驅動程式」設定視窗
description: >
  Ubuntu環境，如何使用下指令的方式啟動「額外驅動程式」設定視窗。
parent:
  title: 透過安裝驅動程式套件的方式，來安裝驅動程式
  url: /read/case/driver/install-driver-package
---

## 原始討論

* 原始討論「[回覆: linux mint 安裝顯示卡問題](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=353058#forumpost353058)」


## 回覆內容

若找不到「系統設定值 / 軟體和更新 / 額外驅動程式」

可以直接執行下面的指令(方法紀錄[在這](http://samwhelp.github.io/book-ubuntu-basic-skill/book/content/driver/software-properties-gtk.html))

``` sh
$ software-properties-gtk --open-tab=4
```
