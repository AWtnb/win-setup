# CorvusSKK

https://github.com/AWtnb/CorvusSKK

## ユーザー辞書のバックアップ

`辞書2` タブのバックアップ先ディレクトリをローカルの任意のディレクトリに指定する（上記リポジトリの[この箇所](https://github.com/AWtnb/CorvusSKK/blob/3987b5cfffa87f948976dd518bb96407341c9f00/CorvusSKK/config.xml#L20)）。

## 辞書サーバー初期設定（Google 日本語入力 API の使用）

参考： [CorvusSKKのおすすめ設定と使い方 | Zenn](https://zenn.dev/toriwasa/articles/327d11c45a62e8)

1. https://github.com/nathancorvussolis/crvskkserv/releases/latest から最新版を取得
2. 解凍して任意のフォルダに配置する（`Personal` など）
3. `crvskkserv.exe` のショートカットをスタートアップに設置
4. `crvskkserv.exe` を起動して `GoogleCGIAPI追加` を押下。
    - `見出し語の検索除外条件` など諸々はデフォルトのままでOK
5. CorvusSKK の設定ダイアログを開き、辞書1タブの `SKK辞書サーバーを使用する` をチェック。その他の設定はデフォルト。

