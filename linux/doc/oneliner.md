#oneliner.md
## テキストファイルの結合、共通部分のみ、差異のみを確認
```bash
cat a b | sort | uniq > c #cはaとbの和集合
cat a b | sort | uniq -d > c #cはaとbの重複
cat a b | sort | uniq -u > c #cはaとbの差異
```
テキストファイルの結合、共通部分のみ、差異のみを求めるのに便利らしい。

## お手軽ファイル確認
```bash
grep . *        #各行にファイル名が付く

#実行結果
oneliner.md:### テキストファイルの結合、共通部分のみ、差異のみを確認
oneliner.md:```bash
oneliner.md:cat a b | sort | uniq > c #cはaとbの和集合
oneliner.md:cat a b | sort | uniq -d > c #cはaとbの重複
oneliner.md:cat a b | sort | uniq -u > c #cはaとbの差異
oneliner.md:```
oneliner.md:テキストファイルの結合、共通部分のみ、差異のみを求めるのに便利らしい。
oneliner.md:### お手軽ファイル確認
oneliner.md:```bash
oneliner.md:grep . *        #各行にファイル名が付く
oneliner.md:head -100 *     #ファイル毎にヘッダーが付く
oneliner.md:```

head -100 *     #ファイル毎にヘッダーが付く
==> sed.md <==
## 概要
#ファイルのgoodをbadに置換する
sed 's/good/bad/g' file.txt

#ファイル名を省略した場合は標準入力からのデータを処理する
echo 'good morning' | sed 's/good/bad/g' #bad morning
sedはstream Editorの略でコマンドにしたがって処理した結果を標準出力へ出す。
```

