---
layout: page
title: 安裝 Google Chrome，關於 apt-key 的管理
description: >
  Ubuntu環境，安裝 Google Chrome，關於 apt-key 的管理
parent:
  title: 安裝 Google Chrome
  url: /read/case/google-chrome
---

## 原始討論

原始討論「[回覆: 無法取得以下的密鑰 ID 的公鑰： 1397BC53640DB551](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=351866#forumpost351866)」。


## 回覆內容

### 使用「[1397BC53640DB551](https://www.google.com.tw/#q=1397BC53640DB551)」當關鍵字來查詢，

可以查到幾篇「參考文章」，以下是連結。

* [http://ubuntuforums.org/showthread.php?t=2322420]()
* [https://www.reddit.com/r/linux4noobs/comments/4grdo7/an_error_occurred_w_there_is_no_public_key/d2k4ucy](https://www.reddit.com/r/linux4noobs/comments/4grdo7/an_error_occurred_w_there_is_no_public_key/d2k4ucy)
* [http://askubuntu.com/questions/520718/no-public-key-available-while-upgrading-using-update-manager](http://askubuntu.com/questions/520718/no-public-key-available-while-upgrading-using-update-manager)


### 使用「[ubuntu package signing key](https://www.google.com.tw/#q=ubuntu+package+signing+key)」當關鍵字來查詢，

可以查到幾篇「參考文章」，以下是連結。

* [https://www.google.com/linuxrepositories/](https://www.google.com/linuxrepositories/)
* [https://wiki.ubuntu.com/KeySigningParty](https://wiki.ubuntu.com/KeySigningParty)
* [https://en.wikipedia.org/wiki/Web_of_trust](https://en.wikipedia.org/wiki/Web_of_trust)


## 解決方案

### 方法 1

執行

``` sh
$ sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 1397BC53640DB551
```

執行下面指令，觀看有那些key

``` sh
$ sudo apt-key list | grep google -A 2 -B 2
```

顯示

```
pub   1024D/7FAC5991 2007-03-08
uid                  Google, Inc. Linux Package Signing Key <linux-packages-keymaster@google.com>
sub   2048g/C07CB649 2007-03-08

pub   4096R/D38B4796 2016-04-12
uid                  Google Inc. (Linux Packages Signing Authority) <linux-packages-keymaster@google.com>
sub   4096R/640DB551 2016-04-12 [expires: 2019-04-12]

```

測試

``` sh
$ sudo apt-get update
```

步驟到了上面就解決了，下面提供刪除key的指令範例

執行

``` sh
$ sudo apt-key del 7FAC5991
```

執行　

``` sh
$ sudo apt-key del D38B4796
```

把這個key刪除，就可以重現樓主遇到的情況了



### 方法二

``` sh
$ wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
```



### 方法三


把「/etc/apt/sources.list.d/google-chrome.list」移走，
或是把裡面的「deb」和「deb-src」那幾行註解。

這個方法比較不建議，
因為在「sudo apt-get update」就不會知道「Chrome」有新的版本。

不過這也是其中一種解法，
當其他方式都不能解決，
而希望「sudo apt-get update」可以順利進行，就可以使用。


``` sh
$ sudo mv /etc/apt/sources.list.d/google-chrome.list ~/Documents/
```

## 更多參考

* Ubuntu Community Help Wiki / [SecureApt](https://help.ubuntu.com/community/SecureApt)
* Debian Wiki / [SecureApt](https://wiki.debian.org/SecureApt)
* $ man [apt-key](http://manpages.ubuntu.com/manpages/xenial/en/man8/apt-key.8.html)
