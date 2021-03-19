### 概要
```bash
# 変換後を標準出力に出すだけ(実際は変換しない)
convmv -f utf-8 -t sjis {filename}

#これで実際に変換してくれる
convmv -f utf-8 -t sjis {filename} --notest
```

windowに送るファイルをzipにすると、
日本語が文字化けするのでshift jisに変換してあげる必要がある。
