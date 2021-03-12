### オブジェクトとは

```javascript
const object = {
    //キー：値
    "key":"value"

    //これでも作成する事が出来る
    //オブジェクトリテラルで作成するほうが楽なのでほとんど使われない。
    const object2 = new Object();
    console.log(object2); // {}
};
```

オブジェクトとはプロパティの集合
プロパティとはキーと値が対になったもの。
* キーには文字列またはSymboleが利用出来る。
* キーにオブジェクトを指定しても文字列化する際に"[Object Object]"になってしまうため使えない
* 値には任意のデータを指定出来る。
* 1つのオブジェクトは複数のプロパティを持てる。
* オブジェクトはmutable(可変)の特性を持つ
* JavaScriptにはあらゆるオブジェクトの元となるObjectというビルトインオブジェクトがある
* 存在しないプロパティにアクセスしたら例外ではなくundefinedが返ってくる。

```javascript
const name = "名前"
// 'name'というプロパティ名で'name'の変数を値に設定したオブジェクト
const obje = {
    name
};
```

### プロパティの作成について
* javascriptのオブジェクトはmutableの特性を持つため関数で受けとったオブジェクトでも勝手にプロパティの追加が出来る
* オブジェクトがどんなプロパティを持っているか分かりやすくするために、出来る限り作成後にプロパティは追加しないほうが良い

### ブラケット記法とドット記法
```javascript
const obj = {
    key:"value"
};

//ドット記法で参照
console.log(obj.key);

//ブラケット記法で参照
console.log(obj["key"];
```
* ドット記法は変数の命名規則と同じ(変数ではなく文字列として扱われるので注意)
* ブラケット記法はObject[式]の評価結果をプロパティに利用出来る

上記より書き易いドット記法で基本的に書いていき。
ドット記法で表わせないものについてはブラケット記法で書くというのが良いらしい。

### プロパティの追加
```javascript
const obj = {}
obj.key = "value"
console.log(obj.key);   //value
```
オブジェクトに追加したければ、作成したいプロパティ名に値を代入するだけで良い。
オブジェクトにプロパティが存在しなければ、勝手に作ってくれる。

#### Computed property names
```javascript
const key = 'key-string'
const obj = {
    [key]:"value"
};

console.log(obj[key]);  //value

//こっちだと文字列扱いになる
const obj2 = {
    key:"value"
};
```
computed property namesとはオブジェクトリテラルの中で
ブラケット記法を使ったプロパティ名の事こうすることで変数のkeyをキーに設定出来る。

### プロパティの削除
```javascript
const obj = {
    key1:"value1",
    key2:"value2"
};

delete obj.key1;
console.log(obj);   //{key2:"value2"}
```
オブジェクトのプロパティを削除するにはdelete演算子を使う。

### constで定義したオブジェクトでも再定義可能
```javascript
//これはエラーになる
const obj = {key:"value"};
obj = {};           // syntax error

// これはオブジェクトのプロパティの変更なのでエラーにならない
obj.key = "value2";

// プロパティの変更まで禁止にしたければfreezeを使う
Object.freeze(obj);
obj.key = "value2"; // syntax error
```
javascriptのconstは値を固定するものではなく、変数への再代入を防ぐためのものなので
obj変数への再代入は防げるが、プロパティの変更は防げない。
プロパティへの再代入を防ぐ場合はObject.freezeを使う。
strict modeを使用しないと例外が発生しないで無視されるだけなので注意。

### プロパティの存在を確認する

```javascript
const widget = {
    window:{
        title:"ウィジェットのタイトル"
    }
};

//この場合は例外は発生しない(存在しないプロパティにアクセスしてもundefinedが返ってくるだけ
console.log(widget.windw);      //undefined

//undefineにアクセスした形になるのでエラー
console.log(widget.windw.title) //TypeError

```
* javascriptでは存在しないオブジェクトにアクセスしてもundefinedが返ってくるだけ
* undefinedはオブジェクトじゃないからエラーになる

```javascript
const obj = {
    key:"value"
};

//in演算子[H]
if ("key" in obj) {
    console.log("keyは存在する")
}

//hasWonPeopertyメソッド
if (obj.hasOwnProperty("key")) {
    console.log("objectはkeyを持っている");
}

```
プロパティの存在確認は以下の3つの方法がある。
* undefinedとの比較 -> プロパティの値がundefinedだった場合と区別が出来ない
* in演算子 -> 存在すればtrueを返す
* hasOwnPropertyメソッド -> 存在すればtrueを返す

in演算子とhasOenPropertyは同じ値を返すが、厳密には違う動作をする場合もあるので注意

#### Optional chaining演算子

```javascript
const obj = {
    a: {
        b:"objのaのプロパティのbプロパティ
    }
};

//ダメな例
console.log(obj.a.c);  //undefined
console.log(obj.d.c);  //type Error

//Optional chaining演算子を使ってみた
console.log(obj?.a?.b); //objのaのプロパティのbプロパティ(アクセス出来ればそのまま表示)
console.log(obj?.a?.c);//undefined(ここは普通にアクセス出来ない時と変らない)
console.log(obj?.d?.c);//undefined(普通にアクセスするとType Errorだけどこれならundefinedが返ってくるだけ)

//ドット記法ではなくブラケット記法でも使える
console.log(obj?.[a]?.[b]); //objのaのプロパティのbプロパティ
```

### オブジェクトの静的メソッド
```javascript
const obj = {
    "one":1,
    "two":2,
    "three":3
};

//Object.keysはキーを列挙した配列を返す
console.log(Object.keys(obj));  // [one,two,three]
//Object.valuesは値を列挙した配列を返す
console.log(Object.values(obj));//[1,2,3]
//Object.entries[キー、値]の配列を返す
console.log(Object.entries(obj));//[["one",1],["two",2],["three",3]]

```
オブジェクトの静的メソッドを使う事によって、配列に変換出来るため
配列のメソッドを使用する事が出来る。また、for of文なども使える。

### マー ジ

```javascript
const obj = Object.assign(target,...sources);

const objA = {a:"a"}:
const objB = {b:"b"}:
const obj = ({},objA,objB);
console.log(obj);   //{a:"a",b:"a"};
```
targetにsourcesの内容を入れたものを戻り値とする。
空のオブジェクトをtargetにすることで既存のオブジェクトに影響を与えないでマージ出来る。
そのため、通常はtargetは空のオブジェクトを指定するのが一般的

```javascript
const objA = {a:"a"}:
const objB = {b:"b"}:
const obj = {
    ...objA,
    ...objB
};
console.log(obj);   //{a:"a",b:"a"};
```
spread構文もマージに利用出来る。
こちらはオブジェクトリテラルの中でしかspread構文が記述出来ないため、
必ず新規のオブジェクトを作成する。


### 複製
```javascript
const objA = {a:"a"};
const obj = Object.assign({},obj);
console.log(obj); //{a:"a"}
```
javascriptにはオブジェクトを複製する関数は用意されていないが
新しい空のオブジェクトにコピーをすれば複製しているといえる
ただし、shallow copyになるので注意。deep copyをしたければ別途関数を組むかライブラリを利用する。

#### Tips
* shallow copy ... オブジェクトの直下のプロパティしかコピーしない
* deep copy    ... ネストされたプロパティまでコピー出来る

javascriptのビルトインは浅い実装のみを提供している事が多い。

