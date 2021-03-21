# Object.prototypeの継承
* ほとんどすべてのオブジェクトは`Object.prototype`を継承している。

```javascript
console.log(Object.prototype.toString()); //function
```

* `toString()`などは`Object.prototype`のビルトインメソッド


* インスタンスから`prototpye`オブジェクト上に定義されたメソッドを参照出来る仕組みをプロトタイプチェーンという。

```javascript
const customObject = {
    toString() {
        return 'custome value';
    }
};

console.log(customObject.toString());   // 'custome value'

```
* インスタンスのメソッドと`Object.prototype`で同じメソッドがある場合はインスタンスのメソッドが優先される。

```javascript
const mapLike = Object.create(null);
```
* `Object.create`メソッドを使う事でプロトタイプオブジェクトを継承しないオブジェクトを作成出来る。
