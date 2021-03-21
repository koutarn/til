#sed.md

## 概要
```bash
#ファイルのgoodをbadに置換する
sed 's/good/bad/g' file.txt

#ファイル名を省略した場合は標準入力からのデータを処理する
echo 'good morning' | sed 's/good/bad/g' #bad morning
```
sedはstream Editorの略でコマンドにしたがって処理した結果を標準出力へ出す。
