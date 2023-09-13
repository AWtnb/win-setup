# PowerShell

## 設定の反映

1. `Get-ExecutionPolicy` の結果が `RemoteSigned` でなければ管理者権限で `Set-ExecutionPolicy RemoteSigned`
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

scoop をインストールしたら `scoop install git` で git を有効化。
git の設定を済ませておく。

```
git config --global user.name awtnb
git config --global user.email （メールアドレス）
```


それから下記コマンドで bucket を追加。

```
scoop bucket add extras
```


よく使うツール類は下記コマンドで一括インストール。

```
echo bat wezterm go irfanview-lean ksnip less monolith museeks nodejs obsidian pdf-xchange-editor python rustup ueli vscode | % {scoop install $_}
```

### Obsidian

+ [Hotkeys](./obsidian/hotkeys.json)
+ Vault 別のショートカット作成：
    1. コンテキストメニューからショートカットを新規作成
    1. `項目の場所` に `obsidian://open/?vault=（Vault名のURLエンコーディング）` を指定