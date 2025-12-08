# Windows Setup Memo

## フォントのインストール

- [IBM-Plex-Sans](https://github.com/IBM/plex/releases)
- [HackGen](https://github.com/yuru7/HackGen/releases)
- [InGenUI](https://github.com/yuru7/InGenUI/releases)
- [PlemolJP](https://github.com/yuru7/PlemolJP/releases)
- [UDEVGothic](https://github.com/yuru7/udev-gothic/releases)


## Windows の設定

- [システム設定](./detail/windows_system.md)
- [プリインストールアプリの削除](./detail/clean_preinstalled.md)



## 各種アプリのインストール

Windows11以降であればWinGetは標準でインストールされているはず。
もし未インストールであれば [Microsoft Store](https://apps.microsoft.com/detail/9nblggh4nns1) からインストールしておく。

1. [PowerShell](https://github.com/PowerShell/PowerShell/releases)
    1. [公式](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.5) に従って `winget install --id Microsoft.PowerShell --source winget`
1. [Dropbox](https://www.dropbox.com/home)
1. Syncthing ([github.com/Martchus/syncthingtray](https://github.com/Martchus/syncthingtray))
    - `scoop install syncthingtray`
1. [CorvusSKK](https://nathancorvussolis.github.io/)
    1. [公式](https://nathancorvussolis.github.io/) に従って `winget install -h corvusskk -s winget`
1. [Mery](https://www.haijin-boys.com/)
1. [ThunderBird](https://www.thunderbird.net/ja/)
1. [SumatraPDF](https://www.sumatrapdfreader.org/download-free-pdf-viewer)


### 各アプリの設定

- [PowerShell](./detail/powershell.md)
- [Syncthing](./detail/syncthing.md)
- [keyhac](https://github.com/AWtnb/keyhac)
- [cfiler](https://github.com/AWtnb/cfiler)
- [CorvusSKK](./detail/corvusskk.md)
- [Obsidian](./detail/obsidian.md)
- [Chrome](./detail/chrome.md)
- [Firefox](./detail/firefox.md)
- [SumatraPDF](./detail/sumatrapdf.md)
    - https://github.com/AWtnb/SumatraPDF-setting
- [Thunderbird](./detail/thunderbird.md)

