# タグつきテンプレート関数
```javascript
function tag(strings, ...values){
    console.log(strings);   // ["template","literal",""]
    console.log(values);    // [0,1]
}

tag `template ${0} literal ${1}`;
```
* `()`ではなく `関数`テンプレート``と記述する事で呼べる関数。
* 引数が特殊な形になる。
* コンテキストに応じた処理をつけ加える事が出来る。
