# eval
```vim
let optname = "path"
let optval = eval('&' .. optname)
```
* 式の値を得る事が出来る。
* 上記の例だと&pathの値(=pathオプションの値)を得る事が出来る 。
