### オペランドとは
演算子の演算対象=オペランド

### 文字列結合
```javascript
const name = 'yamada' + 'da-yama';
console.log(name);  //yamadada-yama
``` 
文字列の結合は+で出来る。

### べき乗
```javascript
console.log(2**4);  // 2の4乗で16
```
べき乗は**で表す。^ではないので注意。

### 単項プラス演算子
```javascript
console.log(+"1");  // 1
```
数値以外でも+をつけると数値になる。
ただし明示的に変換する方法が別に存在するので使うべきではない。
数値に変換出来ない場合はNaN(Not a Number)になる。
NaNは数値ではないがNumber型の値を表現している。

### 比較演算子


#### 厳密等価演算子
```javascript
console.log(1===1);     //true
console.log('1'===1);   //false
```
厳密等価演算子は同じ型で同じ値の場合trueを返す(他の言語の==と同じ?)
同じ型または同じ値ではないかの判断は厳密不当化演算子(!==)で表す。

#### 等価演算子
```javascript
console.log(1 == '1');  //true
```
等価演算子はオペランド同士が違う型だった場合、**暗黙の型変換**が行われる。
そのため、上記の比較はtrueになる。意図しない挙動になる場合があるので原則的に厳密等価を使うべき。

```javascript
const value = undefined;

if (value === null || value === undefined) {
    console.log('null or undefined');
}

if (value == null) {
    console.log('null or undefined');
}
```
ただし、例外的にnullとundefinedは厳密等価だと二度比較する手間がかかるので等価演算子を使う場合が多い。

### 分割代入

```javascript
//配列
const array = [1,2];
const [a,b] = array;
console.log(a); //1
console.log(b); //2

const array = [1,2];
const a = array[0];
const b = array[1];

//オブジェクト
const dic = {
    "key":"value"
}

const {key} = dic;
console.log(key);   //value

const obj = {
    "key":"value"
};

const key = obj.key;
```
左辺のオペランドが配列リテラルやオブジェクトリテラルになる。
そうすることで複数の変数に同時に代入することが出来る。

### falsy
if文などでどの値がfalseかどうかは以下のルールで決まる。
* falsyな値→false
* falsyでない値→true

falsyな値とは次の7種類の値のことを指す
* false
* undefined 
* null
* 0
* 0n
* NaN
* ""

undefined、0n、NaNは馴染みがないので注意する。

### Nullish coalescing演算子(??)
左辺がnullかundefinedだった場合右辺を評価する演算子
```javascript
let value = undefined;
value = value ?? 55;        //55
value = value ?? 100;       //55
```
nullかundefinedだった場合値を詰めれる。
無駄にif文を書かない良い、二度代入する必要がないのでconstが使える。

