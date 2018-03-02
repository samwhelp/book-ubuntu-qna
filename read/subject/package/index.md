---
layout: page
title: 套件操作實務
description: >
  Ubuntu環境，套件操作實務。
parent:
  title: 主題
  url: /read/subject
---

[原始連結](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=333562#forumpost333562)


## 說明

可以參考我寫的「[如何探索Ubuntu](http://samwhelp.github.io/book-ubuntu-qna/read/howto/explore/)」和「[在泛Ubuntu的環境底下，一些套件相關的技巧](http://samwhelp.github.io/book-ubuntu-basic-skill/book/content/package/index.html)」，

還有[後來在網路上發現](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=355306#forumpost355306)的一篇整理「[Debian based package management](https://hughchao.hackpad.com/ep/pad/static/wrP2bgGpbe5) ([GitBook版](https://www.gitbook.com/book/hugh712/debian-based-package-management/details))」。

也可以閱讀「[The Debian Administrator's Handbook](https://debian-handbook.info/browse/zh-TW/stable/index.html)(之前紀錄在[這裡](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=355510#forumpost355510))」的「[5. 套件系統：工具與基本原則](https://debian-handbook.info/browse/zh-TW/stable/packaging-system.html)」和「[6. 維護與更新：APT 工具](https://debian-handbook.info/browse/zh-TW/stable/apt.html)」這兩章。

也可以瀏覽「Ubuntu Community Help Wiki / [AptGet Howto](https://help.ubuntu.com/community/AptGet/Howto)」裡面的操作步驟。

搭配下面的案例討論交互著看，

我在下面的討論回覆，或多或少都有提到相關的操作技巧。


## 套件查詢 (Package)

* Ubuntu / [apps](https://apps.ubuntu.com/cat/)
* Ubuntu / [Packages](http://packages.ubuntu.com/)


## 指令查詢 (Manpage)

* Ubuntu / [manuals](http://manpages.ubuntu.com/)


## 概念統整說明

* [#4 回覆: Ubuntu17.10升級時出現了問題](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=359142#forumpost359142) (如何探索套件和編譯套件)
* [#9 回覆: 如何救回被指令 rm -r 刪除掉的資料？ ](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358396#forumpost358396) (如何找尋套件)
* [#2 回覆: apt 出現許多錯誤訊息 ](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357764#forumpost357764) (套件庫)
* [#7 回覆: 部份應用軟體無法輸入中文](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358864#forumpost358864) (套件庫)
* 回覆: ubuntu16.04 安裝 java9 出錯 - 「[#2](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358502#forumpost358502)」，「[#3](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358504#forumpost358504)」，「[#4](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358506#forumpost358506)」(套件庫以及探索套件案例)
* [#7 回覆: 裝了 ubuntu 16.04 lts 64位元版 一直無法輸入中文 ](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358390#forumpost358390) (探索套件案例)
* [#2 回覆: ubuntu 15.04釋出](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=338916#forumpost338916) (如何下載發行版ISO)
* 回覆: 為什麼站上沒有16.10可以下載呢？ - 「[#2](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=355906#forumpost355906)」，「[#3](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=355920#forumpost355920)」(如何下載發行版ISO)


## 語系檔套件

* [#3 回覆: （新手求助）請問ubuntu終端機文字模式下 ls --help 顯示的幫助提示可以改中文嘛？](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358408#forumpost358408) ([language-pack-zh-hant-base](https://packages.ubuntu.com/xenial/language-pack-zh-hant-base))
* 回覆: ubuntun 14.04, psql 無法使用 - 「[#4](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358364#forumpost358364)」，「[#5](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358370#forumpost358370)」([language-pack-zh-hant-base](https://packages.ubuntu.com/xenial/language-pack-zh-hant-base))
* [#4 回覆: 手機照片無法預覽](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=347786#forumpost347786) ([kde-l10n-zhtw](https://packages.ubuntu.com/xenial/kde-l10n-zhtw))
* $ man [apt-file](http://manpages.ubuntu.com/manpages/xenial/en/man1/apt-file.1.html)
* $ man [check-language-support](http://manpages.ubuntu.com/manpages/xenial/en/man1/check-language-support.1.html)


## 案例討論 - 如何安裝 Chrome

* [#3 回覆: ubuntu16.04 無法安裝 google chrome ？？](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=351720#forumpost351720)
* [#6 回覆: 無法取得以下的密鑰 ID 的公鑰：](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=351864#forumpost351864)
* [#2 回覆: chrome套件問題](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=350396#forumpost350396)


## 案例討論 - 如何安裝 Adobe Flash Player

* [#2 回覆: opera 36 如何安裝 adobe flash player](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=351832#forumpost351832)
* [#7 回覆: Browser Vivaldi stable_1.0.435.38-1 Release](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=351222#forumpost351222)
* [#2 回覆: 每次開機都跳出「下載額外資料檔案失敗 flashplugin-installer」](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357664#forumpost357664)


## 案例討論 - 如何安裝 Firefox (如何讓firefox共存不同的版本)

* 回覆: Chrome 45 以上及Firefox 52以上 版本不再支援網路ATM.. - 「[#8](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357066#forumpost357066)」,「[#5](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357058#forumpost357058)」
* [#2 回覆: 「Mozilla Firefox 官方版」更新腳本](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=353256#forumpost353256)


## apt 1.0

* [#2 回覆: [教學] 探索deb套件的指引](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=318230#forumpost318230)
* [#3 回覆: apt指令應用15種範例](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357304#forumpost357304)
* [#15 回覆: （已解決）Dropbox黏在我電腦裡，刪不掉......](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=334724#forumpost334724)


## 關於 「[snap](https://en.wikipedia.org/wiki/Snappy_(package_manager))」，「[AppImage](https://en.wikipedia.org/wiki/AppImage)」，「[Flatpak](https://en.wikipedia.org/wiki/Flatpak)」

* [#4 回覆: apt指令應用15種範例](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357306#forumpost357306)


## 關於「/etc/apt/sources.list」

* [#24 回覆: Ubuntu 17.10 推出](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358818#forumpost358818)
* [#2 回覆: Ubuntu17.10升級時出現了問題](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=359082#forumpost359082)
* [#4 回覆: 關於WIFI 無線網路 RTL8192CU 驅動安裝 softAP](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357248#forumpost357248)
* $ man [sources.list](http://manpages.ubuntu.com/manpages/zesty/en/man5/sources.list.5.html)
* $ man [sources.list](https://manpages.debian.org/jessie/apt/sources.list.5.en.html)


## 關於「apt-get update」出現「Temporary failure resolving 'tw.archive.ubuntu.com'」

* [#4回覆: ubuntu server 無法update](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358316#forumpost358316)


## 如何下指令安裝「deb檔」

* Ubuntu Basic Skill / [如何安裝套件](http://samwhelp.github.io/book-ubuntu-basic-skill/book/content/package/how-to-install-package.html)
* 回覆: ubuntu16.04 無法安裝 google chrome ？？ - 「[#3](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=351720#forumpost351720)」，「[#6](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=351726#forumpost351726)」
* [#3 回覆: MeshMixer 有人裝起來了嗎？](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356536#forumpost356536)
* 回覆: 如何安裝 StarUML-v2.8.0-64-bit.deb ？ 「[#2](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356604#forumpost356604)」, 「[#4](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356608#forumpost356608)」
* [#2 回覆: [請益]關於安裝Kompozer 找不到套件](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=326754#forumpost326754)
* [Google Web Designer 已經有Linux版本可用](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=319446#forumpost319446)


## 如何下指令安裝「多個deb檔」

* [#7 回覆: debian 8.2 synaptic 無法加入 deb file:/home/XXX 的問題](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=347150#forumpost347150)


## 如何移除套件。關於「apt-get remove」和「dpkg -r」。

* 「如何強制移除套件」- 回覆: 套件系統損壞 （懷疑是 LiberOffice 與 OpenOffice 衝突）-「[#22](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=339618#forumpost339618)」，「[#23](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=339622#forumpost339622)」
* 「如何移除openoffice相關的套件」- [#16 回覆: 套件系統損壞 （懷疑是 LiberOffice 與 OpenOffice 衝突）](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=339260#forumpost339260)
* [#11 回覆: install openoffice 4.1.0 + uninstall libreoffice](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=318954#forumpost318954)
* [Dropbox黏在我電腦裡，刪不掉......](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?topic_id=95752)
* [#2 回覆: 更新套件時發生錯誤](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357508#forumpost357508)


## 關於「apt-get install -f」

* 回覆: ubuntu16.04 無法安裝 google chrome ？？ - 「[#3](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=351720#forumpost351720)」，「[#6](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=351726#forumpost351726)」
* 回覆: MeshMixer 有人裝起來了嗎？ - 「[#3](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356536#forumpost356536)」
* 回覆: 如何安裝 StarUML-v2.8.0-64-bit.deb ？ - 「[#2](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356604#forumpost356604)」，「[#10](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356620#forumpost356620)」
* [#7 回覆: debian 8.2 synaptic 無法加入 deb file:/home/XXX 的問題](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=347150#forumpost347150)
* [#2 回覆: Ubuntu 14.04 無法安裝odbcinst1debian2元件與odbcinst元件](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=335346#forumpost335346)
* [#13 回覆: （已解決）Dropbox黏在我電腦裡，刪不掉......](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=334718#forumpost334718)
* [#4 回覆: 使用dockbarX的預覽無法顯示](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=341108#forumpost341108)


## 關於「gdebi」

* 回覆: 如何安裝 StarUML-v2.8.0-64-bit.deb ？ -  「[#6](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356612#forumpost356612)」，「[#2](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356604#forumpost356604)」「[#10](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356620#forumpost356620)」，


## 關於「apt-get autoremove」

* [#6 關於 apt-get autoremove](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=331352#forumpost331352)
* [#3 關於「apt-get autoremove」(回覆: 套件系統損壞 （懷疑是 LiberOffice 與 OpenOffice 衝突）)](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=339186#forumpost339186)
* [#2 回覆: 更新套件時發生錯誤](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357508#forumpost357508)
* [#2 回覆: 移除核心時發生錯誤](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357578#forumpost357578)


## 關於「apt-get dist-upgrade」和「apt-get upgrade」

* [#2 回覆: update指令跟軟體更新不一樣？？](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=355226#forumpost355226)


## 關於「apt-get install --reinstall」

* [#3 回覆: GTX970](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=355320#forumpost355320)
* [#9 回覆: 無法執行副進程“software-properties-gtk”(沒有此一檔案或目錄)](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356756#forumpost356756)
* [#11 回覆: 登入畫面 輸入密碼處 中文部分出現方格](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=355534#forumpost355534)
* [#13 回覆: 軟體中心無法安裝程式](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=338438#forumpost338438)
* [#2 回覆: 安裝過Realtek驅動出現 Dummy Output...](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358964#forumpost358964)


## 關於「MetaPackage」

* [#5 回覆: no-ip 自動轉址安裝及設定方法(正確的方式嗎?) (何謂「MetaPackage」)](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=331336#forumpost331336)
* [#29 回覆: 桌面效能問題 (在Ubuntu如何安裝不同的桌面環境)](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=334716#forumpost334716)


## 關於「Multiarch」和「dpkg --add-architecture」

* [#10 回覆: ubuntu 14.04 安裝 skype 失敗](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=318124#forumpost318124)
* [#14 回覆: 令人驚艷的 Xubuntu14.04 beta1](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=325720#forumpost325720)
* [#2 回覆: ubuntu16.04 LTS 無法安裝ia32.libs](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356450#forumpost356450)
* [#2 回覆: 下載第三方程式失敗](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=355014#forumpost355014)


## 如何觀看「套件的Changelog」- 關於「apt-get changelog」

* Ubuntu Basic Skill / [如何查詢某個套件的「changelog」](http://samwhelp.github.io/book-ubuntu-basic-skill/book/content/package/how-to-find-out-package-changelog.html)
* [#3 回覆: 如何更新apache](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=330740#forumpost330740)
* [#10 回覆: 為何沒法升級我的 ubuntu](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=331762#forumpost331762)


## 關於「軟體中心」-「[software-center](http://packages.ubuntu.com/xenial/software-center)」,「[gnome-software](http://packages.ubuntu.com/xenial/gnome-software)」,「[ubuntu-software](http://packages.ubuntu.com/xenial/ubuntu-software)」

* [#2 回覆: 請問16.04的軟體中心無法連線之問題](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=351820#forumpost351820)
* [#2 回覆: ubuntu軟體中心 安裝指令](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=354532#forumpost354532)
* [#2 回覆: ubuntu的應用軟體太少](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357360#forumpost357360)
* Ubuntu / [apps](https://apps.ubuntu.com/cat/)


## 「如何查詢某個檔案，屬於哪個套件」- 關於「dpkg -S」或「dpkg-query -S」或「dpkg --search」或「dpkg-query --search」

* Ubuntu Basic Skill / [如何查詢某個檔案，屬於哪個套件](http://samwhelp.github.io/book-ubuntu-basic-skill/book/content/package/how-to-find-out-what-package-a-file-belongs-to.html)
* [#2 回覆: 請教指令 (Ubuntu環境下，如何查詢某個檔案，屬於哪個套件)](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=334876#forumpost334876)
* [#1 關於「System restart required」](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=355664#forumpost355664)
* [#4 回覆: 請問mysqld問題](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357924#forumpost357924)
* [#2 回覆: py2048](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357982#forumpost357982)


## 「如何查詢某個套件，安裝在系統上的所有檔案」- 關於「dpkg -L」或「dpkg-query -L」或「dpkg --listfiles」或「dpkg-query --listfiles」

* Ubuntu Basic Skill / [如何查詢某個套件安裝在系統上的所有檔案](http://samwhelp.github.io/book-ubuntu-basic-skill/book/content/package/how-to-find-out-list-of-files-installed-by-a-package.html)
* [#2 回覆: ufw 之user.roles在哪邊?](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=348810#forumpost348810)
* [#2 回覆: ubuntu16.04lts禁止使用者透過IP訪問](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357620#forumpost357620)
* [#2 回覆: Ubuntu 自動登入](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357654#forumpost357654)


## 關於「dpkg -I」或「dpkg-deb -I」或「dpkg --info」或「dpkg-deb --info」

* [#3 回覆: MeshMixer 有人裝起來了嗎？](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356536#forumpost356536)
* [#4 回覆: 如何安裝 StarUML-v2.8.0-64-bit.deb ？](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356608#forumpost356608)
* [#3 回覆: sudo dpkg -i 出現了以下錯誤訊息](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358124#forumpost358124)


## 關於「dpkg -f」或「dpkg-deb -f」或「dpkg --field」或「dpkg-deb --field」

* [#4 回覆: 如何安裝 StarUML-v2.8.0-64-bit.deb ？](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356608#forumpost356608)
* [#3 回覆: MeshMixer 有人裝起來了嗎？](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356536#forumpost356536)


## 關於「dpkg -c」或「dpkg-deb -c」或「dpkg --contents」或「dpkg-deb --contents」

* Ubuntu Basic Skill / [如何查詢某個套件安裝在系統上的所有檔案](http://samwhelp.github.io/book-ubuntu-basic-skill/book/content/package/how-to-find-out-list-of-files-installed-by-a-package.html)
* 如何探索「Ubuntu」 / [找「套件」的「檔案列表」](http://samwhelp.github.io/book-ubuntu-qna/read/howto/explore/package-filelist.html)
* [#9 回覆: 如何救回被指令 rm -r 刪除掉的資料？](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358396#forumpost358396)


## 「如何製作deb檔」- 觀於「dpkg -b」或「dpkg-deb -b」或「dpkg --build」或「dpkg-deb --build」

* 一些入門的範例，放在「[GitHub](https://github.com/samwhelp/demo-about-debian-package/tree/master/example/build)」上
* [#5 回覆: 更新套件時發生錯誤](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357534#forumpost357534)
* [#2 回覆: [分享] 青空文庫電子書閱覽器aobook](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=340346#forumpost340346)
* [#5 回覆: MeshMixer 有人裝起來了嗎？](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356540#forumpost356540)
* [[影片教學][TOSSUG] Debian 套件打包工作坊](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=339076#forumpost339076)
* [從範本快速自製 deb](http://rocksaying.tw/archives/11239791.html)


## 「如何解開deb檔」- 關於「dpkg -x」或「dpkg-deb -x」或「dpkg --extract」或「dpkg-deb --extract」

* [#5 回覆: MeshMixer 有人裝起來了嗎？](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356540#forumpost356540)
* 回覆: 如何安裝 StarUML-v2.8.0-64-bit.deb ？ - 「[#8](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356616#forumpost356616)」，[#4](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356608#forumpost356608)」
* [#15 回覆: ubuntu16.04 無法安裝 google chrome ？？](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356466#forumpost356466)
* [#5 回覆: no-ip 自動轉址安裝及設定方法(正確的方式嗎?)](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=331336#forumpost331336)
* [#2 回覆: [分享] 青空文庫電子書閱覽器aobook](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=340346#forumpost340346)
* The Debian Administrator's Handbook / [5.1. Structure of a Binary Package](https://debian-handbook.info/browse/stable/packaging-system.html#sect.binary-package-structure) ([中文頁面](https://debian-handbook.info/browse/zh-TW/stable/packaging-system.html#sect.binary-package-structure))


## 關於「dpkg -e」或「dpkg-deb -e」或「dpkg --control」或「dpkg-deb --control」

* [#5 回覆: MeshMixer 有人裝起來了嗎？](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356540#forumpost356540)
* [#2 回覆: 更新套件時發生錯誤](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357508#forumpost357508)


## 關於「dpkg-query --control-list」

* [#2 回覆: 每次開機都跳出「下載額外資料檔案失敗 flashplugin-installer」](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357664#forumpost357664)


## 如何觀看「Control File」的內容 - 關於「dpkg-query --control-show」

* [#2 回覆: 每次開機都跳出「下載額外資料檔案失敗 flashplugin-installer」](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357664#forumpost357664)


## 如何找到「Control File」路徑 - 關於「dpkg-query --control-path」或「dpkg-query -c」

* [#2 回覆: 每次開機都跳出「下載額外資料檔案失敗 flashplugin-installer」](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357664#forumpost357664)


## 關於「conffiles」

* [#20 回覆: Ubuntu 17.10 推出](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358722#forumpost358722)


## 關於「/var/lib/dpkg/info」這個資料夾

* 回覆: 軟體中心無法安裝程式 -「[#4](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=338362#forumpost338362)」，「[#12](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=338436#forumpost338436)」，「[#10](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=338410#forumpost338410)」。


## 關於「/var/lib/dpkg/status」這個檔案

* [#2 回覆: 更新套件時發生錯誤](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357508#forumpost357508)


## 「如何解開Debaian Source Package」- 關於「dpkg-source -x」或「dpkg-source --extract」

* [HOW TO UNPACK A DEBIAN SOURCE PACKAGE](http://ftp.debian.org/debian/doc/source-unpack.txt)
* Debian 參考手冊 / [2.2.13 編譯原始碼套件](http://qref.sourceforge.net/Debian/reference/ch-system.zh-tw.html#s-sourcebuild)


## 關於「add-apt-repository」

* [#4 回覆: 使用dockbarX的預覽無法顯示](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=341108#forumpost341108)


## 關於「apt-cache policy」

* [#10 回覆: 為何沒法升級我的 ubuntu](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=331762#forumpost331762)
* [#5 回覆: NetworkManager如何設定成不更新不升級?](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=353756#forumpost353756)
* [#18 回覆: ubuntu 14.04 firefox H.264 及 MSE & H.264 問題](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=355952#forumpost355952)
* [#39 回覆: unmet dependencies && broken packages](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=352458#forumpost352458)
* [#3 回覆: MeshMixer 有人裝起來了嗎？](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356536#forumpost356536)


## 安裝套件，如何指定版本安裝 - 關於「apt-get install pkg [{=pkg_version_number | /target_release}]...」

* [#29 回覆: unmet dependencies && broken packages](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=352422#forumpost352422)
* [#18 回覆: ubuntu 14.04 firefox H.264 及 MSE & H.264 問題](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=355952#forumpost355952)


## 如何阻止套件升級 - 關於「apt-mark hold」

* [#5 回覆: NetworkManager如何設定成不更新不升級?](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=353756#forumpost353756)
* [#18 回覆: ubuntu 14.04 firefox H.264 及 MSE & H.264 問題](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=355952#forumpost355952)
* [#3 回覆: unmet dependencies && broken packages](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=352334#forumpost352334)
* Debian 參考手冊 / [2.2.10 套件狀態](http://qref.sourceforge.net/Debian/reference/ch-system.zh-tw.html#s-pkgstatus)
* Debian 參考手冊 / [2.2.11 阻止套件升級](http://qref.sourceforge.net/Debian/reference/ch-system.zh-tw.html#s-puttingonhold)


## 關於「apt-cache show」

* [#5 回覆: no-ip 自動轉址安裝及設定方法(正確的方式嗎?)](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=331336#forumpost331336)


## 關於「apt-cache showpkg」

* [#5 回覆: no-ip 自動轉址安裝及設定方法(正確的方式嗎?)](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=331336#forumpost331336)


## 如何查詢某個套件，相依哪些套件 - 關於「apt-cache depends」

* Ubuntu Basic Skill / [如何查詢某個套件相依哪些套件](http://samwhelp.github.io/book-ubuntu-basic-skill/book/content/package/how-to-find-out-package-dependency.html)
* [#5 回覆: no-ip 自動轉址安裝及設定方法(正確的方式嗎?)](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=331336#forumpost331336)


## 如何查詢某個套件，被哪些套件相依 - 關於「apt-cache rdepends」或「apt-rdepends」

* Ubuntu Basic Skill / [如何查詢某個套件被哪些套件相依](http://samwhelp.github.io/book-ubuntu-basic-skill/book/content/package/how-to-find-out-package-reverse-dependency.html)
* [#5 回覆: 討論這篇「如何讓gcin開機後不多次執行」](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=354200#forumpost354200)
* [#8 回覆: 為何沒法升級我的 ubuntu](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=331650#forumpost331650)


## 如何下載「Package」- 關於「apt-get download」

* [#37 回覆: Ubuntu與嘸蝦米: 在fcitx下，(boshiamy)嘸蝦米的使用最為順暢、穩定!（新酷音、m17n、倉頡、輕鬆法亦適用）](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356638#forumpost356638)
* [#2 回覆: 更新套件時發生錯誤](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357508#forumpost357508)
* [#2 回覆: Ubuntu 自動登入](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357654#forumpost357654)
* [#9 回覆: 如何救回被指令 rm -r 刪除掉的資料？](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358396#forumpost358396)


## 如何下載「Source Package」- 關於「apt-get soruce」

* [#37 回覆: Ubuntu與嘸蝦米: 在fcitx下，(boshiamy)嘸蝦米的使用最為順暢、穩定!（新酷音、m17n、倉頡、輕鬆法亦適用）](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356638#forumpost356638)
* [#2 回覆: 更新套件時發生錯誤](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357508#forumpost357508)
* [#2 回覆: Ubuntu 自動登入](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357654#forumpost357654)

## 關於「apt-file」

* [#37 回覆: Ubuntu與嘸蝦米: 在fcitx下，(boshiamy)嘸蝦米的使用最為順暢、穩定!（新酷音、m17n、倉頡、輕鬆法亦適用）](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356638#forumpost356638)
* [#4 回覆: 無法執行副進程“software-properties-gtk”(沒有此一檔案或目錄)](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356738#forumpost356738)
* [#9 回覆: [Help] 無 /sys/class/gpio 目錄?](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356746#forumpost356746)
* 回覆: ubuntun 14.04, psql 無法使用 - 「[#3](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358362#forumpost358362)」，「[#4](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358364#forumpost358364)」
* [#4 回覆: 手機照片無法預覽](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=347786#forumpost347786)
* [#6 回覆: 部份應用軟體無法輸入中文](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358862#forumpost358862)


## 關於「apt-offline」

* [apt-offline 的使用方式(回覆: 無網路下安裝套件)](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=342438#forumpost342438)


## 關於「dpkg-reconfigure」

* [#4 回覆: 每次開機都跳出「下載額外資料檔案失敗 flashplugin-installer」](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357668#forumpost357668)


## 關於「/usr/lib/apt/apt-helper」和「/usr/share/package-data-downloads/」

* [#5 回覆: 每次開機都跳出「下載額外資料檔案失敗 flashplugin-installer」](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357678#forumpost357678)


## 關於「DpkgTriggers」

* [#5 回覆: 每次開機都跳出「下載額外資料檔案失敗 flashplugin-installer」](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357678#forumpost357678)


## 關於「/usr/lib/update-notifier/apt-check --human-readable」

* [#6 回覆: 每次開機都跳出「下載額外資料檔案失敗 flashplugin-installer」](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357690#forumpost357690)


## 關於「/usr/lib/update-notifier/apt-check -p」

* [#6 回覆: 每次開機都跳出「下載額外資料檔案失敗 flashplugin-installer」](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357690#forumpost357690)


## 關於「dpkg-scanpackages」

* [#2 回覆: apt 出現許多錯誤訊息](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357764#forumpost357764)
* [簡易的建立自己的套件庫](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=342070#forumpost342070)


## 關於「python import」如何找到模組路徑

* [#2 回覆: py2048](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357982#forumpost357982)
* [#4 回覆: 討論「請教 ezgo13 的 fcitx-chewing 輸入法之自建字庫問題」](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356930#forumpost356930)
* [#17 回覆: 裝了 ubuntu 16.04 lts 64位元版 一直無法輸入中文](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358390#forumpost358390)


## 關於「update-alternatives」和「[Debian Alternatives System](https://wiki.debian.org/DebianAlternatives)」

* 回覆: harddisk容量少了很多 - 「[#10](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=359204#forumpost359204)」，「[#11](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=359206#forumpost359206)」
* /etc/alternatives/
* /var/lib/dpkg/alternatives/


## 關於「deborphan」

* [#13 回覆: harddisk容量少了很多](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=359210#forumpost359210)


## 其他相關討論

* [回覆: ubuntu16.04 伺服器 安裝問題](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=355042#forumpost355042)
* [回覆: unmet dependencies && broken packages](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=352414#forumpost352414)
* [回覆: 請問軟體安裝及執行問題](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=348392#forumpost348392)
* [簡易的建立自己的套件庫](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=342070#forumpost342070)
* [回覆: [解決] 如何系統更新時不增加核心](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=327850#forumpost327850)
* [[教學] 探索deb套件的指引](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?topic_id=86596)
* [[教學] 從「package name」找到「source package name」的幾種方法](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=320892#forumpost320892)


## 案例

* [回覆: sudo apt-get upgrade 出再出錯誤訊息](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=347764#forumpost347764)
* [ubuntu15.04升級ubuntu15.10 後就出現以下錯誤，無法安裝mysql or mariadb](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=348654#forumpost348654)
* [Deepin Music Player無法安裝?](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=339358#forumpost339358)
* [如何確認「conky」這個套件是否有安裝](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=338260#forumpost338260)
* [回覆: 關於Xubuntu(Xfce)預設面板的修改?](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=325724#forumpost325724)
* [回覆: 關於unity是什麼指令和消失如何復原的問題](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=325830#forumpost325830)
* [回覆: 更新出問題](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=327764#forumpost327764)
* [回覆: apt-get install 無法安裝問題 套件消失 拜託高手解答!!!](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=326588#forumpost326588)
* [回覆: ubuntu 14.04改版後 empathy和pidgin內皆沒有支援QQ了？](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=319330#forumpost319330)
* [回覆: 為何沒法升級我的 ubuntu](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=331646#forumpost331646)
* [回覆: 求助 nm-applet 圖示裡的"編輯連線"無法點選???](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=335010#forumpost335010)
* [回覆: [詢問]關於indicator位置排序](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=335738#forumpost335738)
* [aptitude更新套件的技巧](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=335672#forumpost335672)
* [無法取得套件 vim](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=338096#forumpost338096)
* [回覆: debian 8.2 synaptic 無法加入 deb file:/home/XXX 的問題](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=347140#forumpost347140)
* [回覆: 一個關於nautilus的奇怪問題](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=349434#forumpost349434)
* [回覆: [Help] iBus 可否由程式控制切換?](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=351838#forumpost351838)
* [回覆: 我的KOrganizer無法切換中文](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=351812#forumpost351812)
* [回覆: 請問如何取消視窗置頂功能](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=351846#forumpost351846)


* [回覆: [自製注音輸入法表格分享]全字庫注音2016年05月份版本](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=354132#forumpost354132)
* [Mac透過指令更新的說明](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=335644#forumpost335644)


## Ubuntu 官方參考文件

* Ubuntu Community Help Wiki / [SoftwareManagement](https://help.ubuntu.com/community/SoftwareManagement)
* Ubuntu Community Help Wiki / [AptGet Howto](https://help.ubuntu.com/community/AptGet/Howto)
* Ubuntu Community Help Wiki /  [Repositories / CommandLine ](https://help.ubuntu.com/community/Repositories/CommandLine)
* Ubuntu Community Help Wiki /  [Repositories / Ubuntu ](https://help.ubuntu.com/community/Repositories/Ubuntu)
* Ubuntu Community Help Wiki /  [SecureApt](https://help.ubuntu.com/community/SecureApt)
* Ubuntu Community Help Wiki /  [UpdatingADeb](https://help.ubuntu.com/community/UpdatingADeb)
* [Ubuntu Packaging Guide](http://packaging.ubuntu.com/html/) (Source Package: [ubuntu-packaging-guide](http://packages.ubuntu.com/source/xenial/ubuntu-packaging-guide))


## Ubuntu TW Wiki

* [Aptitude](http://wiki.ubuntu-tw.org/index.php?title=Aptitude)
* [Synaptic](http://wiki.ubuntu-tw.org/index.php?title=Synaptic)

## Debian 文件

* APT HOWTO / [第 3 章 - 套裝軟體管理](https://www.debian.org/doc/manuals/apt-howto/ch-apt-get.zh-tw.html)
* Debian Reference / [Chapter 2. Debian package management](https://www.debian.org/doc/manuals/debian-reference/ch02.en.html)
* Debian Wiki / [PackageManagement](https://wiki.debian.org/PackageManagement)
* Debian Wiki / [DebianPackageManagement](https://wiki.debian.org/DebianPackageManagement)
* Debian Wiki / [DebianPackage](https://wiki.debian.org/DebianPackage)
* Debian Wiki / [Package](https://wiki.debian.org/Package)
* Debian Wiki / [SourcePackage](https://wiki.debian.org/SourcePackage)
* Debian Wiki / [ListInstalledPackages](https://wiki.debian.org/ListInstalledPackages)
* Debian Wiki / [SecureApt](https://wiki.debian.org/SecureApt)
* Debian Wiki / [DpkgTriggers](https://wiki.debian.org/DpkgTriggers)
* Debian Wiki / [MaintainerScripts](https://wiki.debian.org/MaintainerScripts)
* Manoj Srivastava / [Maintainer scripts](https://people.debian.org/~srivasta/MaintainerScripts.html)
* Debian Wiki / [SourcesList](https://wiki.debian.org/SourcesList)
* Debian Wiki / [BuildingTutorial](https://wiki.debian.org/BuildingTutorial)
* Debian Wiki / [BuildingAPackage](https://wiki.debian.org/BuildingAPackage)
* [HOW TO UNPACK A DEBIAN SOURCE PACKAGE](http://ftp.debian.org/debian/doc/source-unpack.txt)
* [Debian Developers' Manuals](https://www.debian.org/doc/devel-manuals)



## The Debian Administrator's Handbook

* [The Debian Administrator's Handbook](https://debian-handbook.info/browse/stable/) ([中文版](https://debian-handbook.info/browse/zh-TW/stable/index.html))

### 討論串

* [The Debian Administrator's Handbook](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=355510#forumpost355510)
* [[Book] The Debian Administrator's Handbook](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=318678#forumpost318678)


## Debian Reference

* [Debian Reference](https://www.debian.org/doc/manuals/debian-reference/) / [Chapter 2. Debian package management](https://www.debian.org/doc/manuals/debian-reference/ch02.en.html)


## Debian Reference ([qref.sourceforge.net](http://qref.sourceforge.net/))

* Debian 參考手冊 / [2.2 Debian 套件管理系統](http://qref.sourceforge.net/Debian/reference/ch-system.zh-tw.html#s-pkg-basics)
* Debian 參考手冊 / [第 6 章 - Debian 套件管理系統](http://qref.sourceforge.net/Debian/reference/ch-package.zh-tw.html)
* Debian 參考手冊 / [2.2.8 套件相依性](http://qref.sourceforge.net/Debian/reference/ch-system.zh-tw.html#s-depends)


## 站外文章

* [Ubuntu Linux apt-get 徹底移除套件（purge）的使用方式](http://blog.lyhdev.com/2013/11/ubuntu-linux-apt-get-purge.html)
* [apt 常用指令](http://b2d-linux.com/?p=155)
* [Package_managers (不同平台的套件管理指令對照表)](http://wiki.openvz.org/Package_managers)
* [Debian 重新編譯套件 (Rebuilding Debian packages) ](http://chimerhapsody.blogspot.tw/2013/03/debian-rebuilding-debian-packages.html)

* [Debian 相關](http://datahunter.org/debian)


## Manpage

* $ man [dpkg](http://manpages.ubuntu.com/manpages/xenial/en/man1/dpkg.1.html)
* $ man [dpkg-query](http://manpages.ubuntu.com/manpages/xenial/en/man1/dpkg-query.1.html)
* $ man [dpkg-deb](http://manpages.ubuntu.com/manpages/xenial/en/man1/dpkg-deb.1.html)
* $ man [apt-get](http://manpages.ubuntu.com/manpages/xenial/en/man8/apt-get.8.html)
* $ man [apt-cache](http://manpages.ubuntu.com/manpages/xenial/en/man8/apt-cache.8.html)
* $ man [deb-control](http://manpages.ubuntu.com/manpages/xenial/en/man5/deb-control.5.html)
* $ man [deb-src-control](http://manpages.ubuntu.com/manpages/xenial/en/man5/deb-src-control.5.html)


## Package

* [dpkg](http://packages.ubuntu.com/trusty/dpkg) ([探索](http://samwhelp.github.io/book-ubuntu-exploration/book/content/package/dpkg/info.html))
* [dpkg-dev](http://packages.ubuntu.com/trusty/dpkg-dev) ([探索](http://samwhelp.github.io/book-ubuntu-exploration/book/content/package/dpkg-dev/info.html))
* [apt](http://packages.ubuntu.com/trusty/apt) ([探索](http://samwhelp.github.io/book-ubuntu-exploration/book/content/package/apt/info.html))


##  影片教學 ([相關討論](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=339076#forumpost339076))
