# リスト
```vim
let array = ['apple',3,'remon']
```
* 配列の事。
* 要素に型は何を入れても大丈夫。

```vim
let array = ['apple',3,'remon']
call add(array,'banana')
```
* `add`関数で要素を追加出来る。
* `add`の第二引数は一つの要素として扱われる事に注意

```vim
let array = ['apple',3,'remon']
array = array + ['foo','bar']
```
* リストの連結には`+`を使う。
