# 可変長引数
* 可変長引数を実現するためには、Rest parametersかargumentsという特殊な変数を利用する。
* argumentsは分かりづらくなるので基本的にはRest parametersを使用する。

## REST Parameters
```javascript
//REST構文
function foo(...args){
    console.log(args);
}

foo('a','b','c');

//可変長引数とは逆のことも出来る(Spred構文)

function bar(x,y,z){
    console.log(x);
    console.log(y);
    console.log(z);
}

const array = [1,2,3];
//spred構文(Rest prametersと指定方法は同じ
bar(...array);

//こう書いたのと同じ
bar(array[0],array[1],array[2]);
```

## arguments
```javascript
//arguments
function foo() {
    console.log(arguments[0]);
    console.log(arguments[1]);
    console.log(arguments[2]);
}
```
argumentsを使用した例。可変長引数があるのか判断出来ない等色々な問題がある。
* [Arrow Function](./arrowFunction.md)では利用できない
* [Array-likeオブジェクト](arrayLikeObject.md)であるため、Arrayのメソッドを利用できない
* 関数が可変長引数を受けつけるのかを仮引数だけを見て判断できない
