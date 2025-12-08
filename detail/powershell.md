# PowerShell


1. `Get-ExecutionPolicy` の結果が `RemoteSigned` でなければ管理者権限で `Set-ExecutionPolicy RemoteSigned`
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

1. 自作ツール類をインストールして、各READMEの内容に従ってセットアップ

    ```
    git clone https://github.com/AWtnb/cfiler
    git clone https://github.com/AWtnb/CorvusSKK
    git clone https://github.com/AWtnb/git-behind-checker
    git clone https://github.com/AWtnb/keyhac
    git clone https://github.com/AWtnb/mery-macros
    git clone https://github.com/AWtnb/PowerShell
    git clone https://github.com/AWtnb/set-keyrate
    git clone https://github.com/AWtnb/wezterm
    ```