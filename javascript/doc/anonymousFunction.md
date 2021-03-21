## 関数はオブジェクト
```javascript
function foo(){
    console.log('called foo function');
}

const myFunc = foo();
myFunc();
```
javascriptでは関数は関数オブジェクトと呼ばれ、オブジェクトの一種。
他の値と同じように値に代入出来たりする。
このように関数が値として扱えることを**ファーストクラスファンクション**という。
また、関数を値として変数へ代入している式のことを**関数式**という。

## 匿名関数
```javascript
//関数式は変数で参照出来るため関数名は省略可能。
const myFunc = function (){
}

//関数宣言では関数名は省略不可
function bar(){
}

```
名前を持たない関数のことを**匿名関数** (または無名関数) と呼ぶ(pythonとかだとラムダ式なんて言う)
さらに省略した書き方に [アローファンクション](./arrowFunction.md) とかもある。
