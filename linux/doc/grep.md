### 基本構文
```bash
grep [flag] [検索文字] [directory]
```

### 検索した結果から更に取り除く
```bash
grep -r 'foo' ~/aaa | grep -v 'bar'
```


