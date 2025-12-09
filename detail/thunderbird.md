# Thunderbird


手動でセットアップする場合は下記。


## サーバー設定

https://github.com/AWtnb/thunderbird_imap_setting

## `アカウント設定`

+ `編集とアドレス入力` から `書名を挿入する位置` を `返信部の下（引用部の上）` に。

## 外観


https://github.com/AWtnb/thunderbird-chrome-css


## アドオン

### [メール送信前のチェック](https://addons.thunderbird.net/thunderbird/addon/check-before-sending-email/)

https://github.com/zacky48/check-before-sending-email

###  [No Message Pane Sort](https://addons.thunderbird.net/ja/thunderbird/addon/no-message-pane-sort-by-mouse/)


###  [tbkeys-lite](https://addons.thunderbird.net/ja/thunderbird/user/willssss/)

`Main key bindings` を設定

```json
{
    "0": "unset",
    "1": "unset",
    "2": "unset",
    "3": "unset",
    "4": "unset",
    "5": "unset",
    "6": "unset",
    "7": "unset",
    "8": "unset",
    "9": "unset",
    "a": "unset",
    "j": "cmd:cmd_nextMsg",
    "k": "cmd:cmd_previousMsg",
    "shift+j": "cmd:cmd_nextUnreadMsg",
    "shift+k": "cmd:cmd_previousUnreadMsg",
    "s": "cmd:cmd_markAsFlagged",
    "b": "unset",
    "c": "unset",
    "f": "unset",
    "m": "cmd:cmd_toggleRead",
    "o": "unset",
    "p": "unset",
    "r": "unset",
    "t": "cmd:cmd_selectThread",
    "u": "unset",
    "w": "unset",
    "x": "unset",
    "#": "unset",
    "]": "cmd:cmd_collapseAllThreads",
    "[": "cmd:cmd_expandAllThreads"
}
```

参考サイト：

+ [Muttator、Dorando keyconfigの代替となる？Thunderbird 68以後もキーバインド変更可能なMailExtensions形式アドオンtbkeys](https://arimasou16.com/blog/2021/05/09/00392/)
+ [Thunderbirdのアドオンtbkeysの設定を晒す](https://arimasou16.com/blog/2021/05/22/00394/)
+ [comm-central: mail/base/content/mainCommandSet.inc.xhtml@1db0a1d856b20696628c6599258d36a31e7288f1](https://hg.mozilla.org/comm-central/file/tip/mail/base/content/mainCommandSet.inc.xhtml)

## `about:config`

|項目|設定|内容|
|:---|:---|:---|
|`toolkit.legacyUserProfileCustomizations.stylesheets`|`true`|`userChrome.css` `userContent.css` を有効化|
|`mail.wrap_long_lines` |`false`|自動改行の無効化|
|`mailnews.wraplength` |`0`|自動改行の無効化|