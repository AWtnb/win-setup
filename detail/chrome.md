# Chrome

## サブアカウントを追加する


1. メインのアカウントでブラウザにログインする
1. アカウントのアイコンからメニューを開いて `追加` をクリック

    ![img](./img/multi-account-1.png)

## アカウントごとにショートカットを作成する

1. 歯車アイコンをクリック

    ![img](./img/multi-account-2.png)

1. 表示されたメニューの中から対象のアカウントの `︙` メニューを開いて `編集` をクリック

    ![img](./img/multi-account-3.png)

1. スクロールすると `デスクトップにショートカットを作成する` という設定項目があるのでオンにする

    ![img](./img/multi-account-4.png)

1. デスクトップに作成されたショートカットを `C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu` に置くことで、スタートメニューの検索対象に登録できる


## Extension

### [shortkeys](https://github.com/crittermike/shortkeys)

```json
[
  {
    "key": "alt+shift+o",
    "label": "close-other-tabs",
    "action": "onlytab",
    "sites": "",
    "sitesArray": [
      ""
    ]
  },
  {
    "key": "ctrl+alt+h",
    "label": "close-to-left",
    "action": "closelefttabs",
    "sites": "",
    "sitesArray": [
      ""
    ]
  },
  {
    "key": "ctrl+alt+l",
    "label": "close-to-right",
    "action": "closerighttabs",
    "sites": "",
    "sitesArray": [
      ""
    ]
  }
]
```