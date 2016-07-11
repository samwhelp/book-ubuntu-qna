---
layout: page
title: Shell Script - Redirection - 案例 001
description: >
  Shell Script - Redirection - 案例 001
parent:
  title: Shell Script
  url: /read/case/shell-script
---

## 原始討論

原始討論「[回覆: 「Mozilla Firefox 官方版」更新腳本](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=353262#forumpost353262)」。


## 回覆內容


以下單純討論「shell script」的一些寫法，以「[bash](http://manpages.ubuntu.com/manpages/xenial/en/man1/bash.1.html)」為主，我也還在學習當中。

剛好瞥見到「[update-firefox](https://raw.githubusercontent.com/Mint-Fans/linux-package/master/update-firefox)」下面這幾行，
藉著樓主的案例，想到一些可以提出來，給大家參考的。

``` sh
mkdir -p firefox/browser/defaults
mkdir -p firefox/browser/defaults/preferences
wget https://github.com/Mint-Fans/linux-package/raw/master/vendor.js
mv vendor.js firefox/browser/defaults/preferences/
```


關於下面這兩行

``` sh
mkdir -p firefox/browser/defaults
mkdir -p firefox/browser/defaults/preferences
```


這個應該可以寫成一行就行了

``` sh
mkdir -p firefox/browser/defaults/preferences
```


可以參考

$ man 1 [mkdir](http://manpages.ubuntu.com/manpages/xenial/en/man1/mkdir.1.html)

```
       -p, --parents
              no error if existing, make parent directories as needed

```


「mkdir」，當有給「-p」，

* 若資料夾已經存在，不會出現執行錯誤的訊息。
* 根據你的路徑，直接建立資料夾，若父資料夾不存在，會先建立。




然後下面這兩行，提供兩個其他的寫法，

``` sh
wget https://github.com/Mint-Fans/linux-package/raw/master/vendor.js
mv vendor.js firefox/browser/defaults/preferences/
```


通常的寫法，就是兩個檔「[update-firefox](https://raw.githubusercontent.com/Mint-Fans/linux-package/master/update-firefox)」和「[vendor.js](https://raw.githubusercontent.com/Mint-Fans/linux-package/master/vendor.js)」。


我揣測摟主的用意，
因為他只要提供一個「script檔(update-firefox)」，使用wget下載下來。
所以才會把「vendor.js」放在「遠端(github)」，「script檔(update-firefox)」裡再使用wget下載「vendor.js」下來。

提供另外兩個我目前知道的寫法，不見得是「best practice」，
只是剛好藉著這個案例，把我會的寫法提出來供參考。

## 寫法一

第一個用法，我是在「[http://scrapy.org/](http://scrapy.org/)」這裡看到的技巧。

所以上面就可以改成下面這一段，這樣就可以直接寫在「[update-firefox](https://raw.githubusercontent.com/Mint-Fans/linux-package/master/update-firefox)」。
就不需要「[vendor.js](https://raw.githubusercontent.com/Mint-Fans/linux-package/master/vendor.js)」這個擋了。

``` sh
cat > vendor.js << EOF
// Use LANG environment variable to choose locale
pref("intl.locale.matchOS", true);

// Disable application updates
pref("app.update.auto", false);
pref("app.update.enabled", false);

// Disable default browser checking.
pref("browser.shell.checkDefaultBrowser", false);

// Disable OpenH264 Decoder
pref("media.gmp-gmpopenh264.enabled", false);

// Don't disable our bundled extensions in the application directory
pref("extensions.autoDisableScopes", 11);
pref("extensions.shownSelectionUI", true);
EOF

mv vendor.js firefox/browser/defaults/preferences/
```



## 寫法 二

echo的用法，應該比較容易理解，

不過步驟可能會多一道手續，編輯上也可能不容易看懂，還有可能會有淺在的問題發生(見下面的「註:」)

所以一般還是會採用一開始提到的拆成兩個檔的寫法。

這個寫法也可以直接寫在「[update-firefox](https://raw.githubusercontent.com/Mint-Fans/linux-package/master/update-firefox)」。

也不需要「[vendor.js](https://raw.githubusercontent.com/Mint-Fans/linux-package/master/vendor.js)」這個檔。

``` sh
#touch vendor.js
echo -n > vendor.js
echo '// Use LANG environment variable to choose locale' >> vendor.js
echo 'pref("intl.locale.matchOS", true);' >> vendor.js
echo >> vendor.js
echo '// Disable application updates' >> vendor.js
echo 'pref("app.update.auto", false);' >> vendor.js
echo 'pref("app.update.enabled", false);' >> vendor.js
echo >> vendor.js
echo '// Disable default browser checking.' >> vendor.js
echo 'pref("browser.shell.checkDefaultBrowser", false);' >> vendor.js
echo >> vendor.js
echo '// Disable OpenH264 Decoder' >> vendor.js
echo 'pref("media.gmp-gmpopenh264.enabled", false);' >> vendor.js
echo >> vendor.js
echo "// Don't disable our bundled extensions in the application directory" >> vendor.js
echo 'pref("extensions.autoDisableScopes", 11);' >> vendor.js
echo 'pref("extensions.shownSelectionUI", true);' >> vendor.js

mv vendor.js firefox/browser/defaults/preferences/
```

注意:

* 上面兩種寫法，都要注意字串裡面，變數置換的問題。(單引號的字串除外，但要注意單引號裡面的單引號)
* 寫法二也可以直接「echo >> firefox/browser/defaults/preferences/vendor.js」。
但拆開來寫可以面對一種狀況，若是要放到其他使用者權限的資料夾，就可以使用「sudo」。
不然直接「echo」和使用「sudo」，就要迂迴透過另一個方式「sudo sh -c 'echo "hello" >> vendor.js'」。


也許其他人有其他的寫法和做法，歡迎加入討論，

另外作法和寫法，我覺得可以有多種變化，
所以我只是提供一些思路和一些考量的取捨點。

以上參考


:-)
