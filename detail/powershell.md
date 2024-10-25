# PowerShell


1. `Get-ExecutionPolicy` の結果が `RemoteSigned` でなければ管理者権限で `Set-ExecutionPolicy RemoteSigned`
1. scoop インストール

    ```PowerShell
    Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
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

1. [リポジトリ](https://github.com/AWtnb/PowerShell) に従ってセットアップ
1. ツール類のインストール

    ```
    echo bat wezterm go irfanview-lean ksnip less monolith nodejs obsidian pdf-xchange-editor python rustup ueli vscode | % {scoop install $_}
    ```
