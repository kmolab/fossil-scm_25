<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="leo.20180101224110.1"><vh>@settings</vh>
<v t="leo.20180101224110.2"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="leo.20180101224110.3"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="leo.20180421205640.1"><vh>readme</vh></v>
<v t="leo.20180101224326.1"><vh>@button mingw32-make</vh></v>
<v t="leo.20180101234621.1"><vh>Requirements</vh></v>
<v t="leo.20180101225953.1"><vh>Debug</vh></v>
<v t="leo.20180101230003.1"><vh>cat and grep</vh></v>
<v t="leo.20180101230020.1" a="E"><vh>reference</vh>
<v t="leo.20180101230020.2"><vh>add features to Fossil SCM</vh></v>
<v t="leo.20180101230020.3"><vh>source code tour</vh></v>
<v t="leo.20180101230020.4"><vh>learn tcl</vh></v>
</v>
<v t="leo.20180101224058.2" a="E"><vh>@path ./../</vh>
<v t="leo.20180101232407.1"><vh>@edit .gitignore</vh></v>
<v t="leo.20180101224307.1"><vh>set PREFIX = x86_64-w64-mingw32-</vh></v>
<v t="leo.20180101232359.1" a="E"><vh>@path win</vh>
<v t="leo.20180101224222.1"><vh>@edit Makefile.mingw</vh></v>
</v>
</v>
<v t="leo.20180101230054.1"><vh>importer script</vh></v>
</vnodes>
<tnodes>
<t tx="leo.20180101224058.2"></t>
<t tx="leo.20180101224110.1"></t>
<t tx="leo.20180101224110.2">QSplitter::handle {
    background-color: #CAE1FF; /* lightSteelBlue1 */
}

QStackedWidget {
    /* background-color:lightpink; */
    border-color: red;
    padding: 0px;
    /* border-width: 0px; */
    /* background-color: yellow; */
}

QSplitter {
    border-color: white;
    background-color: white;
    border-style: solid;
}

QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="leo.20180101224110.3">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="leo.20180101224307.1"></t>
<t tx="leo.20180101224326.1">@language python
# 利用執行緒執行 mingw32-make 指令
import os
import threading

def domake():
    os.chdir("./../compat/zlib/")
    os.system("mingw32-make -f win32/Makefile.gcc clean")
    os.system("mingw32-make -f win32/Makefile.gcc")
    g.es("zlib mingw32-make -f win32/Makefile.gcc done")
    os.chdir("./../../")
    os.system("mingw32-make -f win/Makefile.mingw clean")
    os.system("mingw32-make -f win/Makefile.mingw")
    g.es("Fossil SCM mingw32-make -f win/Makefile.mingw done")

make = threading.Thread(target=domake)
make.start()</t>
<t tx="leo.20180101225953.1">https://stackoverflow.com/questions/21679131/error-invalid-instruction-suffix-for-push

no windres.exe

https://github.com/Alexpux/MSYS2-packages/issues/937

copy windres.exe to x86_64-w64-mingw32-windres.exe</t>
<t tx="leo.20180101230003.1">from

http://gnuwin32.sourceforge.net/packages/coreutils.htm

get coreutils

set path to coreutils/bin</t>
<t tx="leo.20180101230020.1">https://www.reddit.com/r/programming/comments/5yrhri/fossil_scm_now_supports_hardenedsha1_and_sha3256/</t>
<t tx="leo.20180101230020.2">https://www.fossil-scm.org/xfer/doc/trunk/www/adding_code.wiki</t>
<t tx="leo.20180101230020.3">http://fossil-scm.org/index.html/doc/trunk/www/makefile.wiki</t>
<t tx="leo.20180101230020.4">tcl - tool command language

https://www.tutorialspoint.com/tcl-tk/tcl_tk_tutorial.pdf</t>
<t tx="leo.20180101230054.1">'''Recursively import all ['.cpp'] files in a directory and clean the result.'''

# Latest change: use c.recursiveImport.

c.recursiveImport(
    dir_ = r'./../',
    kind = '@clean',
    safe_at_file = True,
    theTypes = ['.c']
)</t>
<t tx="leo.20180101232359.1"></t>
<t tx="leo.20180101234621.1">http://wcmg3.kmol.info/downloads/kmol2018.7z

and

http://gnuwin32.sourceforge.net/packages/coreutils.htm

need Git/bin/sh.exe</t>
<t tx="leo.20180421205640.1">採用 MSYS2 編譯 Fossil SCM 過程, 可以從 Gnuwin32 coreutils 取得視窗環境下執行的 cat 與 grep, 並且確定 sh.exe 位於指令搜尋路徑 (例如, 透過 git/bin 目錄中的 sh.exe), 先編譯 Fossil SCM 附帶的 zlib 後, 再設定 PREFIX = x86_64-w64-mingw32-, 就可順利完成 fossil.exe 的編譯. 在不修改 win/Makefile.mingw 的情況下, 必須與 zlib1.dll 配合才能執行. 若開啟 LIB = -static 設定, 則可以將程式庫納入 fossil.exe 中執行。

取得 fossil clone 原始碼

從 Fossil SCM 倉儲取得原始碼壓縮檔後, 在 wd/fossil 目錄中解開 trunk 最新版本的原始碼, 目前為 Fossil SCM 2.5 版.

fossil clone https://www.fossil-scm.org fossil.fossil
cd wd
mkdir fossil
cd fossil
fossil open ./../../fossil.fossil

編譯 zlib

在 MSYS2 環境中編譯 Fossil SCM 時, 必須先編譯 compat/zlib

cd compat/zlib
mingw32-make -f win32/Makefile.gcc

編譯 fossil.exe

之後, 再退出 compat/zlib 目錄, 回到 wd/fossil 目錄中, 編輯 win/Makefile.mingw, 設定

PREFIX = x86_64-w64-mingw32-

接著以 mingw32-make -f win/Makefile.mingw 編譯 fossil.exe

執行 fossil.exe 時, 必須搭配 compat/zlib/zlib1.dll 才能執行.

根據以上說明所建立的教學用倉儲位於: https://github.com/kmolab/fossil-scm_25</t>
</tnodes>
</leo_file>
