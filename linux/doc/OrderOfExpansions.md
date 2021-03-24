# OrderOfExpansions.md
## 概要

```bash
declare -i a
a=10

declare -i b
b=20

#これは展開順序の関係で正しく表現出来ない
mkdir {$a..$b}
```

bashの展開の順序に気を付けなければならない。
1. 括弧
2. チルダ(~)
3. パラメータや変数
4. 計算機号
5. コマンド置換(左から右)
6. 文字の分割
7. ファイル名
