# get関数
```vim
let list = ['cat',10]

"NONE
get(list,2,'NONE')

let dic = {'name':'kouta','age':28}

"28
get(dic,'age',32)
```
* 要素を取得する関数。
* `get({target},{index},{default})`で表す。
    * targetに対象のオブジェクト、{index}に取得する要素数。{default}に取得出来なかった場合の値を入れる。
* 辞書とリストに使える。
