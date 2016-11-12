---
layout: page
title: 在lightdm，如何指定顯示字型
description: >
  Ubuntu環境，在lightdm，如何指定顯示字型。
parent:
  title: 程式如何設定字型
  url: '/read/howto/configure-font/'
source_url: '/read/howto/configure-font/lightdm/change-font.md'
---


## 相關討論

* 登入畫面 輸入密碼處 中文部分出現方格
* [回覆: 關於Calligra Words的內文編輯區的字級問題。](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=347904#forumpost347904)


## 測試環境

* Xubuntu 16.04.1 64位元 繁體中文


## 找尋設定檔

執行

``` sh
$ dpkg -L lightdm-gtk-greeter | grep etc
```

顯示

``` sh
/etc
/etc/lightdm
/etc/lightdm/lightdm-gtk-greeter.conf
```

執行下面指令，觀看「/etc/lightdm/lightdm-gtk-greeter.conf」的內容

``` sh
$ less /etc/lightdm/lightdm-gtk-greeter.conf
```

可以看到

```
# LightDM GTK+ Configuration
# Available configuration options listed below.

...略...

# Fonts:
#  font-name = Font to use
#  xft-antialias = false|true  Whether to antialias Xft fonts
#  xft-dpi = Resolution for Xft in dots per inch (e.g. 96)
#  xft-hintstyle = none|slight|medium|hintfull  What degree of hinting to use
#  xft-rgba = none|rgb|bgr|vrgb|vbgr  Type of subpixel antialiasing

...略...

[greeter]
#background=
#user-background=
#theme-name=
#icon-theme-name=
#font-name=
#xft-antialias=
#xft-dpi=
#xft-hintstyle=
#xft-rgba=
#indicators=
#clock-format=
#keyboard=
#reader=
#position=
#screensaver-timeout=

```

可以看到其中一行「#font-name=」，
也就是有「font-name」這個參數可以設定。

為了要測試的結果容易區辨，我們來找「楷體」來測試。

執行

``` sh
$ fc-list | grep TW
```

顯示

```
/usr/share/fonts/truetype/arphic/uming.ttc: AR PL UMing TW MBE:style=Light
/usr/share/fonts/truetype/arphic/ukai.ttc: AR PL UKai TW:style=Book
/usr/share/fonts/truetype/arphic/ukai.ttc: AR PL UKai TW MBE:style=Book
/usr/share/fonts/truetype/arphic/uming.ttc: AR PL UMing TW:style=Light
```

所以我們選擇「AR PL UKai TW」這個來測試。

所以將剛剛「/etc/lightdm/lightdm-gtk-greeter.conf」這個檔案

原來「#font-name=」這一行，

改成「font-name=AR PL UKai TW」。

然後登出，就可以看到顯示的字型，有變化了。

再依照剛剛的確認方式，來確認。


### 列舉和「lightdm」相關的「Process」

執行

``` ps
$ ps aux | grep lightdm
```

顯示

```
root      1809  0.0  0.7 292196  7316 ?        SLsl 11:50   0:00 /usr/sbin/lightdm
root      6149  0.4  4.8 287472 49088 tty7     Ss+  12:27   0:00 /usr/lib/xorg/Xorg -core :0 -seat seat0 -auth /var/run/lightdm/root/:0 -nolisten tcp vt7 -novtswitch
root      6158  0.0  0.5 226172  6008 ?        Sl   12:27   0:00 lightdm --session-child 15 18
lightdm   6161  0.0  0.4  45248  4540 ?        Ss   12:27   0:00 /lib/systemd/systemd --user
lightdm   6164  0.0  0.1 145420  1848 ?        S    12:27   0:00 (sd-pam)
lightdm   6174  0.0  0.0   4508   700 ?        Ss   12:27   0:00 /bin/sh /usr/lib/lightdm/lightdm-greeter-session /usr/sbin/lightdm-gtk-greeter
lightdm   6180  2.2  8.8 598512 89892 ?        Sl   12:27   0:03 /usr/sbin/lightdm-gtk-greeter
lightdm   6190  0.0  0.3  45012  3792 ?        S    12:27   0:00 upstart --user --startup-event indicator-services-start
root      6322  0.0  0.4  82704  4916 ?        S    12:27   0:00 lightdm --session-child 9 18
user      6530  0.0  0.0  21740   924 tty1     S+   12:29   0:00 grep --color=auto lightdm
```


### 找到「/usr/sbin/lightdm-gtk-greeter」

可以找到下面這一個「Process」，其「Process ID」是「6180」。

``` sh
lightdm   6180  2.2  8.8 598512 89892 ?        Sl   12:27   0:03 /usr/sbin/lightdm-gtk-greeter
```

### 使用「lsof -p」觀看「Process」開啟了那些檔案

根據上面找到的「6180」這個「Process ID」。

執行

``` sh
sudo lsof -p 6180 | grep font
```

顯示

```
lightdm-g 6180 lightdm  mem       REG                8,1 17151049 2888674 /usr/share/fonts/truetype/arphic/ukai.ttc
lightdm-g 6180 lightdm  mem       REG                8,1    41080  524377 /var/cache/fontconfig/945677eb7aeaf62f1d50efc3fb3ec7d8-le64.cache-6
lightdm-g 6180 lightdm  mem       REG                8,1    20584  524359 /var/cache/fontconfig/2cd17615ca594fa2959ae173292e504c-le64.cache-6
lightdm-g 6180 lightdm  mem       REG                8,1   273832 2238002 /usr/lib/x86_64-linux-gnu/libfontconfig.so.1.9.0
lightdm-g 6180 lightdm  mem       REG                8,1     3416  524356 /var/cache/fontconfig/0d8c3b2ac0904cb8a57a757ad11a4a08-le64.cache-6
lightdm-g 6180 lightdm  mem       REG                8,1    84432  524353 /var/cache/fontconfig/04aabc0a78ac019cf9454389977116d2-le64.cache-6
lightdm-g 6180 lightdm  mem       REG                8,1     3144  524358 /var/cache/fontconfig/1ac9eb803944fde146138c791f5cc56a-le64.cache-6
lightdm-g 6180 lightdm  mem       REG                8,1    12392  524363 /var/cache/fontconfig/385c0604a188198f04d133e54aba7fe7-le64.cache-6
lightdm-g 6180 lightdm  mem       REG                8,1     1632  524390 /var/cache/fontconfig/dc05db6664285cc2f12bf69c139ae4c3-le64.cache-6
lightdm-g 6180 lightdm  mem       REG                8,1     8640  524373 /var/cache/fontconfig/767a8244fc0220cfb567a839d0392e0b-le64.cache-6
lightdm-g 6180 lightdm  mem       REG                8,1     2320  524364 /var/cache/fontconfig/4794a0821666d79190d59a36cb4f44b5-le64.cache-6
lightdm-g 6180 lightdm  mem       REG                8,1   157248  524354 /var/cache/fontconfig/0bd3dc0958fa2205aaaa8ebb13e2872b-le64.cache-6
lightdm-g 6180 lightdm  mem       REG                8,1    17256  524376 /var/cache/fontconfig/8801497958630a81b71ace7c5f9b32a8-le64.cache-6
lightdm-g 6180 lightdm  mem       REG                8,1     1800  524383 /var/cache/fontconfig/bab58bb527bb656aaa9f116d68a48d89-le64.cache-6
lightdm-g 6180 lightdm  mem       REG                8,1    25168  524360 /var/cache/fontconfig/3047814df9a2f067bd2d96a2b9c36e5a-le64.cache-6
lightdm-g 6180 lightdm  mem       REG                8,1     1816  524367 /var/cache/fontconfig/56cf4f4769d0f4abc89a4895d7bd3ae1-le64.cache-6
lightdm-g 6180 lightdm  mem       REG                8,1     3184  524382 /var/cache/fontconfig/b9d506c9ac06c20b433354fa67a72993-le64.cache-6
lightdm-g 6180 lightdm  mem       REG                8,1    21520  524381 /var/cache/fontconfig/b47c4e1ecd0709278f4910c18777a504-le64.cache-6
lightdm-g 6180 lightdm  mem       REG                8,1    76688  524387 /var/cache/fontconfig/d52a8644073d54c13679302ca1180695-le64.cache-6
lightdm-g 6180 lightdm  mem       REG                8,1     1816  524366 /var/cache/fontconfig/551ecf3b0e8b0bca0f25c0944f561853-le64.cache-6
lightdm-g 6180 lightdm  mem       REG                8,1    15216  524388 /var/cache/fontconfig/d589a48862398ed80a3d6066f4f56f4c-le64.cache-6
lightdm-g 6180 lightdm  mem       REG                8,1    49168  524385 /var/cache/fontconfig/089dead882dea3570ffc31a9898cfb69-le64.cache-6
lightdm-g 6180 lightdm  mem       REG                8,1    10736  524372 /var/cache/fontconfig/75114ca45c98e8a441da0ff356701271-le64.cache-6
lightdm-g 6180 lightdm  mem       REG                8,1    44112  524375 /var/cache/fontconfig/83bf95040141907cd45bb53cf7c1c148-le64.cache-6
lightdm-g 6180 lightdm  mem       REG                8,1    70208  524379 /var/cache/fontconfig/9b89f8e3dae116d678bbf48e5f21f69b-le64.cache-6
lightdm-g 6180 lightdm  mem       REG                8,1     3464  524361 /var/cache/fontconfig/30829fa25452a46451e813d634d7f916-le64.cache-6
lightdm-g 6180 lightdm  mem       REG                8,1     2432  524355 /var/cache/fontconfig/0c9eb80ebd1c36541ebe2852d3bb0c49-le64.cache-6
lightdm-g 6180 lightdm  mem       REG                8,1     9176  533780 /var/cache/fontconfig/e13b20fdb08344e0e664864cc2ede53d-le64.cache-6
lightdm-g 6180 lightdm  mem       REG                8,1    13392  524368 /var/cache/fontconfig/7ef2298fde41cc6eeb7af42e48b7d293-le64.cache-6
```

可以看到第一行

```
lightdm-g 6180 lightdm  mem       REG                8,1 17151049 2888674 /usr/share/fonts/truetype/arphic/ukai.ttc
```

## 如何看到「豆腐字」

在登入狀態，執行下面指令，將「/usr/share/fonts/truetype/arphic/ukai.ttc」的「r」拿掉

``` sh
$ sudo chmod -r /usr/share/fonts/truetype/arphic/ukai.ttc
```

然後登出，就可以看到豆腐字了。


### 觀看log檔

執行

``` sh
$ sudo cat /var/log/lightdm/seat0-greeter.log | grep font -n
```

顯示

```
114:(lightdm-gtk-greeter:14602): Pango-WARNING **: failed to create cairo scaled font, expect ugly output. the offending font is 'AR PL UKai TW 9.9990234375'
116:(lightdm-gtk-greeter:14602): Pango-WARNING **: font_face status is: file not found
118:(lightdm-gtk-greeter:14602): Pango-WARNING **: scaled_font status is: file not found
120:(lightdm-gtk-greeter:14602): Pango-WARNING **: shaping failure, expect ugly output. shape-engine='PangoFcShapeEngine', font='AR PL UKai TW 9.9990234375', text='●'
150:(lightdm-gtk-greeter:14602): Pango-WARNING **: failed to create cairo scaled font, expect ugly output. the offending font is 'AR PL UKai TW 9.9990234375'
152:(lightdm-gtk-greeter:14602): Pango-WARNING **: font_face status is: file not found
154:(lightdm-gtk-greeter:14602): Pango-WARNING **: scaled_font status is: file not found
158:(lightdm-gtk-greeter:14602): Pango-WARNING **: failed to create cairo scaled font, expect ugly output. the offending font is 'AR PL UKai TW Bold 9.9990234375'
160:(lightdm-gtk-greeter:14602): Pango-WARNING **: font_face status is: file not found
162:(lightdm-gtk-greeter:14602): Pango-WARNING **: scaled_font status is: file not found
164:(lightdm-gtk-greeter:14602): Pango-WARNING **: failed to create cairo scaled font, expect ugly output. the offending font is 'AR PL UKai TW Bold 9.9990234375'
166:(lightdm-gtk-greeter:14602): Pango-WARNING **: font_face status is: file not found
168:(lightdm-gtk-greeter:14602): Pango-WARNING **: scaled_font status is: file not found
170:(lightdm-gtk-greeter:14602): Pango-WARNING **: shaping failure, expect ugly output. shape-engine='PangoFcShapeEngine', font='AR PL UKai TW Bold 9.9990234375', text='我能吞下玻璃而不傷身體。'
179:(lightdm-gtk-greeter:14602): Pango-WARNING **: failed to create cairo scaled font, expect ugly output. the offending font is 'AR PL UKai TW 18'
181:(lightdm-gtk-greeter:14602): Pango-WARNING **: font_face status is: file not found
183:(lightdm-gtk-greeter:14602): Pango-WARNING **: scaled_font status is: file not found
185:(lightdm-gtk-greeter:14602): Pango-WARNING **: failed to create cairo scaled font, expect ugly output. the offending font is 'AR PL UKai TW 18'
187:(lightdm-gtk-greeter:14602): Pango-WARNING **: font_face status is: file not found
189:(lightdm-gtk-greeter:14602): Pango-WARNING **: scaled_font status is: file not found
191:(lightdm-gtk-greeter:14602): Pango-WARNING **: shaping failure, expect ugly output. shape-engine='PangoFcShapeEngine', font='AR PL UKai TW 18', text='我能吞下玻璃而不傷身體。'

```

依照前面的方式，再來確認一次。

### 列舉和「lightdm」相關的「Process」

執行

``` ps
$ ps aux | grep lightdm
```

顯示

```
root      1809  0.0  0.6 292196  7040 ?        SLsl 11:50   0:00 /usr/sbin/lightdm
root     14572  0.1  4.8 287216 49596 tty7     Ss+  13:00   0:00 /usr/lib/xorg/Xorg -core :0 -seat seat0 -auth /var/run/lightdm/root/:0 -nolisten tcp vt7 -novtswitch
root     14582  0.0  0.5 226172  6040 ?        Sl   13:00   0:00 lightdm --session-child 15 18
lightdm  14585  0.0  0.4  45248  4456 ?        Ss   13:00   0:00 /lib/systemd/systemd --user
lightdm  14588  0.0  0.1 145420  1744 ?        S    13:00   0:00 (sd-pam)
lightdm  14596  0.0  0.0   4508   700 ?        Ss   13:00   0:00 /bin/sh /usr/lib/lightdm/lightdm-greeter-session /usr/sbin/lightdm-gtk-greeter
lightdm  14602  0.7  8.2 580884 84144 ?        Sl   13:00   0:02 /usr/sbin/lightdm-gtk-greeter
lightdm  14612  0.0  0.3  45012  3820 ?        S    13:00   0:00 upstart --user --startup-event indicator-services-start
root     14749  0.0  0.4  82704  4756 ?        S    13:00   0:00 lightdm --session-child 9 18
user     15584  0.0  0.0  21740   964 tty1     S+   13:06   0:00 grep --color=auto lightdm
```


### 找到「/usr/sbin/lightdm-gtk-greeter」

可以找到下面這一個「Process」，其「Process ID」是「14602」。

``` sh
lightdm  14602  0.7  8.2 580884 84144 ?        Sl   13:00   0:02 /usr/sbin/lightdm-gtk-greeter
```

### 使用「lsof -p」觀看「Process」開啟了那些檔案

根據上面找到的「14602」這個「Process ID」。

執行

``` sh
sudo lsof -p 6180 | grep font
```

顯示

```
lightdm-g 14602 lightdm  mem       REG                8,1    41080  524377 /var/cache/fontconfig/945677eb7aeaf62f1d50efc3fb3ec7d8-le64.cache-6
lightdm-g 14602 lightdm  mem       REG                8,1    20584  524359 /var/cache/fontconfig/2cd17615ca594fa2959ae173292e504c-le64.cache-6
lightdm-g 14602 lightdm  mem       REG                8,1   273832 2238002 /usr/lib/x86_64-linux-gnu/libfontconfig.so.1.9.0
lightdm-g 14602 lightdm  mem       REG                8,1     3416  524356 /var/cache/fontconfig/0d8c3b2ac0904cb8a57a757ad11a4a08-le64.cache-6
lightdm-g 14602 lightdm  mem       REG                8,1    84432  524353 /var/cache/fontconfig/04aabc0a78ac019cf9454389977116d2-le64.cache-6
lightdm-g 14602 lightdm  mem       REG                8,1     3144  524358 /var/cache/fontconfig/1ac9eb803944fde146138c791f5cc56a-le64.cache-6
lightdm-g 14602 lightdm  mem       REG                8,1    12392  524363 /var/cache/fontconfig/385c0604a188198f04d133e54aba7fe7-le64.cache-6
lightdm-g 14602 lightdm  mem       REG                8,1     1632  524390 /var/cache/fontconfig/dc05db6664285cc2f12bf69c139ae4c3-le64.cache-6
lightdm-g 14602 lightdm  mem       REG                8,1     8640  524373 /var/cache/fontconfig/767a8244fc0220cfb567a839d0392e0b-le64.cache-6
lightdm-g 14602 lightdm  mem       REG                8,1     2320  524364 /var/cache/fontconfig/4794a0821666d79190d59a36cb4f44b5-le64.cache-6
lightdm-g 14602 lightdm  mem       REG                8,1   157248  524354 /var/cache/fontconfig/0bd3dc0958fa2205aaaa8ebb13e2872b-le64.cache-6
lightdm-g 14602 lightdm  mem       REG                8,1    17256  524376 /var/cache/fontconfig/8801497958630a81b71ace7c5f9b32a8-le64.cache-6
lightdm-g 14602 lightdm  mem       REG                8,1     1800  524383 /var/cache/fontconfig/bab58bb527bb656aaa9f116d68a48d89-le64.cache-6
lightdm-g 14602 lightdm  mem       REG                8,1    25168  524360 /var/cache/fontconfig/3047814df9a2f067bd2d96a2b9c36e5a-le64.cache-6
lightdm-g 14602 lightdm  mem       REG                8,1     1816  524367 /var/cache/fontconfig/56cf4f4769d0f4abc89a4895d7bd3ae1-le64.cache-6
lightdm-g 14602 lightdm  mem       REG                8,1     3184  524382 /var/cache/fontconfig/b9d506c9ac06c20b433354fa67a72993-le64.cache-6
lightdm-g 14602 lightdm  mem       REG                8,1    21520  524381 /var/cache/fontconfig/b47c4e1ecd0709278f4910c18777a504-le64.cache-6
lightdm-g 14602 lightdm  mem       REG                8,1    76688  524387 /var/cache/fontconfig/d52a8644073d54c13679302ca1180695-le64.cache-6
lightdm-g 14602 lightdm  mem       REG                8,1     1816  524366 /var/cache/fontconfig/551ecf3b0e8b0bca0f25c0944f561853-le64.cache-6
lightdm-g 14602 lightdm  mem       REG                8,1    15216  524388 /var/cache/fontconfig/d589a48862398ed80a3d6066f4f56f4c-le64.cache-6
lightdm-g 14602 lightdm  mem       REG                8,1    49168  524385 /var/cache/fontconfig/089dead882dea3570ffc31a9898cfb69-le64.cache-6
lightdm-g 14602 lightdm  mem       REG                8,1    10736  524372 /var/cache/fontconfig/75114ca45c98e8a441da0ff356701271-le64.cache-6
lightdm-g 14602 lightdm  mem       REG                8,1    44112  524375 /var/cache/fontconfig/83bf95040141907cd45bb53cf7c1c148-le64.cache-6
lightdm-g 14602 lightdm  mem       REG                8,1    70208  524379 /var/cache/fontconfig/9b89f8e3dae116d678bbf48e5f21f69b-le64.cache-6
lightdm-g 14602 lightdm  mem       REG                8,1     3464  524361 /var/cache/fontconfig/30829fa25452a46451e813d634d7f916-le64.cache-6
lightdm-g 14602 lightdm  mem       REG                8,1     2432  524355 /var/cache/fontconfig/0c9eb80ebd1c36541ebe2852d3bb0c49-le64.cache-6
lightdm-g 14602 lightdm  mem       REG                8,1     9176  533780 /var/cache/fontconfig/e13b20fdb08344e0e664864cc2ede53d-le64.cache-6
lightdm-g 14602 lightdm  mem       REG                8,1    13392  524368 /var/cache/fontconfig/7ef2298fde41cc6eeb7af42e48b7d293-le64.cache-6
```

這時候就只看不到剛剛「ukai.ttc」那一行了。

```
lightdm-g 6180 lightdm  mem       REG                8,1 17151049 2888674 /usr/share/fonts/truetype/arphic/ukai.ttc
```

## 恢復權限

接著再把剛剛的權限恢復

執行

``` sh
$ sudo chmod +r /usr/share/fonts/truetype/arphic/ukai.ttc
```

或是執行

``` sh
$ sudo 644 /usr/share/fonts/truetype/arphic/ukai.ttc
```
