### 関数宣言
```javascript
function foo(args1,args2){
    return ret;
}
```
javascriptの関数は呼び出し時の引数の個数が違っていても
動作するので注意が必要。呼び出し個数が少ない場合はundefinedが入る。
多い場合は余分なものは無視される。

```javascript
function foo(args1='デフォルト値'){
    return args1;
}

foo('a');   //a
foo();      //デフォルト値

function bar(args1){
    return bar ?? "デフォルト値";
}

```
undefinedを回避するために、デフォルト引数を指定したり
Nullish coalescing演算子を使うという手がある。

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
* Arrow Functionでは利用できない（Arrow Functionについては後述）
* Array-likeオブジェクトであるため、Arrayのメソッドを利用できない
* 関数が可変長引数を受けつけるのかを仮引数だけを見て判断できない

### 関数はオブジェクト
```javascript
function foo(){
    console.log('called foo function');
}

const myFunc = foo();
myFunc();
```
javascriptでは関数は関数オブジェクトと呼ばれ、オブジェクトの一種。
他の値と同じように値に代入出来たりする。
このように関数が値として扱えることを**ファーストクラスファンクション**という。
また、関数を値として変数へ代入している式のことを**関数式**という。

### 匿名関数
```javascript
//関数式は変数で参照出来るため関数名は省略可能。
const myFunc = function (){
}

//関数宣言では関数名は省略不可
function bar(){
}

```
名前を持たない関数のことを**匿名関数** (または無名関数) と呼ぶ

### Arrow Function

```javascript
//Arrow Functionによる定義
const myFunc = () => {
}

//以下の条件で更に省略出来る。
//1.関数の仮引数が1つのときは()を省略できる
//2.関数の処理が1つの式である場合に、ブロックとreturn文を省略できる
//  その式の評価結果をreturnの返り値とする

const funcA = () => {};
const funcB = (x) => {};
const funcC = x => {};
const funcD = (x,y) => {};

cont mulA = x => {return x * x; };
cont mulB = x => x * x;
```
**Arrow Function**という方法で匿名関数を定義することも出来る。

Arrow Functionの特徴
* 名前をつけることができない（常に匿名関数）
* thisが静的に決定できる
* functionキーワードに比べて短く書くことができる
* newできない（コンストラクタ関数ではない）
* arguments変数を参照できない

```javascript
//functionを使う場合
const array = [1,2,3];

const doubleArray1 = array.map(function(value){
    return value * 2;
});
console.log(doubleArray1);  // [2,4,6]

//Arrow Functionを使う場合
const doubleArray2 = array.map(value => value * 2);
console.log(doubleArray2);  // [2,4,6]

```
上記のようなコールバック関数に無名関数を渡したい場合に、
Arrow Functionは省略することが出来るので結果的に見やすいコードになる。
また、Arrow Functionはarguments変数を参照出来ない、thisの問題点を解決出来る等
利点が多いため、Arrow Functionで問題ない場合はArrow Functionを用いるべき。

### コールバック関数
引数として渡される関数を**コールバック関数**という
コールバック関数を引数として使う関数を**高階関数** (high-order-function)という
