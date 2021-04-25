# 文字列

## 基本
```javascript
const double = "文字列";
const single = '文字列';
console.log(double === single); //true
```
* 文字列には文字列リテラルを使用する。
* ダブルクォートもシングルクォートも意味に違いはない。
* 文字列の結合には+を使う。
* インデックスを指定すると文字へアクセス出来る。
* lengthで文字列長を得れる。

## テンプレートリテラル
```javascript
const name = 'Javascript';
console.log(`Hello ${name}!`); // Hello Javascript!

```
* 改行や変数を扱える。

## 内部の文字コード
* Javascriptは文字コードとしてUnicodeを採用している。
* エンコード方式はUTF-16を採用している。
* ECMAScriptの内部表現としてUTF-16を採用しているだけで、Javascriptファイル自体のエンコードは関係ない。

## 文字列の結合と分解
```javascript
const str = "あ、い、う".sprit("、").join(",");
```
* String#spirtで分割出来る。
* Array#joinで結合出来る。

## 文字列の一部を取得
```javascript
const str = "ABCDE";
console.log(str.slice(1)); // "BCDE"
console.log(str.lice(1,5)); // "BCDE"
```
* String#slice、もしくはString#substringで取得出来る。
* 微妙に挙動が違うけど、基本的にString#sliceを使えばいいと思う。

## 文字列の検索
```javacript
const str = "にわにはにわにわとりがいる";

console.log(str.indexOf("にわ"));       //indexof 先頭から検索
console.log(str.lastIndexOf("にわ"));   //indexof 末尾から検索
```
* マッチした箇所のindexの取得 String#indexOfメソッドかString#lastIndexOfメソッドを使う。

```javascript
const str = "にわにはにわにわとりがいる";
console.log(str.startsWith("にわ"));    //true
console.log(str.startsWith("いる"));    //false

console.log(str.endsWith("にわ"));      //false
console.log(str.endsWith("いる"));      //true

console.log(str.includes("にわ"));      //true
console.log(str.includes("いる"));      //true

```
* マッチしたかどうかの判定 String#includesメソッド等を使う。


