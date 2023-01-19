# PowerShell

## 設定の反映

1. `Get-ExecutionPolicy` の結果が `RemoteSigned` でなければ管理者権限で `Set-ExecutionPolicy RemoteSigned`
1.  初回のみ `.\src\copy_google_ime.ps1` を実行して Dropbox 内の `config1.db` と `user_dictionary.db` を `C:\Users\USER\AppData\LocalLow\Google\Google Japanese Input` にコピーする
    + 再起動して初回の設定を反映させる
1. 管理者権限で下記スクリプトを実行してセットアップ
    + `.\src\pwsh.ps1`
    + `.\src\keyhac.ps1`
    + `.\src\mery.ps1`
    + `.\src\mousegesuturel.ps1`
    + `.\src\sumatrapdf.ps1`

## scoop

```
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
```

scoop をインストールしたら `scoop install git` で git を有効化。それから下記コマンドで bucket を追加。

```
scoop bucket add extras
```

このときついでに git の設定を済ませておくと楽。

```
git config --global user.name awtnb
git config --global user.email （メールアドレス）
```

よく使うツール類は下記コマンドで一括インストール。

```
echo bat cmder go irfanview-lean ksnip less monolith museeks nodejs obsidian pdf-xchange-editor pdftk python rustup ueli vscode xnviewmp youtube-dl | % {scoop install $_}
```

### Obsidian

+ [Hotkeys](./obsidian/hotkeys.json)
+ Vault 別のショートカット作成：
    1. コンテキストメニューからショートカットを新規作成
    1. `項目の場所` に `obsidian://open/?vault=（Vault名のURLエンコーディング）` を指定