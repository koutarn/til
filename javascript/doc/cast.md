### 暗黙的な型変換
```javascript
//このように暗黙的な型変換が起きている
1 + true;       //2

1 + 1;          //2
```
* javascriptでは数値と真偽値の加算のようなパターンでも暗黙的な型変換が行われる

* 暗黙的な型変換とは?
	* ある処理において、その処理過程で行われる明示的ではない型変換のこと。

* 暗黙的な型変換を避けるためには、厳密等価演算子(===)を使い、意図しない比較を行わないことが大切。

### 明示的な型変換

#### 真偽値
```javascript
Boolean(1);    // true
Boolean(0);    // false
Boolean(null); // false
```
Booleanコンストラクタ関数を使うと
[falsy](./falsy.md)な値を判定して真偽値に変換してくれる

#### 数値→文字列
```javascript
String(1);    // "1"
String(true); // "true"
String({key:value}) //[object Object]
```
真偽値、数値などは見た目通り文字列に変換出来る。
ただし、オブジェクトに関しては意味のある文字列は返さない。
配列にはJoinメソッド、オブジェクトにはJSON.stringifyメソッドなど、より適切な方法がある。
そのためStringコンストラクタ関数での変換はプリミティブ型に対してのみに行うべき。

#### 文字列→数値
```javascript
console.log(Number("42"));  //42
```
Numberコンストラクタ関数を使うことで文字列から数値に変換出来る。


```javascript
//1を10進数として取り出す
console.log(Number.parseInt("1",10);    //1

//余分な文字も取り除ける
console.log(Number.parseInt("42px",10); //42
console.log(Number.parseInt("10.5",10); //10

//小数点付きとしても取り出せる
console.log(Number.parseFloat("42.5px");  //42.5
console.log(Number.parseFloat("10.5");    //10.5
```
文字列から数値を取り出す関数として
* Number.parseInt
* Number.parseFloat

も使える。parseIntの第2引数は基数を指定する。(10進数として取り出したい場合は10を指定する)

```javascript
Number("文字列だよ〜");          // NaN
Number.parseInt("文字列だよ〜"); // NaN
Number.parseFloat("文字列だよ〜"); // NaN

const userInput = "任意の文字列";
const num = Number.parseInt(userInput,10);
if (Number.IsNaN(num) === false){
    console.log(`NaNではない値にパース出来たよ:${num}`);
}

```
ただし、文字列が数値とは限らない。
数値以外が指定されると[NaN](NaN.md)を返す。そのため任意の文字から数値に変換した場合は
NaNになってしまった場合の処理を書く必要がある。
