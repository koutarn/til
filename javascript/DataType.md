
### データ型
javascriptは動的型付けなので変数の型はない
文字列、数値、真偽値のような値の型はある。(値の型=データ型)

データ型は２つに分けれる
* プリミティブ型  真偽値や数値などの基本的な型
* オブジェクト型  プリミティブ型以外のデータ(オブジェクト、配列、関数など)

### リテラル
データ型の値を直接記述出来るように構文として定義されたものをリテラルという


```javascript
// "と"で囲んだ範囲が文字列リテラル
const str = "こんにちは";
```

#### プリミティブ型

##### 数値

```javascript
console.log(1);                        // 10進数
console.log(0b0);                      // 2進数
console.log(0o7);                      // 8進数
console.log(0xA);                      // 16進数
console.log(3.14);                     // 不動小数点リテラル(8byte = double)と同じ
console.log(Number.MAX_SAFE_INTERGER); // BigInt(8byte以上を表せる)
console.log(1n);                       // BigIntは数値の後ろにnをつける
```

##### 文字列

```javascript
console.log("koutag");  
console.log('koutag');
console.log(`koutag`);
```
javascriptでは全て平等に文字列として扱う。
ただし、

```javascript
const name = "koutag";
console.log(`私の名前は${name}です`);

const proroge = `むかしむかし、あるところに
                おじいさんとおばあさんがいました`;
```
``だけは変数を展開できたり、改行も\nがいらなかったりする(テンプレートリテラル)


##### null

```javascript
const foo = null;
```
何も入っていないことを表す(普通のnullと同じ)

#### オブジェクト型

```javascript
const object = {};  //中身が空のオブジェクト
const dictionary = {
    "key": "value"
};

//ドット記法
console.log(dictionary.key); //=> "value"

//ブラケット記法
console.log(dictionary["key"]); //=> "value"
```
ようは他の言語で言うところの辞書だと思う。

#### 配列リテラル

```javascript
const emptyArray = [];
const Array = [1,2,3];
```
配列。他の言語と変わらない。

#### 正規表現リテラル

```javascript
const RegExp = /\d+/;               // /と/で囲むことで正規表現とすることが出来る
console.log(RegExp.test("123"));    // => true
```

#### ラッパーオブジェクト
```javascript
const str = new String("koutag");
console.log(str.length);    // =>3
```
文字列プリミティブ型に対応したりするオブジェクトを
ラッパーオブジェクトという。ただし、普通のプリミティブ型から
暗黙の変換でラッパーオブジェクトに変換されるので明示的に使わないでもOK

```javascript
const str = "koutag";
console.log(str.length);    // =>3
```

### 暗黙的な型変換
```javascript
//このように暗黙的な型変換が起きている
1 + true;       //2

1 + 1;          //2
```
javascriptでは数値と真偽値の加算のようなパターンでも
暗黙的な型変換が行われる

暗黙的な型変換とは?
→ある処理において、その処理過程で行われる明示的ではない型変換のこと。

暗黙的な型変換を避けるためには、
厳密等価演算子(===)を使い、意図しない比較を行わないことが大切。

### 明示的な型変換

#### 真偽値
```javascript
Boolean(1);    // true
Boolean(0);    // false
Boolean(null); // false
```
Booleanコンストラクタ関数を使うと
falsyな値を判定して真偽値に変換してくれる

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

も使える。parseIntの第荷引数は基数を指定する。(10進数として取り出したい場合は10を指定する)

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
数値以外が指定されるとNaNを返す。そのため任意の文字から数値に変換した場合は
NaNになってしまった場合の処理を書く必要がある。

### NaNとは
NaNの性質は以下の通り。
* Number型と互換性のない性質のデータをNumber型に変換した結果。
* NaNは何と演算してもNaNになる
* NaNはNumber型の一種。
* NaNは自分自身と一致しない。

```javascript
Number(undefined);          //NaN
console.log(10+NaN);        //NaN
console.log(typeof NaN);    //number

function isNaN(x) {
    //NaNは自分自身と一致しない。
    return x !== x;
}

console.log(isNaN(NaN));    //true
```

NaNは何と演算してもNaNになるという質の悪い性質があるため
出来るだけ避けなければならない。
そのためNaNを想定して例外を投げる等の処理が必要。

```javascript
function sum(...values) {
    return values.reduce((total,value)=> {
        //値がNumber型ではないため、例外を投げる。
        if (typeof value !== "number") {
            throw new Error(`${value}はNumber型ではありません`);
        }

        return total + Number(value);
    },0);
}

const x = 1, z = 10;
let y;  //undefined
console.log(x,y,z);         //1,undefined,10

//Number型ではないyを渡しているためエラーとなる
console.log(sum(x,y,z));    //Error
```

