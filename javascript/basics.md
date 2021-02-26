### javascriptとECMAScriptの違い
* ECMAScript どの実行環境でも共通の部分。
* JavaScript ECMAScriptと実行環境の固有機能も含んだ範囲。

ECMAScriptは毎年アップデートされ、新しい文法や機能が追加される。
* 今から学ぶなら大きく仕様が変更になったECMAScript2015(ES2015)以降のものを学ぶべき。
* ただし、ECMAScriptは後方互換性が慎重に取り扱われるため、一度入った仕様が使えなくなることはほとんどない。

### strict mode
古く安全ではない構文や機能を禁止にしたり例外を投げてくれる実行モード。
なにか特別な理由がない限りはこれで実行すべきっぽい。

```javascript
"use strict";   //これをファイル先頭に書く
```

### 実行コンテキスト
```markdown
Script defaultのコンテキスト。strict modeは任意で書く必要がある。
Module ES2015から導入されたやつ。デフォルトでstrict modeになる。
       モジュールの機能は"Module"の実行コンテキストでしか実行出来ない。
```

### HTML-likeコメント
後方互換性のためだけにあるコメント

