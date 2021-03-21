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
**Arrow Function**という方法で[匿名関数](./anonymousFunction.md) を定義することも出来る。

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
