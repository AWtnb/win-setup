# CorvusSKK

## ユーザー辞書のバックアップ

1. `辞書2` タブのバックアップ先ディレクトリをローカルの任意のディレクトリに指定する。
2. `~~.bak` ファイルを任意の方法でバックアップする（例：Synology Drive Client）

## 辞書サーバー初期設定（Google 日本語入力 API の使用）

参考： [CorvusSKKのおすすめ設定と使い方 | Zenn](https://zenn.dev/toriwasa/articles/327d11c45a62e8)

1. https://github.com/nathancorvussolis/crvskkserv/releases/latest から最新版を取得
2. 解凍して任意のフォルダに配置する（`Personal` など）
3. `crvskkserv.exe` のショートカットをスタートアップに設置
4. `crvskkserv.exe` を起動して `GoogleCGIAPI追加` を押下。
    - `見出し語の検索除外条件` は `(^[A-Za-z0-9 \/\-]+)|([^A-Za-z0-9]+[a-z])` （「先頭から英数〔と一部の記号〕だけが続くもの」もしくは「ひらがなが続いて1文字のアルファベットで終了するもの」）
    - その他はデフォルトのままでOK
5. CorvusSKK の設定ダイアログを開き、辞書1タブの `SKK辞書サーバーを使用する` をチェック。その他の設定はデフォルト。

