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
* 値には任意のデータを指定出来る。
* 1つのオブジェクトは複数のプロパティを持てる。
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
* オブジェクトはmutable(可変)の特性を持つ
* オブジェクトに追加したければ、作成したいプロパティ名に値を代入するだけで良い。
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
computed property namesとはオブジェクトリテラルの中でブラケット記法を使ったプロパティ名の事
こうすることで変数のkeyをキーに設定出来る。

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

// プロパティまで禁止にしたければfreezeを使う
Object.freeze(obj);
obj.key = "value2"; // syntax error
```
javascriptのconstは値を固定するものではなく、変数への再代入を防ぐためのものなので
obj変数への再代入は防げるが、プロパティの変更は防げない。
プロパティへの再代入を防ぐ場合はObject.freezeを使う。
Object.freezeを使う場合は、strict modeを使用しないと例外が発生しないで無視されるだけなので注意。




