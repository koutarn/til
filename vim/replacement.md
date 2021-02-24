### 基本的な置換

```vim
%s/foo/bar/g 一括置換
%s/foo/bar/gc 確認置換
%s/foo/bar/ge e バターンが見つからなくてもエラーを発生させない
```
%→ファイル全体
g→global(グローバル[すべて])
c→confirm(確認)
p→print(出力)
e→error

### コマンド設定
```vim
:[range]global/{pattern}/{command}
g/foo/d fooが含まれる行を削除
v/foo/d fooが含まれない行を削除
```

置換と似ているが、文字列が置換されるのではなく{command}が実行される
(=特定の範囲だけコマンドを適用できる)

### 行を逆順にする
```vim
:g/^/m 0
```
行頭(^)をファイルの0行目(m 0)に移動させる。

### 文字揃え

```markdown
{range}center 中央揃え
{range}right 右揃え
{range}left 左揃え
```

例えばg/^/right とかするとすべての文字が右揃えになって面白い(実用性はない)
