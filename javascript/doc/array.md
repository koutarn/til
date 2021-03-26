* javascriptの配列は可変長

```javascript
const alphabet = ["one","two","three"];
console.log(alphabet[4]);   //undefined

```
* 存在しないindexにアクセスすると例外ではなく`undefine`を返す。(オブジェクトのアクセスと同じ)
    * C言語とかなら初期化していないと不定な値が返ってくる。
    * undefine = 未定義なので意味は同じ。

```javascript
const alphabet = ["one","two","three"];
console.log(alphabet.length);       // 3
console.log(alphabet[alphabet.length - 1]); //three

```
* `array.length`プロパティは配列の要素の数を返す。indexではないので注意。

## 疎な配列,密な配列
```javascript
const sparseArray = [1, ,3];        //sparseArray[1]が空

console.log(sparseArray.length);    //3
console.log(sparseArray[1]);        //undefined
```
* 配列リテラルで値を省略することで未定義の要素を含める事が出来る。
	* 普通に未初期化の要素がある配列って認識で良いはず。
* きっちり詰っている配列を密な配列と言う。

```javascript
const denseArray = [1,undefined,3];
const sparseArray = [1, , 3];

//hasOwnPropertyにインデックスを指定して判定する。
console.log(denseArray.hasOwnProperty(1));  //true
console.log(sparseArray.hasOwnProperty(1)); //false

```
* 配列にundefinedが入っているのか、疎な配列なのかを判定するのは`Object#hasOwnProperty`メソッドを使う。
    * 配列に指定したインデックスに要素が存在するのかを判定出来る。

## 配列かどうかの判定
* `typeof`演算子では配列かどうかは判定出来無い。(オブジェクト扱いになる)
* `Array.isArray`メソッドを利用すると配列と判定出来る。

## 配列の検索

### 要素があるインデックスを取得

* 指定した要素が配列のどの位置にいるかは、`Array#indexOf`や`Array#findIndex`メソッドを使う。
    * `Array#indexOf`は引数で渡した要素をシンプルに検索する。
        * オブジェクトは持っているプロパティが同じでも別物だと扱われるので`Array#indexOf`ではダメ
    * 異なるオブジェクトだが値は同じものを見つける場合は`Array#findIndex`を使う。
        * 引数はコールバック関数

#### Array#indexOf
```javascript
const array = ["Java","Javascript","Ruby"];
const indexOfJS = array.indexOf("javascript");
console.log(indexOfJS);           // 1

//存在しない要素は-1を返す。
console.log(array.indexOf("JS")); // -1

```

#### Array#findIndex
```javascript
const colors = [
    {"color":"red"},
    {"color":"green"},
    {"color":"blue"}
];

const indexOfBlue = colors.findindex(obj => {
    return obj.color === "blue";
})

console.log(indexOfBlue);   //2

```

### 条件に合う要素を取得
* `Array#find`メソッドを使うと要素を取得出来る。
    * 引数はコールバック関数

```javascript
const colors = [
    {"color":"red"},
    {"color":"green"},
    {"color":"blue"}
];

const blueColor = colors.find(obj => {
    return obj.colors === "blue";
});

```

### 指定範囲の要素を取得
* 配列から指定範囲の要素を取得するには`Array#slice`メソッドを使う。
* 第一引数に開始位置、第二引数に終了位置を渡す。
    * 第二引数を省略すると末尾まで取得出来る。
    * 開始位置はインデックス。
    * 終了位置は出力に**含まない**ので注意。
    * 開始位置(第一引数)と終了位置(第二引数)が同じ場合は空の配列を返す。
    * 開始位置(第一引数) > 終了位置(第二引数)の場合空の配列を返す。

```javascript
const array = ["A","B","C","D","E"];

console.log(array.slice(1,4));  // B C D
console.log(array.slice(1));    // B C D E

//空の配列を返す。
console.log(array.slice(1,1));  // []
console.log(array.slice(4,1));  // []

```

### 配列に含まれているかどうかを取得
* 指定した要素が配列に含まれているかは`Array#includes`を使う。
    * `Array#indexOf`と同じく、異るオブジェクトの場合は取得出来ないので注意。
        * その場合は`Array#some`を使う。

```javascript
const array = ["Java","Javascript","Ruby"];

if (array.includes("Javascript")){
    console.log("配列にJavascriptは含まれています");
}

```

## 追加と削除
```javascript
const array = ["Java","Javascript","Ruby"];
array.push("Go");
console.log(array);          // Java Javascript Ruby Go
const popItem = array.pop();

console.log(popItem);        // Go
console.log(array);          // Java Javascript Ruby
```
* 配列の末尾に追加は`Array#push`を使う。
* 配列の末尾を削除するには`Array#pop`を使う。
    * 削除してその要素を取得出来る。
    * ようはpushとpopだね。

```javascript

const array = ["Java","Javascript","Ruby"];
array.unshift("Go");
console.log(array);              // Go Java javascript Ruby
const shiftItem = array.shift();

console.log(shiftItem);          // Go
console.log(array);              // Java Javascript Ruby

```
* 配列の先頭に追加は`Array#unshift`を使う。
* 配列の先頭からの削除は`Array#shift`を使う。
    * unsiftは右シフトのイメージ、shiftは左シフトのイメージ




