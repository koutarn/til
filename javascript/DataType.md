
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
