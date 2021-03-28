# ユーザーコマンド
```vim
:command DeleteFirst 1delete
```
* :command {command_name} {command} を使うと新しいコマンドを定義出来る。
* :commandだけを指定するとユーザー定義コマンドの一覧を見る事が出来る。

## 引数
```vim
:command -nargs=0 DeleteFirst 1delete
```
* コマンドに`-nargs={num}`を指定すると引数の数を指定出来る。
* 引数の数は以下の通り。
    * -nargs=0 引数なし
    * -nargs=1 引数1個
    * -nargs=* いくつでも
    * -nargs=? 引数なし、もしく1個
    * -nargs=+ 引数1個以上

* 引数の指定の仕方は以下
    * <args> 通常の引数指定、引用符(")が使われると上手く動作しない。
    * <q-args> 特殊文字が含まれていると適切にエスケープしてくれる
    * <f-args> 引数が関数呼び出しに適した形に展開される。

## 範囲指定
* 範囲を指定したい場合は`-range`オブションを指定する
* 指定方法は以下の通り
    *  -range          省略時は現在行を選択
    *  -range=%        省略時はファイル全体を選択
    *  -range={count}  範囲指定の最後の数値だけを使う。省略時は`{count}`が使われる。

```vim
:command -range=% SaveIt :<line1>,<line2>write! save_file
```
* 範囲指定を使う場合は`<line1>`と`<line2>`を使って範囲の最初と最後を取得出来る。

## コマンドの再定義
```vim
:command -nargs=+ Say :echo "<args>"
:command! -nargs=+ Say :echo "<q-args>"

```
* 同じ名前のコマンドを再定義したい場合は！を使う。

## コマンドの削除
* :delcommandを使うとコマンドの削除を行なえる。
* :comclearを使うと全てのユーザー定義コマンドを削除出来る。
