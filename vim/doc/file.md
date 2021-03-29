```vim
:e ファイル名 ファイルを開ける。
help | onry 分割せずにヘルプを開ける
clo[se] windowを閉じる。今まで:qで問答無用で閉じてたけどこっちのほうが良さげ
on[ly] current window以外を閉じる
vnew 縦分割して新規バッファを作成する。(newは横分割j)
enew 分割しないで新規バッファを作成する。
```

### コマンドの読み書き
```vim
r !{command} コマンドの読み込み
r !date 日付を読み込む
w !{command} コマンドの書き込み
w !wc 文字数を数える
```

### 前回開いたファイル

```vim
:'{number} 0-9まで指定可能。:marksで確認可能。
```

### 直近で開いたファイル

```vim
:old ファイル履歴を確認
:{command}#<{number} ファイルを開くコマンドに#<{number}の形で渡すと開ける
:brows oldfiles 画面上で選択出来る。
```

### モードライン

```vim
ファイル固有の設定はファイルの先頭、末尾から五行いないのどこかに書きくと実現出来る。
例:
any-text vim:set {option}={value} ... : any-text ~ ←書く際の書式
/* vim:set shiftwidth=4: */ ~ ←この行をファイルの先頭か末尾に書くとOK

```

### 複数の箇所でコマンドを実行する

```markdown
:args {filename}
:argdo {command}
:bufdo {command} すべてのバッファ
:windo {command} すべてのウィンドウ
```
### タブをスペースに変換する

```markdown
:set (no)?expandtab
:%retab
```
