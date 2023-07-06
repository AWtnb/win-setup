# Syncthing

無視するファイル名（ `.stignore` ）を下記のように設定する。


```
node_modules
keyhac.ini
```

参考：

+ [公式](https://docs.syncthing.net/v1.23.5/users/ignoring)
+ [Syncthingを使ってみる、その3 | GWT Center](https://www.gwtcenter.com/using-syncthing-3)


## アプリ別同期設定

### Obsidian

`.stignore` を下記のように設定。


```
workspace.json
workspace-mobile.json
```

### Google 日本語入力

`C:\Users\USERNAME\AppData\LocalLow\Google\Google Japanese Input` を同期する。

`.stignore` を下記のように設定。

```
!user_dictionary.db
!config1.db
*
```


## Synology NAS

DSM にも Syncthing を追加する。

### 1. パッケージソースの追加

DSM 用の Syncthing は [SynoCommunity](https://synocommunity.com/) から提供されている。

公式のガイドに従って `SynoCommunity` という名前で `https://packages.synocommunity.com/` をパッケージソースに追加する。

![img](./img/dsm-package-center.png)

### 2. パッケージのインストール

ソースを追加したので `Syncthing` と検索すればパッケージが見つかるはずなのでインストールする。

セキュリティのためにユーザー名とパスワードを設定するように求められるので入力する。このときに指定するのは DSM のユーザー名・パスワードと同じである必要はない。

### 4. 同期用のフォルダ作成

コントロールパネルから共有フォルダを作成。

![img](./img/dsm-sync-folder-add.png)

### 3. 権限の設定

読み書きできるように `システム内部ユーザー` から `sc-syncthing` を選んで権限を設定する。

![img](./img/dsm-sync-folder-permission.png)

ローカルユーザーは特に権限を設定しなくても問題ない様子。

この設定をしないと、後述の Syncthing 設定画面で `~~~~ permission denied` というエラーが出てしまう。


### 4. Syncthing の設定

最初に左上のメニューからデフォルト値を設定する。

![img](./img/dsm-st-global-setting.png)

`フォルダーのデフォルトの編集` をクリック。

![img](./img/dsm-st-global-default.png)

`フォルダー名` は任意。重要なのは `フォルダーパス` で、上記で作成した共有フォルダへのパスを指定する。

`/volume1` をルートとして、この場合は直下に `syncthing` フォルダを作成したので `/volume1/syncthing` と指定する（パス区切りは Windows であってもスラッシュを使用する）。

![img](./img/dsm-st-default-folder.png)

図にあるように、デフォルトだと `@appdata` という隠しフォルダ内に共有フォルダを作る設定になっている。この隠しフォルダは DSM からは見えないので権限も設定できずエラーになる。忘れがちなので注意。


### 5. 同期用のフォルダ作成

上記の設定がうまくいっていれば、 `フォルダー名` で指定した内容が `フォルダーパス` にも自動的に反映されるはず。

![img](./img/dsm-st-sync-setting.png)