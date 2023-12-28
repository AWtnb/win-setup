# CorvusSKK

辞書サーバーを使用して Google 日本語入力 CGI API を利用する。

参考： [CorvusSKKのおすすめ設定と使い方 | Zenn](https://zenn.dev/toriwasa/articles/327d11c45a62e8)

## 初期設定

1. https://github.com/nathancorvussolis/crvskkserv/releases/latest から最新版を取得
2. 解凍して任意のフォルダに配置する（`Personal` など）
3. `crvskkserv.exe` のショートカットをスタートアップに設置
4. `crvskkserv.exe` を起動して `GoogleCGIAPI追加` を押下。諸々はデフォルトのままでOK
    - `見出し語の検索除外条件` は `^[A-Za-z0-9]+` （英数から始まるもの）でもいいかも（デフォルトは `[^A-Za-z0-9]+[a-z]`）
5. CorvusSKK の設定ダイアログを開き、辞書1タブの `SKK辞書サーバーを使用する` をチェック。その他の設定はデフォルト。

