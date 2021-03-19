```bash
unzip -q {filename} -d {directory}
```
解凍先のディレクトリを指定して解凍出来る。


#### オプション
-q 解凍した際にディレクトリを深くしない
-d ディレクトリを指定して解凍
-o をつけるとwindowsのファイルを文字化けせず解答出来る。
-P {password} passwordを指定して解凍出来る。

#### エラーメッセージ
Archive:  a.zip
skipping: a.xlsx  need PK compat. v5.1 (can do v4.6)
zipにはバージョンがあるらしくて、これがでたら組み込みのunzipだとverが足りないっぽい
