# Windows Setup Memo

## フォントのインストール

- [IBM-Plex-Sans](https://github.com/IBM/plex/releases)
- [HackGen](https://github.com/yuru7/HackGen/releases)
- [InGenUI](https://github.com/yuru7/InGenUI/releases)
- [PlemolJP](https://github.com/yuru7/PlemolJP/releases)
- [UDEVGothic](https://github.com/yuru7/udev-gothic/releases)


## Windows 設定

[システム設定](./apps/windows_system.md)


## 各種アプリのインストール・設定

Windows11以降であればWinGetは標準でインストールされているはず。
もし未インストールであれば [Microsoft Store](https://apps.microsoft.com/detail/9nblggh4nns1) からインストールしておく。

### Chrome

[プロファイル設定](./apps/chrome.md)

### Firefox

[`about:config`などを設定](./apps/firefox.md)


### [Dropbox](https://www.dropbox.com/home)

### PowerShell

`winget install --id Microsoft.PowerShell --source winget` （[公式](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.5)）

■ scoop インストール

```PowerShell
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

■ git

https://github.com/settings/emails で `@users.noreply.github.com` のメールを確認して設定する。

```
scoop install git
git config --global user.name AWtnb
git config --global user.email （メールアドレス）

```

■ ghq

```
scoop install ghq
```

```
scoop install gh
gh extension install kawarimidoll/gh-q
git config --global ghq.user AWtnb
```


■ bucket 追加

```
scoop bucket add extras
```

■ https://github.com/AWtnb/PowerShell

```
ghq get https://github.com/AWtnb/PowerShell.git
```

### [CorvusSKK](https://nathancorvussolis.github.io/)

1. [公式](https://nathancorvussolis.github.io/) に従って `winget install -h corvusskk -s winget`
1. `ghq get https://github.com/AWtnb/CorvusSKK.git`
1. [設定](./apps/corvusskk.md)

### [Mery](https://www.haijin-boys.com/)

```
ghq get https://github.com/AWtnb/mery-macros.git
```

### Syncthing ([github.com/Martchus/syncthingtray](https://github.com/Martchus/syncthingtray))

```
scoop install syncthingtray
```

[設定](./apps/syncthing.md)

### keyhac

```
ghq get https://github.com/AWtnb/keyhac.git
```

### cfiler

```
ghq get https://github.com/AWtnb/cfiler.git
```

### [SumatraPDF](https://www.sumatrapdfreader.org/download-free-pdf-viewer)

1. インストール画面では「すべてのユーザーに対してインストール」選択する
1. https://github.com/AWtnb/SumatraPDF-setting

### [ThunderBird](https://www.thunderbird.net/ja/)

- [Thunderbird のデータを新しいコンピューターに移動する | Thunderbird ヘルプ](https://support.mozilla.org/ja/kb/moving-thunderbird-data-to-a-new-computer?redirectslug=moving-thunderbird-data-new-computer&redirectlocale=ja)
- [アドオン設定](./apps/thunderbird.md)

### [Everything](https://www.voidtools.com/downloads/)

- 設定は `AppData\Roaming\Everything\Everything.ini`

### Obsidian

```
scoop install obsidian
```

### PowerToys

```
scoop install powertoys
```

- 設定は `%USERPROFILE%\Documents\PowerToys\Backup`
