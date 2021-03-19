### 概要
```markdown
-rw-r--r-- 1 user user  12  3月 17 22:45 chmod.md
chmod 722 chmod.md
-rwx-w--w- 1 user user  354  3月 17 22:49 chmod.md
```
ファイルパーミッションを変更する。
左から順にユーザー、グループ、その他で割りふられている。
8進数表記で、以下のように設定されている

* w(書き込み) = 4
* r(読み込み) = 2
* x(実行)     = 1
