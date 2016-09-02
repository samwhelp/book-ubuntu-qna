---
layout: page
title: 解壓縮zip檔案，遇到檔案名稱是big5編碼，產生亂碼時，如何解決？
description: >
  解壓縮zip檔案，遇到檔案名稱是big5編碼，產生亂碼時，如何解決？
date: 2016-08-30 16:37:20 +0800
parent:
  title: 檔案的打包以及壓縮與解壓縮
  url: /read/case/file-archiving-and-compression
---

## 原始討論

* 原始討論「[解壓縮zip檔，產生亂碼，如何解決的心得](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=326994#forumpost326994)」。


## 測試環境

* Xubuntu 16.04 64位元 英文界面

## 說明

在linux的環境底下，解壓縮zip檔案時，會遇到亂碼的情形，通常是遇到檔名是「非utf-8」編碼，

最常見的如下面的案例，遇到的檔案名稱的編碼是「big5」編碼。

## 前置作業

執行下面指令，安裝「[unzip](http://packages.ubuntu.com/xenial/unzip)」這個套件。

``` sh
$ sudo apt-get install unzip
```

## 下載案例檔案

執行下面的指令，下載「案例檔案」

``` sh
$ wget -c 'http://www.cns11643.gov.tw/AIDB/Open_Data.zip' -O Open_Data.zip
```

「檔案連結」請參考原始網頁「[1](http://data.gov.tw/node/gov/resource/27234)」,「[2](http://data.gov.tw/node/5961)」的說明，撰寫此文時是下載「105年6月15日更新」的版本。

## 觀看檔案列表

執行下面指令，觀看檔案列表

``` sh
$ unzip -l Open_Data.zip
```

會看到有些檔名是呈現亂碼的狀態。

所以改執行

``` sh
$ unzip -O big5 -l Open_Data.zip
```

就可以看到正常的顯示

```
Archive:  Open_Data.zip
  Length      Date    Time    Name
---------  ---------- -----   ----
        0  2016-08-25 16:28   Open_Data/
        0  2016-08-25 16:32   Open_Data/Fonts/
134406861  2016-08-25 16:32   Open_Data/Fonts/png_24x24.zip
 52450272  2015-11-26 18:41   Open_Data/Fonts/TW-Kai-98_1.ttf
 64296220  2015-07-09 09:54   Open_Data/Fonts/TW-Kai-Ext-B-98_1.ttf
 34466036  2016-08-25 09:28   Open_Data/Fonts/TW-Kai-Plus-98_1.ttf
 35747160  2015-08-05 17:08   Open_Data/Fonts/TW-Sung-98_1.ttf
 64868200  2016-05-10 15:23   Open_Data/Fonts/TW-Sung-Ext-B-98_1.ttf
 31316016  2016-08-25 09:30   Open_Data/Fonts/TW-Sung-Plus-98_1.ttf
      500  2012-06-18 11:41   Open_Data/Fonts/全字庫字型說明文件.txt
        0  2015-01-13 16:33   Open_Data/MapingTables/
        0  2015-01-13 16:33   Open_Data/MapingTables/Big5/
   339328  2012-06-13 18:11   Open_Data/MapingTables/Big5/CNS2BIG5.txt
   102806  2012-06-13 18:11   Open_Data/MapingTables/Big5/CNS2BIG5_Big5E.txt
      184  2012-06-13 18:11   Open_Data/MapingTables/Big5/CNS2BIG5_七個倚天外字.txt
    11494  2012-06-13 18:11   Open_Data/MapingTables/Big5/CNS2BIG5_符號.txt
   226730  2009-11-13 11:25   Open_Data/MapingTables/CNS2DCI.txt
   342512  2009-11-13 10:58   Open_Data/MapingTables/CNS2FIN.txt
    71344  2009-05-15 11:13   Open_Data/MapingTables/CNS2INC.txt
   321105  2009-11-13 10:59   Open_Data/MapingTables/CNS2TAX.txt
        0  2016-08-25 16:28   Open_Data/MapingTables/Unicode/
   268792  2016-08-25 16:27   Open_Data/MapingTables/Unicode/CNS2UNICODE_Unicode 15.txt
   617668  2016-08-25 16:27   Open_Data/MapingTables/Unicode/CNS2UNICODE_Unicode 2.txt
   469993  2016-08-25 16:27   Open_Data/MapingTables/Unicode/CNS2UNICODE_Unicode BMP.txt
     3934  2015-08-11 11:37   Open_Data/MapingTables/全字庫中文對照表說明文件.txt
        0  2015-01-13 16:33   Open_Data/MapingTables/地政/
    21525  2009-11-13 09:46   Open_Data/MapingTables/地政/南投縣.txt
    22876  2009-11-13 09:46   Open_Data/MapingTables/地政/台中市.txt
    23226  2009-11-13 09:46   Open_Data/MapingTables/地政/台中縣.txt
    63942  2009-11-13 09:47   Open_Data/MapingTables/地政/台北市.txt
    58134  2009-11-13 09:47   Open_Data/MapingTables/地政/台北縣.txt
    17276  2009-11-13 09:47   Open_Data/MapingTables/地政/台南市.txt
    40502  2009-11-13 09:47   Open_Data/MapingTables/地政/台南縣.txt
    24766  2009-11-13 09:47   Open_Data/MapingTables/地政/台東縣.txt
    10403  2009-11-13 09:47   Open_Data/MapingTables/地政/嘉義市.txt
    29610  2009-11-13 09:47   Open_Data/MapingTables/地政/嘉義縣.txt
     7434  2009-11-13 09:47   Open_Data/MapingTables/地政/基隆市.txt
    42957  2009-11-13 09:47   Open_Data/MapingTables/地政/宜蘭縣.txt
    29666  2009-11-13 09:47   Open_Data/MapingTables/地政/屏東縣.txt
    37632  2009-11-13 09:47   Open_Data/MapingTables/地政/彰化縣.txt
     5194  2009-11-13 09:47   Open_Data/MapingTables/地政/新竹市.txt
     3864  2009-11-13 09:47   Open_Data/MapingTables/地政/新竹縣.txt
    24988  2009-11-13 09:47   Open_Data/MapingTables/地政/桃園縣.txt
    29960  2009-11-13 09:47   Open_Data/MapingTables/地政/澎湖縣.txt
      938  2009-11-13 09:47   Open_Data/MapingTables/地政/花蓮縣.txt
     7266  2009-11-13 09:47   Open_Data/MapingTables/地政/苗栗縣.txt
      378  2009-11-13 09:47   Open_Data/MapingTables/地政/連江縣.txt
     4550  2009-11-13 09:48   Open_Data/MapingTables/地政/金門縣.txt
    38458  2009-11-13 09:48   Open_Data/MapingTables/地政/雲林縣.txt
    20132  2009-11-13 09:48   Open_Data/MapingTables/地政/高雄市.txt
    36930  2010-07-01 14:50   Open_Data/MapingTables/地政/高雄縣.txt
        0  2016-08-25 16:27   Open_Data/Properties/
  1171461  2016-08-25 16:27   Open_Data/Properties/CNS_cangjei.txt
  2011814  2016-08-25 16:27   Open_Data/Properties/CNS_component.txt
    10936  2012-07-16 15:15   Open_Data/Properties/CNS_component_word.txt
   349210  2016-06-27 16:59   Open_Data/Properties/CNS_component_word.zip
  1865405  2016-08-25 16:27   Open_Data/Properties/CNS_phonetic.txt
    46532  2012-07-13 13:50   Open_Data/Properties/CNS_pinyin.txt
  1003863  2016-08-25 16:27   Open_Data/Properties/CNS_radical.txt
     5778  2015-08-25 13:36   Open_Data/Properties/CNS_radical_word.txt
  1055732  2016-08-25 16:27   Open_Data/Properties/CNS_stroke.txt
  2063780  2016-08-25 16:27   Open_Data/Properties/CNS_strokes_sequence.txt
     3188  2016-06-28 13:59   Open_Data/Properties/全字庫屬性資料說明文件.txt
---------                     -------
430517461                     63 files
```

## 解壓縮

執行下面指令，將檔案解壓縮

``` sh
$ unzip -O big5 Open_Data.zip
```

顯示

```
Archive:  Open_Data.zip
   creating: Open_Data/
   creating: Open_Data/Fonts/
  inflating: Open_Data/Fonts/png_24x24.zip  
  inflating: Open_Data/Fonts/TW-Kai-98_1.ttf  
  inflating: Open_Data/Fonts/TW-Kai-Ext-B-98_1.ttf  
  inflating: Open_Data/Fonts/TW-Kai-Plus-98_1.ttf  
  inflating: Open_Data/Fonts/TW-Sung-98_1.ttf  
  inflating: Open_Data/Fonts/TW-Sung-Ext-B-98_1.ttf  
  inflating: Open_Data/Fonts/TW-Sung-Plus-98_1.ttf  
  inflating: Open_Data/Fonts/全字庫字型說明文件.txt  
   creating: Open_Data/MapingTables/
   creating: Open_Data/MapingTables/Big5/
  inflating: Open_Data/MapingTables/Big5/CNS2BIG5.txt  
  inflating: Open_Data/MapingTables/Big5/CNS2BIG5_Big5E.txt  
  inflating: Open_Data/MapingTables/Big5/CNS2BIG5_七個倚天外字.txt  
  inflating: Open_Data/MapingTables/Big5/CNS2BIG5_符號.txt  
  inflating: Open_Data/MapingTables/CNS2DCI.txt  
  inflating: Open_Data/MapingTables/CNS2FIN.txt  
  inflating: Open_Data/MapingTables/CNS2INC.txt  
  inflating: Open_Data/MapingTables/CNS2TAX.txt  
   creating: Open_Data/MapingTables/Unicode/
  inflating: Open_Data/MapingTables/Unicode/CNS2UNICODE_Unicode 15.txt  
  inflating: Open_Data/MapingTables/Unicode/CNS2UNICODE_Unicode 2.txt  
  inflating: Open_Data/MapingTables/Unicode/CNS2UNICODE_Unicode BMP.txt  
  inflating: Open_Data/MapingTables/全字庫中文對照表說明文件.txt  
   creating: Open_Data/MapingTables/地政/
  inflating: Open_Data/MapingTables/地政/南投縣.txt  
  inflating: Open_Data/MapingTables/地政/台中市.txt  
  inflating: Open_Data/MapingTables/地政/台中縣.txt  
  inflating: Open_Data/MapingTables/地政/台北市.txt  
  inflating: Open_Data/MapingTables/地政/台北縣.txt  
  inflating: Open_Data/MapingTables/地政/台南市.txt  
  inflating: Open_Data/MapingTables/地政/台南縣.txt  
  inflating: Open_Data/MapingTables/地政/台東縣.txt  
  inflating: Open_Data/MapingTables/地政/嘉義市.txt  
  inflating: Open_Data/MapingTables/地政/嘉義縣.txt  
  inflating: Open_Data/MapingTables/地政/基隆市.txt  
  inflating: Open_Data/MapingTables/地政/宜蘭縣.txt  
  inflating: Open_Data/MapingTables/地政/屏東縣.txt  
  inflating: Open_Data/MapingTables/地政/彰化縣.txt  
  inflating: Open_Data/MapingTables/地政/新竹市.txt  
  inflating: Open_Data/MapingTables/地政/新竹縣.txt  
  inflating: Open_Data/MapingTables/地政/桃園縣.txt  
  inflating: Open_Data/MapingTables/地政/澎湖縣.txt  
  inflating: Open_Data/MapingTables/地政/花蓮縣.txt  
  inflating: Open_Data/MapingTables/地政/苗栗縣.txt  
  inflating: Open_Data/MapingTables/地政/連江縣.txt  
  inflating: Open_Data/MapingTables/地政/金門縣.txt  
  inflating: Open_Data/MapingTables/地政/雲林縣.txt  
  inflating: Open_Data/MapingTables/地政/高雄市.txt  
  inflating: Open_Data/MapingTables/地政/高雄縣.txt  
   creating: Open_Data/Properties/
  inflating: Open_Data/Properties/CNS_cangjei.txt  
  inflating: Open_Data/Properties/CNS_component.txt  
  inflating: Open_Data/Properties/CNS_component_word.txt  
  inflating: Open_Data/Properties/CNS_component_word.zip  
  inflating: Open_Data/Properties/CNS_phonetic.txt  
  inflating: Open_Data/Properties/CNS_pinyin.txt  
  inflating: Open_Data/Properties/CNS_radical.txt  
  inflating: Open_Data/Properties/CNS_radical_word.txt  
  inflating: Open_Data/Properties/CNS_stroke.txt  
  inflating: Open_Data/Properties/CNS_strokes_sequence.txt  
  inflating: Open_Data/Properties/全字庫屬性資料說明文件.txt
```

就會產生一個資料夾「Open_Data」

## 觀看資料夾結構

執行下面指令，觀看「Open_Data」這個資料夾的結構

``` sh
$ tree Open_Data
```

顯示

```
Open_Data
├── Fonts
│   ├── png_24x24.zip
│   ├── TW-Kai-98_1.ttf
│   ├── TW-Kai-Ext-B-98_1.ttf
│   ├── TW-Kai-Plus-98_1.ttf
│   ├── TW-Sung-98_1.ttf
│   ├── TW-Sung-Ext-B-98_1.ttf
│   ├── TW-Sung-Plus-98_1.ttf
│   └── 全字庫字型說明文件.txt
├── MapingTables
│   ├── Big5
│   │   ├── CNS2BIG5_Big5E.txt
│   │   ├── CNS2BIG5.txt
│   │   ├── CNS2BIG5_七個倚天外字.txt
│   │   └── CNS2BIG5_符號.txt
│   ├── CNS2DCI.txt
│   ├── CNS2FIN.txt
│   ├── CNS2INC.txt
│   ├── CNS2TAX.txt
│   ├── Unicode
│   │   ├── CNS2UNICODE_Unicode 15.txt
│   │   ├── CNS2UNICODE_Unicode 2.txt
│   │   └── CNS2UNICODE_Unicode BMP.txt
│   ├── 全字庫中文對照表說明文件.txt
│   └── 地政
│       ├── 南投縣.txt
│       ├── 台中市.txt
│       ├── 台中縣.txt
│       ├── 台北市.txt
│       ├── 台北縣.txt
│       ├── 台南市.txt
│       ├── 台南縣.txt
│       ├── 台東縣.txt
│       ├── 嘉義市.txt
│       ├── 嘉義縣.txt
│       ├── 基隆市.txt
│       ├── 宜蘭縣.txt
│       ├── 屏東縣.txt
│       ├── 彰化縣.txt
│       ├── 新竹市.txt
│       ├── 新竹縣.txt
│       ├── 桃園縣.txt
│       ├── 澎湖縣.txt
│       ├── 花蓮縣.txt
│       ├── 苗栗縣.txt
│       ├── 連江縣.txt
│       ├── 金門縣.txt
│       ├── 雲林縣.txt
│       ├── 高雄市.txt
│       └── 高雄縣.txt
└── Properties
    ├── CNS_cangjei.txt
    ├── CNS_component.txt
    ├── CNS_component_word.txt
    ├── CNS_component_word.zip
    ├── CNS_phonetic.txt
    ├── CNS_pinyin.txt
    ├── CNS_radical.txt
    ├── CNS_radical_word.txt
    ├── CNS_strokes_sequence.txt
    ├── CNS_stroke.txt
    └── 全字庫屬性資料說明文件.txt

6 directories, 56 files
```

## 另一個方式

若上面「unzip -O big5」的方式失效的話，還有另一個方式。

執行下面指令解壓縮

``` sh
$ LANG=C unzip Open_Data.zip
```

然後透過「convmv」這個指令，把呈現亂碼的檔案名稱，改回正常的檔名。

``` sh
$ convmv -f BIG5 -t UTF-8 -r Open_Data --notest
```

若是沒有使用「--notest」這個參數，則是觀看模擬更改的結果，並不會真的執行。

``` sh
$ convmv -f BIG5 -t UTF-8 -r Open_Data
```

注意：要使用「[convmv](http://manpages.ubuntu.com/manpages/xenial/en/man1/convmv.1.html)」這個指令，需要執行下面的指令先安裝「[convmv](http://packages.ubuntu.com/xenial/convmv)」這個套件

``` sh
$ sudo apt-get install convmv
```

這個方法，除了透過「[unzip](http://manpages.ubuntu.com/manpages/xenial/en/man1/unzip.1.html)」來解開壓縮檔，也可以透過「[7z](http://manpages.ubuntu.com/manpages/xenial/en/man1/7z.1.html)」來解開。

``` sh
$ LANG=C 7z x Open_Data.zip
```

然後一樣執行

``` sh
$ convmv -f BIG5 -t UTF-8 -r Open_Data --notest
```

## 其他的方式

還有其他的方式，請參考上面提到的原始討論。
