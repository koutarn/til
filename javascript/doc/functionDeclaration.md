# 関数式とは
* function分を用いて関数を宣言する方法を関数宣言と言う。
	* 変数に関数を値として代入する方法は[関数式](./functionExpression.md)と言う。

```javascript
function foo(args1,args2){
    return ret;
}
```
* javascriptの関数は呼び出し時の引数の個数が違っていても動作するので注意が必要。
* 呼び出し個数が少ない場合はundefinedが入る。
* 多い場合は余分なものは無視される。

```javascript
function foo(args1='デフォルト値'){
    return args1;
}

foo('a');   //a
foo();      //デフォルト値

function bar(args1){
    return args1 ?? "デフォルト値";
}

```
* undefinedを回避するために、デフォルト引数を指定したりNullish coalescing演算子を使うという手がある。
