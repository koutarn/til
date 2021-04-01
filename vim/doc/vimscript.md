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
