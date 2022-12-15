# FireFox

## アドオン

### [shortkeys](https://addons.mozilla.org/ja/firefox/addon/shortkeys/)

```json
[
    {
      "action": "onlytab",
      "key": "alt+shift+o",
      "label": "other-close",
      "sites": "",
      "sitesArray": [
        ""
      ]
    },
    {
      "key": "alt+shift+n",
      "label": "to-new-window",
      "action": "movetabtonewwindow"
    }
  ]
```

## `about:config`

+ 最終タブで閉じないようにする： `browser.tabs.closeWindowWithLastTab` => `false`
+ マウススクロールでタブ切り替え： `toolkit.tabbox.switchByScrolling` => `true`