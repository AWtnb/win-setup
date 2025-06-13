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

1. 自作ツール類をインストールして、各READMEの内容に従ってセットアップ

    ```
    git clone https://github.com/AWtnb/cfiler.git
    git clone https://github.com/AWtnb/CorvusSKK.git
    git clone https://github.com/AWtnb/keyhac.git
    git clone https://github.com/AWtnb/PowerShell.git
    git clone https://github.com/AWtnb/wezterm.git
    git clone https://github.com/AWtnb/mery-macros.git
    ```