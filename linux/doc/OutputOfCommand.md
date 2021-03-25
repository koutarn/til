# コマンドの出力
## 概要

```bash
diff /etc/hosts <(ssh somehost cat /etc/hosts)
```
コマンドの出力を<(some command)のように書くとファイルのように扱える。
