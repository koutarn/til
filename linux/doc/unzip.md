```bash
unzip -q {filename} -d {directory}
```

解凍先のディレクトリを指定して解凍出来る。

#### オプション
-o をつけるとwindowsのファイルを文字化けせず解答出来る。
-P {password} passwordを指定して解凍出来る。

#### エラーメッセージ
Archive:  a.zip
   skipping: 2020年度_役割目標チェックリスト(プロフェッショナリズム)_近藤康太.xlsx  need PK compat. v5.1 (can do v4.6)
zipにはバージョンがあるらしくて、これがでたら組み込みのunzipだとverが足りないっぽい
