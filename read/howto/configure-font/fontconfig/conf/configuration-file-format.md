---
layout: page
title: 「fontconfig」的「configuration file format」
description: >
  「fontconfig」的「configuration file format」
parent:
  title: 如何使用 fontconfig
  url: '/read/howto/configure-font/fontconfig'
source_url: '/read/howto/configure-font/fontconfig/conf/configuration-file-format.md'
---

## 說明

執行

$ man [fonts-conf](http://manpages.ubuntu.com/manpages/xenial/en/man5/fonts-conf.5.html)

找尋「[CONFIGURATION FILE FORMAT](http://manpages.ubuntu.com/manpages/xenial/en/man5/fonts-conf.5.html#contenttoc6)」，可以找到下面這一段說明。

```
CONFIGURATION FILE FORMAT
       Configuration files for fontconfig are stored in XML format; this format makes external configuration  tools  easier  to  write  and
       ensures that they will generate syntactically correct configuration files. As XML files are plain text, they can also be manipulated
       by the expert user using a text editor.

       The fontconfig document type definition resides in the external entity "fonts.dtd"; this is normally stored in the default font con‐
       figuration directory (/etc/fonts). Each configuration file should contain the following structure:

            <?xml version="1.0"?>
            <!DOCTYPE fontconfig SYSTEM "fonts.dtd">
            <fontconfig>
       ...
            </fontconfig>
```

也就是說，「fontconfig」每個設定檔的基本結構如下


``` xml
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>

</fontconfig>
```


可以觀看「/etc/fonts/conf.d/」這個資料夾裡面，各個檔案的內容。

例如:

## /etc/fonts/conf.d/51-local.conf

執行下面指令，觀看「/etc/fonts/conf.d/51-local.conf」這個檔案的內容。

``` sh
$ cat /etc/fonts/conf.d/51-local.conf
```

顯示

``` xml
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
        <!-- Load local system customization file -->
        <include ignore_missing="yes">local.conf</include>
</fontconfig>
```

## /etc/fonts/conf.d/50-user.conf

執行下面指令，觀看「/etc/fonts/conf.d/50-user.conf」這個檔案的內容。

``` sh
$ cat /etc/fonts/conf.d/50-user.conf
```

顯示

``` xml
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
        <!--
            Load per-user customization files where stored on XDG Base Directory
            specification compliant places. it should be usually:
              $HOME/.config/fontconfig/conf.d
              $HOME/.config/fontconfig/fonts.conf
        -->
        <include ignore_missing="yes" prefix="xdg">fontconfig/conf.d</include>
        <include ignore_missing="yes" prefix="xdg">fontconfig/fonts.conf</include>
        <!-- the following elements will be removed in the future -->
        <include ignore_missing="yes" deprecated="yes">~/.fonts.conf.d</include>
        <include ignore_missing="yes" deprecated="yes">~/.fonts.conf</include>
</fontconfig>
```

## 「~/.config/fontconfig/fonts.conf」

執行下面指令，產生「~/.config/fontconfig/fonts.conf」這個檔案

``` sh
cat > ~/.config/fontconfig/fonts.conf << EOF
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>

</fontconfig>
EOF

```

執行

``` sh
$ cat ~/.config/fontconfig/fonts.conf
```

會顯示

``` sh
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>

</fontconfig>
```

執行

``` sh
$ fc-match
```

並沒有出現任何錯誤訊息。「註：如何產生錯誤訊息，請參考 [1](/book-ubuntu-qna/read/howto/configure-font/fontconfig/conf/conf.d.html), [2](/book-ubuntu-qna/read/howto/configure-font/fontconfig/conf/local.conf.html), [3](/book-ubuntu-qna/read/howto/configure-font/fontconfig/conf/home-fonts.conf.html)」。
