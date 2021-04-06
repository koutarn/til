# 辞書
```vim
let man = {}
let man = {'name':'yamada','age':29}

let woman = {}
let woman.name = 'sakai'
let woman['age'] = 29
```
* いわゆる連想[S]配列
* {<key>:<value>,..} で記述する。
* 辞書にはブラケット記法([foo])とドット記法(foo.bar)が使える。
* `g:`でグローバル変数を参照出来る。
