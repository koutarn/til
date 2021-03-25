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
逆に宣言して使う事を[関数宣言](functionDeclaration.md)という。