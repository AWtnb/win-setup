# CorvusSKK

https://github.com/AWtnb/CorvusSKK

## ユーザー辞書のバックアップ

1. `辞書2` タブのバックアップ先ディレクトリをローカルの任意のディレクトリに指定する。
2. `~~.bak` ファイルを任意の方法でバックアップする（例：Synology Drive Client）

## 辞書サーバー初期設定（Google 日本語入力 API の使用）

参考： [CorvusSKKのおすすめ設定と使い方 | Zenn](https://zenn.dev/toriwasa/articles/327d11c45a62e8)

1. https://github.com/nathancorvussolis/crvskkserv/releases/latest から最新版を取得
2. 解凍して任意のフォルダに配置する（`Personal` など）
3. `crvskkserv.exe` のショートカットをスタートアップに設置
4. `crvskkserv.exe` を起動して `GoogleCGIAPI追加` を押下。
    - `見出し語の検索除外条件` ：「先頭から英数とナンバーサインだけが続くもの」もしくは「非英数（＝ひらがな）が続いてアルファベットで終了するもの」

        ```
        (^[A-Za-z0-9#]+)|([^A-Za-z0-9]+[a-z])
        ```

    - その他はデフォルトのままでOK
5. CorvusSKK の設定ダイアログを開き、辞書1タブの `SKK辞書サーバーを使用する` をチェック。その他の設定はデフォルト。


### `crvskkserv.ini`

```
[crvskkserv]
port=1178
loopback=1
googlecgiapi_url_prefix=https://www.google.com/transliterate?langpair=ja-Hira|ja&text=
googlecgiapi_url_suffix=,
dic-1=googlecgiapi/(^[-A-Za-z0-9 #]+)|([^A-Za-z0-9]+[a-z])/G/1000/euc/
```