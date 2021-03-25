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

### 可変長引数
```javascript
function foo(...args){
    console.log(args);
}

foo('a','b','c');

//可変長引数とは逆のことも出来る(Spred構文)

function bar(x,y,z){
    console.log(x);
    console.log(y);
    console.log(z);
}

const array = [1,2,3];
//spred構文(Rest prametersと指定方法は同じ
bar(...array);

//こう書いたのと同じ
bar(array[0],array[1],array[2]);
```

可変長引数を実現するためには、Rest parametersかargumentsという特殊な変数を利用する。
argumentsは分かりづらくなるので基本的にはRest parametersを使用する。

```javascript
function foo() {
    console.log(arguments[0]);
    console.log(arguments[1]);
    console.log(arguments[2]);
}
```
argumentsを使用した例。可変長引数があるのか判断出来ない等色々な問題がある。
* [Arrow Function](./arrowFunction.md)では利用できない
* Array-likeオブジェクトであるため、Arrayのメソッドを利用できない
* 関数が可変長引数を受けつけるのかを仮引数だけを見て判断できない

