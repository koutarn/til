# 自動コマンド
* 様々なイベントに応じて自動的に実行されるコマンドを自動コマンドと言う。

```vim
:autocmd [group] {events} {file-pattern} [++nested] {command}
```
* [group] 省略可能。コマンドを管理したり呼び出したりする場合に使用。
* {events} コマンドを実行するイベントのリスト(カンマ区切り)
* {file-pattern} ファイル名、ワイルドカード使用可能。
* [++nested] 省略可能。自動コマンドを再帰的に呼び出したい時に使用。
* {command} 実行したいコマンドを指定。

## グループ
* 関連した自動コマンドをグループ化出来る。
* そうする事で例えば特定のグループのコマンドをまとめて削除出来る。

```vim
:augroup cprograms
    autocmd BufReadPost *.c,*.h :set sw=4 sts=4
    autocmd BufReadPost *.cpp :set sw=3 sts=3
:augroup END

"こんな風にも書ける。
autocmd cprograms BufReadPost *.c,*.h :set sw=4 sts=4
autocmd cprograms BufReadPost *.cpp :set sw=3 sts=3
```
* グループ化には`:augroup`コマンドを使う。

## イベント
* BufWritePre バッファをファイルに保存する直前
* BufNewFile 新しいファイルを作成した時
* BufReadPost 新しいファイルを開いた時
* FileType ファイルの種類に応じて何かを実行したい場合
* 詳細はautocmd-eventsを参照する事

## パターン
* 複数のパターンのコンマ区切りで指定出来る。
    * \* 何かの文字が何文字でも
    * ？ 何かの文字が1つ
    * [abc] aかbかcか
    * a{b,c} abかac
* パターンにスラッシュが含まれている場合は、ディレクトリ名と比較される。

## ネスト
```vim
:autocmd FileChangeShell * ++nested edit
```

* 通常は自動コマンドの中で実行されたコマンドによってイベントは発行されない。
* イベントを発行させたい場合は`nested`引数を指定する。

## 自動コマンドの削除
```vim
"FileWritePosイベントの*を使っているパターンの全てを削除
:autocmd! FileWritePos *
```
* 自動コマンドの削除には!を付けて{command}を指定しない。

## 自動コマンドの一覧表示
```vim
:autocmd

"BufNewFileのコマンドを表示
:autocmd BufNewFile

".cファイルのすべてのイベントのコマンドを表示
:autocmd * *.c
```
* 一覧表示には`:autocmd`を使う。
* 一部のコマンドだけを表示したい場合は、グループ、イベント、パターンのどれかを指定する。

## 自動コマンドの実行
```vim
:autocmd BufReadPost *.new execute "doautocmd BufReadPost " . expand("<afile>:r")
" .newファイルが読みこまれたら下のコマンドを実行した形になる。
" :doautocmd BufReadPost {filename}
```
* 疑似的にイベントを発行して、自動コマンドを実行する事が出来る。
* 自動コマンドの中から他の自動コマンドを実行するような場合に便利

## イベントの無効化
```vim
:set eventignore=BufNewFile,BufReadPost

"すべてを無視
:set eventignore=all

"元に戻す場合は空を設定
:set eventignore=
```
* 自動コマンドを実行して欲くない場合は`eventignore`オプションに無視したいイベントを設定する。
* すべてを無視する場合はallとつける
* 元に戻す場合は空を設定

