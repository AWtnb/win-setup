# Windows Setup Memo

## フォントのインストール

- [IBM-Plex-Sans](https://github.com/IBM/plex/releases)
- [HackGen](https://github.com/yuru7/HackGen/releases)
- [InGenUI](https://github.com/yuru7/InGenUI/releases)
- [PlemolJP](https://github.com/yuru7/PlemolJP/releases)
- [UDEVGothic](https://github.com/yuru7/udev-gothic/releases)


## Windows の設定

- [システム設定](./windows_system.md)
- [プリインストールアプリの削除](./clean_preinstalled.md)


## 各種アプリのインストール・設定

Windows11以降であればWinGetは標準でインストールされているはず。
もし未インストールであれば [Microsoft Store](https://apps.microsoft.com/detail/9nblggh4nns1) からインストールしておく。

1. Chrome
    - [プロファイル設定](./chrome.md)
1. Firefox
    - [`about:config`などを設定](./firefox.md)
1. [Dropbox](https://www.dropbox.com/home)
1. [CorvusSKK](https://nathancorvussolis.github.io/)
    1. [公式](https://nathancorvussolis.github.io/) に従って `winget install -h corvusskk -s winget`
    1. `git clone https://github.com/AWtnb/CorvusSKK`
    1. [設定](./corvusskk.md)
1. [Mery](https://www.haijin-boys.com/)
    - `git clone https://github.com/AWtnb/mery-macros.git`
1. PowerShell
    1. `winget install --id Microsoft.PowerShell --source winget` （[公式](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.5)）
    1. scoop インストール
        ```PowerShell
        Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
        ```
    1. git 有効化
        ```
        scoop install git
        git config --global user.name AWtnb
        git config --global user.email （メールアドレス）
        ```
    1. bucket 追加
        ```
        scoop bucket add extras
        ```
    1. https://github.com/AWtnb/PowerShell
1. Syncthing ([github.com/Martchus/syncthingtray](https://github.com/Martchus/syncthingtray))
    1. `scoop install syncthingtray`
    1. [設定](./syncthing.md)
1. keyhac
    - `git clone https://github.com/AWtnb/keyhac`
1. cfiler
    - `git clone https://github.com/AWtnb/cfiler`
1. [SumatraPDF](https://www.sumatrapdfreader.org/download-free-pdf-viewer)
    1. インストール画面では「すべてのユーザーに対してインストール」選択する
    1. https://github.com/AWtnb/SumatraPDF-setting
1. [ThunderBird](https://www.thunderbird.net/ja/)
    - [Thunderbird のデータを新しいコンピューターに移動する | Thunderbird ヘルプ](https://support.mozilla.org/ja/kb/moving-thunderbird-data-to-a-new-computer?redirectslug=moving-thunderbird-data-new-computer&redirectlocale=ja)
    - [アドオン設定](./thunderbird.md)
1. [Everything](https://www.voidtools.com/downloads/)
    - 設定は `AppData\Roaming\Everything\Everything.ini`
1. Obsidian
    - `scoop install obsidian`
    - 以下の内容を `.url` の拡張子で保存するとVaultへのショートカットとなる。

        ```
        [InternetShortcut]
        URL=obsidian://open/?path=（Vaultのフルパス）
        ```
1. PowerToys
    - `scoop install powertoys`
    - 設定は `%USERPROFILE%\Documents\PowerToys\Backup` から復元可能
