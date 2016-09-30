---
layout: page
title: 如何透過unzip確認ODF是否有內嵌字型
description: >
  如何透過unzip確認ODF是否有內嵌字型？
date: 2016-09-30 12:50:11 +0800
parent:
  title: 檔案的打包以及壓縮與解壓縮
  url: /read/case/file-archiving-and-compression
---

## 原始討論

* 原始討論「[回覆: Unicode9.0字元一覽有感(如何透過unzip確認ODF是否有內嵌字型)](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=354988#forumpost354988)」。


## 回覆內容


對「[ODF](https://en.wikipedia.org/wiki/OpenDocument)」的「[格式](https://en.wikipedia.org/wiki/OpenDocument_technical_specification)」，目前沒深究，
只是剛剛發現可以用檔案解壓縮程式解開，因為該檔案是zip格式(請閱讀[wiki](https://en.wikipedia.org/wiki/OpenDocument_technical_specification)上的說明)，「[EPUB](https://en.wikipedia.org/wiki/EPUB)」也是類似的模式。
所以稍微做了點測試，提供您參考，讓您可以有個起點，再去找到線索，深入探究，若您有興趣深究的話。


以下簡單紀錄

## 測試環境

* Xubuntu 16.04 (64位元) 英文界面
* Libreoffice Version: 5.1.4.2


## manpage

* man [unzip](http://manpages.ubuntu.com/manpages/xenial/en/man1/unzip.1.html)
* man [grep](http://manpages.ubuntu.com/manpages/xenial/en/man1/grep.1.html)
* man [tree](http://manpages.ubuntu.com/manpages/xenial/en/man1/tree.1.html)

「unzip」的用法，也可以參考「[這篇案例](http://samwhelp.github.io/book-ubuntu-qna/read/case/file-archiving-and-compression/zip/unzip-big5.html)」。

## 測試一

先用「Libreoffice Calc」簡單產生一個ods檔，
在儲存格「A1」填入內容「測試」，
然後存檔，檔名「test-no-font.ods」，
檔案大小是「7.2kb」。

### 檢視

可以使用下面指令檢視檔案內容

``` sh
$ unzip -l test-no-font.ods
```

顯示

```
Archive:  test-no-font.ods
  Length      Date    Time    Name
---------  ---------- -----   ----
       46  2016-09-30 01:14   mimetype
      610  2016-09-30 01:14   Thumbnails/thumbnail.png
     7429  2016-09-30 01:14   settings.xml
     3684  2016-09-30 01:14   content.xml
      840  2016-09-30 01:14   meta.xml
     7053  2016-09-30 01:14   styles.xml
        0  2016-09-30 01:14   Configurations2/accelerator/current.xml
        0  2016-09-30 01:14   Configurations2/toolpanel/
        0  2016-09-30 01:14   Configurations2/floater/
        0  2016-09-30 01:14   Configurations2/menubar/
        0  2016-09-30 01:14   Configurations2/images/Bitmaps/
        0  2016-09-30 01:14   Configurations2/popupmenu/
        0  2016-09-30 01:14   Configurations2/progressbar/
        0  2016-09-30 01:14   Configurations2/toolbar/
        0  2016-09-30 01:14   Configurations2/statusbar/
      899  2016-09-30 01:14   manifest.rdf
     1093  2016-09-30 01:14   META-INF/manifest.xml
---------                     -------
    21654                     17 files

```


### 解開

然後使用下面指令解開「test-no-font.odf」，你也可以使用「GUI解壓縮工具」來解開。

``` sh
$ unzip test-no-font.ods -d test-no-font
```

顯示

```
Archive:  test-no-font.ods                                                                                                                     
 extracting: test-no-font/mimetype                                                                                                             
 extracting: test-no-font/Thumbnails/thumbnail.png                                                                                             
  inflating: test-no-font/settings.xml                                                                                                         
  inflating: test-no-font/content.xml  
  inflating: test-no-font/meta.xml   
  inflating: test-no-font/styles.xml  
  inflating: test-no-font/Configurations2/accelerator/current.xml  
   creating: test-no-font/Configurations2/toolpanel/
   creating: test-no-font/Configurations2/floater/
   creating: test-no-font/Configurations2/menubar/
   creating: test-no-font/Configurations2/images/Bitmaps/
   creating: test-no-font/Configurations2/popupmenu/
   creating: test-no-font/Configurations2/progressbar/
   creating: test-no-font/Configurations2/toolbar/
   creating: test-no-font/Configurations2/statusbar/
  inflating: test-no-font/manifest.rdf  
  inflating: test-no-font/META-INF/manifest.xml  
```


## 探索資料夾

執行下面指令，檢視資料夾結構

``` sh
$ tree test-no-font
```

顯示

```
test-no-font
├── Configurations2
│   ├── accelerator
│   │   └── current.xml
│   ├── floater
│   ├── images
│   │   └── Bitmaps
│   ├── menubar
│   ├── popupmenu
│   ├── progressbar
│   ├── statusbar
│   ├── toolbar
│   └── toolpanel
├── content.xml
├── manifest.rdf
├── META-INF
│   └── manifest.xml
├── meta.xml
├── mimetype
├── settings.xml
├── styles.xml
└── Thumbnails
    └── thumbnail.png

13 directories, 9 files
```

執行下面指令，找尋檔案內容有「font」字眼的檔案

``` sh
$ grep font test-no-font/* -R -i
```

顯示

```
test-no-font/content.xml: ...略...
test-no-font/settings.xml: ...略...
test-no-font/styles.xml:: ...略...
```


可以看到「./test-no-font/settings.xml」這個檔，
有一個設定「<config:config-item config:name="EmbedFonts" config:type="boolean">false</config:config-item>」
是設定「false」。

## 測試二

然後上面的檔案，按照樓主提到的，
選擇功能選單「File / Properties」，
會跳出一個設定視窗。
選擇頁籤「Font」，
然後將「Font Embeddeing」勾選「Embed fonts in the document」。
按下「OK」。
最後另存新檔，檔名「test-font.ods」。
檔案大小變成「1.6MB」。


### 檢視

可以使用下面指令檢視檔案內容

``` sh
$ unzip -l test-font.ods
```

顯示

```
Archive:  test-font.ods
  Length      Date    Time    Name
---------  ---------- -----   ----
       46  2016-09-30 01:29   mimetype
      610  2016-09-30 01:29   Thumbnails/thumbnail.png
     8087  2016-09-30 01:29   settings.xml
     4783  2016-09-30 01:29   content.xml
      840  2016-09-30 01:29   meta.xml
     7117  2016-09-30 01:29   styles.xml
        0  2016-09-30 01:29   Configurations2/images/Bitmaps/
        0  2016-09-30 01:29   Configurations2/popupmenu/
        0  2016-09-30 01:29   Configurations2/statusbar/
        0  2016-09-30 01:29   Configurations2/progressbar/
        0  2016-09-30 01:29   Configurations2/toolbar/
        0  2016-09-30 01:29   Configurations2/menubar/
        0  2016-09-30 01:29   Configurations2/floater/
        0  2016-09-30 01:29   Configurations2/accelerator/current.xml
        0  2016-09-30 01:29   Configurations2/toolpanel/
      899  2016-09-30 01:29   manifest.rdf
     1835  2016-09-30 01:29   META-INF/manifest.xml
   137420  2016-09-30 01:29   Fonts/font4.ttf
   164264  2016-09-30 01:29   Fonts/font3.ttf
   137372  2016-09-30 01:29   Fonts/font2.ttf
   139764  2016-09-30 01:29   Fonts/font1.ttf
  1398864  2016-09-30 01:29   Fonts/font5.ttf
   756072  2016-09-30 01:29   Fonts/font6.ttf
   704128  2016-09-30 01:29   Fonts/font7.ttf
---------                     -------
  3462101                     24 files
```

### 解開

然後使用下面指令解開「test-font.odf」，你也可以使用「GUI解壓縮工具」來解開。

``` sh
$ unzip test-font.ods -d test-font
```

顯示

```
Archive:  test-font.ods
 extracting: test-font/mimetype      
 extracting: test-font/Thumbnails/thumbnail.png  
  inflating: test-font/settings.xml  
  inflating: test-font/content.xml   
  inflating: test-font/meta.xml      
  inflating: test-font/styles.xml    
   creating: test-font/Configurations2/images/Bitmaps/
   creating: test-font/Configurations2/popupmenu/
   creating: test-font/Configurations2/statusbar/
   creating: test-font/Configurations2/progressbar/
   creating: test-font/Configurations2/toolbar/
   creating: test-font/Configurations2/menubar/
   creating: test-font/Configurations2/floater/
  inflating: test-font/Configurations2/accelerator/current.xml  
   creating: test-font/Configurations2/toolpanel/
  inflating: test-font/manifest.rdf  
  inflating: test-font/META-INF/manifest.xml  
  inflating: test-font/Fonts/font4.ttf  
  inflating: test-font/Fonts/font3.ttf  
  inflating: test-font/Fonts/font2.ttf  
  inflating: test-font/Fonts/font1.ttf  
  inflating: test-font/Fonts/font5.ttf  
  inflating: test-font/Fonts/font6.ttf  
  inflating: test-font/Fonts/font7.ttf  
```


## 探索資料夾

執行下面指令，檢視資料夾結構

``` sh
$ tree test-font
```

顯示

```
test-font
├── Configurations2
│   ├── accelerator
│   │   └── current.xml
│   ├── floater
│   ├── images
│   │   └── Bitmaps
│   ├── menubar
│   ├── popupmenu
│   ├── progressbar
│   ├── statusbar
│   ├── toolbar
│   └── toolpanel
├── content.xml
├── Fonts
│   ├── font1.ttf
│   ├── font2.ttf
│   ├── font3.ttf
│   ├── font4.ttf
│   ├── font5.ttf
│   ├── font6.ttf
│   └── font7.ttf
├── manifest.rdf
├── META-INF
│   └── manifest.xml
├── meta.xml
├── mimetype
├── settings.xml
├── styles.xml
└── Thumbnails
    └── thumbnail.png

14 directories, 16 files
```

執行下面指令，找尋檔案內容有「font」字眼的檔案

``` sh
$ grep font test-font/* -R -i
```

顯示

```
test-font/content.xml: ...略...
test-font/META-INF/manifest.xml: <manifest:file-entry manifest:full-path="Fonts/font7.ttf" manifest:media-type="application/x-font-ttf"/>
test-font/META-INF/manifest.xml: <manifest:file-entry manifest:full-path="Fonts/font6.ttf" manifest:media-type="application/x-font-ttf"/>
test-font/META-INF/manifest.xml: <manifest:file-entry manifest:full-path="Fonts/font5.ttf" manifest:media-type="application/x-font-ttf"/>
test-font/META-INF/manifest.xml: <manifest:file-entry manifest:full-path="Fonts/font1.ttf" manifest:media-type="application/x-font-ttf"/>
test-font/META-INF/manifest.xml: <manifest:file-entry manifest:full-path="Fonts/font2.ttf" manifest:media-type="application/x-font-ttf"/>
test-font/META-INF/manifest.xml: <manifest:file-entry manifest:full-path="Fonts/font3.ttf" manifest:media-type="application/x-font-ttf"/>
test-font/META-INF/manifest.xml: <manifest:file-entry manifest:full-path="Fonts/font4.ttf" manifest:media-type="application/x-font-ttf"/>
test-font/settings.xml: ...略...
test-font/styles.xml: ...略...
```


可以看到「test-font/settings.xml」這個檔，
有一個設定「<config:config-item config:name="EmbedFonts" config:type="boolean">true</config:config-item>」，
這時候是設定「true」。

## 測試三

使用樓主提供的檔案「UNICODE9.0.ods」。
檔案大小「6.1MB」


### 檢視

可以使用下面指令檢視檔案內容

``` sh
$ unzip -l UNICODE9.0.ods
```

顯示

```
Archive:  UNICODE9.0.ods
  Length      Date    Time    Name
---------  ---------- -----   ----
       46  2016-09-28 08:09   mimetype
     6906  2016-09-28 08:09   Thumbnails/thumbnail.png
        0  2016-09-28 08:09   Configurations2/accelerator/current.xml
        0  2016-09-28 08:09   Configurations2/statusbar/
        0  2016-09-28 08:09   Configurations2/popupmenu/
        0  2016-09-28 08:09   Configurations2/images/Bitmaps/
        0  2016-09-28 08:09   Configurations2/menubar/
        0  2016-09-28 08:09   Configurations2/floater/
        0  2016-09-28 08:09   Configurations2/toolbar/
        0  2016-09-28 08:09   Configurations2/progressbar/
        0  2016-09-28 08:09   Configurations2/toolpanel/
      899  2016-09-28 08:09   manifest.rdf
    22153  2016-09-28 08:09   styles.xml
      888  2016-09-28 08:09   meta.xml
     1093  2016-09-28 08:09   META-INF/manifest.xml
210511365  2016-09-28 08:09   content.xml
   418026  2016-09-28 08:09   settings.xml
---------                     -------
210961376                     17 files
```

### 解開

然後使用下面指令解開「UNICODE9.0.ods」，你也可以使用「GUI解壓縮工具」來解開。

``` sh
$ unzip UNICODE9.0.ods -d UNICODE9.0
```

顯示

```
Archive:  UNICODE9.0.ods
 extracting: UNICODE9.0/mimetype     
 extracting: UNICODE9.0/Thumbnails/thumbnail.png  
  inflating: UNICODE9.0/Configurations2/accelerator/current.xml  
   creating: UNICODE9.0/Configurations2/statusbar/
   creating: UNICODE9.0/Configurations2/popupmenu/
   creating: UNICODE9.0/Configurations2/images/Bitmaps/
   creating: UNICODE9.0/Configurations2/menubar/
   creating: UNICODE9.0/Configurations2/floater/
   creating: UNICODE9.0/Configurations2/toolbar/
   creating: UNICODE9.0/Configurations2/progressbar/
   creating: UNICODE9.0/Configurations2/toolpanel/
  inflating: UNICODE9.0/manifest.rdf  
  inflating: UNICODE9.0/styles.xml   
  inflating: UNICODE9.0/meta.xml     
  inflating: UNICODE9.0/META-INF/manifest.xml  
  inflating: UNICODE9.0/content.xml  
  inflating: UNICODE9.0/settings.xml
```

## 探索資料夾

執行下面指令，檢視資料夾結構

``` sh
$ tree UNICODE9.0
```

顯示

```
UNICODE9.0
├── Configurations2
│   ├── accelerator
│   │   └── current.xml
│   ├── floater
│   ├── images
│   │   └── Bitmaps
│   ├── menubar
│   ├── popupmenu
│   ├── progressbar
│   ├── statusbar
│   ├── toolbar
│   └── toolpanel
├── content.xml
├── manifest.rdf
├── META-INF
│   └── manifest.xml
├── meta.xml
├── mimetype
├── settings.xml
├── styles.xml
└── Thumbnails
    └── thumbnail.png

13 directories, 9 files
```


執行下面指令，找尋檔案內容有「font」字眼的檔案

``` sh
$ grep font UNICODE9.0/* -R -i
```

顯示

```
UNICODE9.0/content.xml: ...略...
...略...
UNICODE9.0/settings.xml: ...略...
...略...
UNICODE9.0/styles.xml:...略...
...略...
```


可以看到「UNICODE9.0/settings.xml」這個檔，
有一個設定「<config:config-item config:name="EmbedFonts" config:type="boolean">true</config:config-item>」，
一樣是設定「true」。
不過對照「測試二」卻沒有「UNICODE9.0/Fonts」這個資料夾。


## 測試四


使用樓主提供的檔案「UNICODE9.0.ods」。
然後另存新檔，
檔案名稱「UNICODE9.0.font.ods」。
檔案大小「68.3MB」


## 檢視

可以使用下面指令檢視檔案內容

``` sh
$ unzip -l UNICODE9.0.font.ods
```

顯示

```
Archive:  UNICODE9.0.font.ods
  Length      Date    Time    Name
---------  ---------- -----   ----
       46  2016-09-30 01:56   mimetype
     6647  2016-09-30 01:56   Thumbnails/thumbnail.png
   418235  2016-09-30 01:56   settings.xml
   763676  2016-09-30 01:56   Fonts/font49.ttf
   704128  2016-09-30 01:56   Fonts/font47.ttf
  1563256  2016-09-30 01:56   Fonts/font48.ttf
   704128  2016-09-30 01:56   Fonts/font20.ttf
   756072  2016-09-30 01:56   Fonts/font19.ttf
   152660  2016-09-30 01:56   Fonts/font18.ttf
   145028  2016-09-30 01:56   Fonts/font17.ttf
  1563256  2016-09-30 01:56   Fonts/font21.ttf
   147132  2016-09-30 01:56   Fonts/font16.ttf
    28216  2016-09-30 01:56   Fonts/font30.ttf
   152408  2016-09-30 01:56   Fonts/font15.ttf
   608676  2016-09-30 01:56   Fonts/font14.ttf
   922104  2016-09-30 01:56   Fonts/font13.ttf
  1310828  2016-09-30 01:56   Fonts/font12.ttf
   252088  2016-09-30 01:56   Fonts/font4.ttf
   207488  2016-09-30 01:56   Fonts/font32.ttf
   763676  2016-09-30 01:56   Fonts/font3.ttf
   210224  2016-09-30 01:56   Fonts/font31.ttf
  1563256  2016-09-30 01:56   Fonts/font2.ttf
   763676  2016-09-30 01:56   Fonts/font22.ttf
    52956  2016-09-30 01:56   Fonts/font35.ttf
   224128  2016-09-30 01:56   Fonts/font5.ttf
    54200  2016-09-30 01:56   Fonts/font36.ttf
   190452  2016-09-30 01:56   Fonts/font33.ttf
   602664  2016-09-30 01:56   Fonts/font1.ttf
   192292  2016-09-30 01:56   Fonts/font34.ttf
   472488  2016-09-30 01:56   Fonts/font6.ttf
   443268  2016-09-30 01:56   Fonts/font7.ttf
  3303588  2016-09-30 01:56   Fonts/font11.ttf
   137664  2016-09-30 01:56   Fonts/font37.ttf
    28172  2016-09-30 01:56   Fonts/font29.ttf
  3025192  2016-09-30 01:56   Fonts/font8.ttf
    41436  2016-09-30 01:56   Fonts/font39.ttf
    39692  2016-09-30 01:56   Fonts/font40.ttf
    92632  2016-09-30 01:56   Fonts/font41.ttf
    94456  2016-09-30 01:56   Fonts/font42.ttf
 35747160  2016-09-30 01:56   Fonts/font9.ttf
   139764  2016-09-30 01:56   Fonts/font23.ttf
   137372  2016-09-30 01:56   Fonts/font24.ttf
   164264  2016-09-30 01:56   Fonts/font25.ttf
   137420  2016-09-30 01:56   Fonts/font26.ttf
   176544  2016-09-30 01:56   Fonts/font27.ttf
      859  2016-09-30 01:56   meta.xml
    22441  2016-09-30 01:56   styles.xml
        0  2016-09-30 01:56   Configurations2/statusbar/
        0  2016-09-30 01:56   Configurations2/menubar/
        0  2016-09-30 01:56   Configurations2/floater/
        0  2016-09-30 01:56   Configurations2/popupmenu/
        0  2016-09-30 01:56   Configurations2/images/Bitmaps/
        0  2016-09-30 01:56   Configurations2/progressbar/
        0  2016-09-30 01:56   Configurations2/toolbar/
        0  2016-09-30 01:56   Configurations2/accelerator/current.xml
        0  2016-09-30 01:56   Configurations2/toolpanel/
      899  2016-09-30 01:56   manifest.rdf
     6327  2016-09-30 01:56   META-INF/manifest.xml
207578090  2016-09-30 01:56   content.xml
   756072  2016-09-30 01:56   Fonts/font46.ttf
  1398864  2016-09-30 01:56   Fonts/font45.ttf
   259724  2016-09-30 01:56   Fonts/font44.ttf
   264780  2016-09-30 01:56   Fonts/font43.ttf
   137084  2016-09-30 01:56   Fonts/font38.ttf
   183068  2016-09-30 01:56   Fonts/font28.ttf
 64868200  2016-09-30 01:56   Fonts/font10.ttf
---------                     -------
334681116                     66 files
```

### 解開

然後使用下面指令解開「UNICODE9.0.font.ods」，你也可以使用「GUI解壓縮工具」來解開。

``` sh
$ unzip UNICODE9.0.font.ods -d UNICODE9.0.font
```

顯示

```
Archive:  UNICODE9.0.font.ods
 extracting: UNICODE9.0.font/mimetype  
 extracting: UNICODE9.0.font/Thumbnails/thumbnail.png  
  inflating: UNICODE9.0.font/settings.xml  
  inflating: UNICODE9.0.font/Fonts/font49.ttf  
  inflating: UNICODE9.0.font/Fonts/font47.ttf  
  inflating: UNICODE9.0.font/Fonts/font48.ttf  
  inflating: UNICODE9.0.font/Fonts/font20.ttf  
  inflating: UNICODE9.0.font/Fonts/font19.ttf  
  inflating: UNICODE9.0.font/Fonts/font18.ttf  
  inflating: UNICODE9.0.font/Fonts/font17.ttf  
  inflating: UNICODE9.0.font/Fonts/font21.ttf  
  inflating: UNICODE9.0.font/Fonts/font16.ttf  
  inflating: UNICODE9.0.font/Fonts/font30.ttf  
  inflating: UNICODE9.0.font/Fonts/font15.ttf  
  inflating: UNICODE9.0.font/Fonts/font14.ttf  
  inflating: UNICODE9.0.font/Fonts/font13.ttf  
  inflating: UNICODE9.0.font/Fonts/font12.ttf  
  inflating: UNICODE9.0.font/Fonts/font4.ttf  
  inflating: UNICODE9.0.font/Fonts/font32.ttf  
  inflating: UNICODE9.0.font/Fonts/font3.ttf  
  inflating: UNICODE9.0.font/Fonts/font31.ttf  
  inflating: UNICODE9.0.font/Fonts/font2.ttf  
  inflating: UNICODE9.0.font/Fonts/font22.ttf  
  inflating: UNICODE9.0.font/Fonts/font35.ttf  
  inflating: UNICODE9.0.font/Fonts/font5.ttf  
  inflating: UNICODE9.0.font/Fonts/font36.ttf  
  inflating: UNICODE9.0.font/Fonts/font33.ttf  
  inflating: UNICODE9.0.font/Fonts/font1.ttf  
  inflating: UNICODE9.0.font/Fonts/font34.ttf  
  inflating: UNICODE9.0.font/Fonts/font6.ttf  
  inflating: UNICODE9.0.font/Fonts/font7.ttf  
  inflating: UNICODE9.0.font/Fonts/font11.ttf  
  inflating: UNICODE9.0.font/Fonts/font37.ttf  
  inflating: UNICODE9.0.font/Fonts/font29.ttf  
  inflating: UNICODE9.0.font/Fonts/font8.ttf  
  inflating: UNICODE9.0.font/Fonts/font39.ttf  
  inflating: UNICODE9.0.font/Fonts/font40.ttf  
  inflating: UNICODE9.0.font/Fonts/font41.ttf  
  inflating: UNICODE9.0.font/Fonts/font42.ttf  
  inflating: UNICODE9.0.font/Fonts/font9.ttf  
  inflating: UNICODE9.0.font/Fonts/font23.ttf  
  inflating: UNICODE9.0.font/Fonts/font24.ttf  
  inflating: UNICODE9.0.font/Fonts/font25.ttf  
  inflating: UNICODE9.0.font/Fonts/font26.ttf  
  inflating: UNICODE9.0.font/Fonts/font27.ttf  
  inflating: UNICODE9.0.font/meta.xml  
  inflating: UNICODE9.0.font/styles.xml  
   creating: UNICODE9.0.font/Configurations2/statusbar/
   creating: UNICODE9.0.font/Configurations2/menubar/
   creating: UNICODE9.0.font/Configurations2/floater/
   creating: UNICODE9.0.font/Configurations2/popupmenu/
   creating: UNICODE9.0.font/Configurations2/images/Bitmaps/
   creating: UNICODE9.0.font/Configurations2/progressbar/
   creating: UNICODE9.0.font/Configurations2/toolbar/
  inflating: UNICODE9.0.font/Configurations2/accelerator/current.xml  
   creating: UNICODE9.0.font/Configurations2/toolpanel/
  inflating: UNICODE9.0.font/manifest.rdf  
  inflating: UNICODE9.0.font/META-INF/manifest.xml  
  inflating: UNICODE9.0.font/content.xml  
  inflating: UNICODE9.0.font/Fonts/font46.ttf  
  inflating: UNICODE9.0.font/Fonts/font45.ttf  
  inflating: UNICODE9.0.font/Fonts/font44.ttf  
  inflating: UNICODE9.0.font/Fonts/font43.ttf  
  inflating: UNICODE9.0.font/Fonts/font38.ttf  
  inflating: UNICODE9.0.font/Fonts/font28.ttf  
  inflating: UNICODE9.0.font/Fonts/font10.ttf  
```

## 探索資料夾

執行下面指令，檢視資料夾結構

``` sh
$ tree UNICODE9.0.font
```

顯示

```
UNICODE9.0.font
├── Configurations2
│   ├── accelerator
│   │   └── current.xml
│   ├── floater
│   ├── images
│   │   └── Bitmaps
│   ├── menubar
│   ├── popupmenu
│   ├── progressbar
│   ├── statusbar
│   ├── toolbar
│   └── toolpanel
├── content.xml
├── Fonts
│   ├── font10.ttf
│   ├── font11.ttf
│   ├── font12.ttf
│   ├── font13.ttf
│   ├── font14.ttf
│   ├── font15.ttf
│   ├── font16.ttf
│   ├── font17.ttf
│   ├── font18.ttf
│   ├── font19.ttf
│   ├── font1.ttf
│   ├── font20.ttf
│   ├── font21.ttf
│   ├── font22.ttf
│   ├── font23.ttf
│   ├── font24.ttf
│   ├── font25.ttf
│   ├── font26.ttf
│   ├── font27.ttf
│   ├── font28.ttf
│   ├── font29.ttf
│   ├── font2.ttf
│   ├── font30.ttf
│   ├── font31.ttf
│   ├── font32.ttf
│   ├── font33.ttf
│   ├── font34.ttf
│   ├── font35.ttf
│   ├── font36.ttf
│   ├── font37.ttf
│   ├── font38.ttf
│   ├── font39.ttf
│   ├── font3.ttf
│   ├── font40.ttf
│   ├── font41.ttf
│   ├── font42.ttf
│   ├── font43.ttf
│   ├── font44.ttf
│   ├── font45.ttf
│   ├── font46.ttf
│   ├── font47.ttf
│   ├── font48.ttf
│   ├── font49.ttf
│   ├── font4.ttf
│   ├── font5.ttf
│   ├── font6.ttf
│   ├── font7.ttf
│   ├── font8.ttf
│   └── font9.ttf
├── manifest.rdf
├── META-INF
│   └── manifest.xml
├── meta.xml
├── mimetype
├── settings.xml
├── styles.xml
└── Thumbnails
    └── thumbnail.png

14 directories, 58 files
```

執行下面指令，找尋檔案內容有「font」字眼的檔案

``` sh
$ grep font UNICODE9.0.font/* -R -i
```

顯示

```
UNICODE9.0.font/content.xml: ...略...
...略...
UNICODE9.0.font/META-INF/manifest.xml: ...略...
...略...
UNICODE9.0.font/settings.xml: ...略...
UNICODE9.0.font/styles.xml: ...略...
```


可以看到「UNICODE9.0/settings.xml」這個檔，
有一個設定「<config:config-item config:name="EmbedFonts" config:type="boolean">true</config:config-item>」，
一樣是設定「true」。
不過對照「測試三」多了「UNICODE9.0.font/Fonts」這個資料夾。

``` sh
$ ls UNICODE9.0.font/Fonts -1
```


以上參考，其他檔案內容就請[自行探究](https://en.wikipedia.org/wiki/OpenDocument_technical_specification)了。

若是要研究「EPUB」檔，可以到「[GitBook](https://www.gitbook.com/explore)」上找一本書來下載，就可以使用上面指令來操作。

:-)
