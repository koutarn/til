# 関数
```vim
call search("Date:","W")
let line = getline(".")
```
* 関数は`call`で呼びだす
    * 関数の結果を代入する場合は不要
* 関数の一覧は`h functions`を参照
* functionでユーザー定義関数を確認出来る。

```vim
function {name}({arg1},{arg2},...) abort
    {body}
endfunction
```
* 関数を定義する構文はこんな感じ。
* 自作関数は大文字から初める必要がある。
* 同名の関数を再定義したい場合は`function!`と書く。
* abortは関数内でエラーが発生した時にそこで処理終了をするために必要。とりあえず付ける。

## 関数の削除
```vim
delfunction Show
```
* 関数が存在しない場合はエラーになる。

## 関数式
```vim
function! Min() abort
    hogehoge
endfunction

function! Max() abort
    piyopiyo
endfunction

let FunctionMin = function('Min')
let FunctionMax = function('Max')

echo call(FunctionMin,[])
```
* 基本的な考え方は[firstClassFunction](../../keyword/firstClassFunction.md)参照
* `function`関数を使うと変数に関数の参照を代入出来る。
    * その際、混乱をさけるため変数名の先頭は大文字にする。
* 変数が参照している関数を呼びだすには`call`関数を使う。
    * 第一引数は関数への参照、第二引数は引数のリスト

