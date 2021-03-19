### 概要
```bash
#これだけだと表示するだけ
iconv -f utf-8 -t sjis {file name}

#リダイレクトをするか、-oをつけると保存出来る
iconv -f utf-8 -t sjis {file name} > {output file}
iconv -f utf-8 -t sjis {file name} -o {output file}
```
ファイルの内容の文字コードを変換する。
ファイル名の文字コードは [convmv](./convmv.md) を参照

