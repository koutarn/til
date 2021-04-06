# Vim Script作成
```markdown
myplugin.vim/
├── autoload
│   └── myplugin.vim
├── doc
│   └── myplugin.txt
└── plugin
     └── myplugin.vim
```
* plugin    プラグインが提供する[Exコマンド](./command.md) や[オプション](./option.md)を置く。
* autoload メイン処理を記述したスクリプトを置く。
* doc       ヘルプファイルを置く。

## compatibleオプションの保存
```vim
let s:save_cpo = &cpo
set cpo&vim

let &cpo = s:save_cpo
unlet s:save_cpo
```
* `compatible`オプションは副作用があるから一旦退避させて戻すっぽい
* ほぼ、おまじないみたいな物だろう。

## 多重ロード回避
```vim
if exists("g:loaded_myplugin")
    finish
endif
lelt g:loaded_myplugin = 1
```
* 多重ロードを防止するためにこう書く。
* C言語のincludeガードを彷彿とさせる。
