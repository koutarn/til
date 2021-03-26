## 配列メソッド
### forEachメソッド

```javascript
const array = [2,4,6];
array.forEach(currentValue=>{
    //配列の要素ごとに呼び出される処理
    console.log(currentValue);  //2,4,6
});
```
[配列](array.md)にはforEachメソッドがあり、反復処理を行える。
forEachは[高階関数](highOrderFunction.md)であり、[コールバック関数](./callbackFunction.md)には
配列の要素が先頭から順番に渡されて実行される。
上記の例だと、配列の中身が順に渡されるので2,4,6となる。

```javascript
function sum(numbers){
    let total = 0;
    numbers.forEach(num =>{
        total += num;
    });
    return total;
}

console.log(sum([1,2,3,4,5]));   //15
```
関数を作成するとこんな感じ。
forEachはbreakとcontinueが出来ないので注意。
配列の中身を渡して愚直に繰り返し処理をするっぽい。

### someメソッド(配列の要素のテスト)
```javascript
const array = [1,2,3,4,5];
array.some(num =>{
    if num % 2 === 0 {
        return true;
    }
    return false;
});

```
some関数は配列の各要素をテストする関数。
コールバック関数が一度でもtrueを返すと反復処理を終了し、
some関数はtrueを返す。

### filterメソッド(特定の要素の集計)
```javascript
function isEven(num){
    return num % 2 === 0;
}

const array = [1,5,10,15,20];
console.lo(array.filter(isEven));   //10,20

```
filter関数はコールバック関数がtrueを返すもののみを
集めた配列を戻り値として戻す


### reduceメソッド(各要素の集計)
```javascript
function sum(numbers) {
    return.numbers.reduce((total,num)=> {
        return total += num;
    },0);   //初期値0
}
```
reduceメソッドはコールバック関数内で定義された値を
反復処理で計算していき、最後の計算結果を返す。

### for...of文
```javascript
const array = [1,2,3];
for (const value of array) {
    console.log(value); //1,2,3
}
```
javascriptではSybol.iteratorという名前のメソッドを実装した
オブジェクトをiterableと呼ぶ。iterableオブジェクトはfor...of文で反復処理ができる。
一般的に言うforeach構文だと思う。
forEachに似ているがbreak,continue,returnの制御ができるっぽい。こっちのほうを出来るだけ使う。

### まとめ
* continue,break等はfor文のみ使用可能(配列メソッドでは不可)
* 配列メソッドは一時変数を管理する必要がない。
* 配列メソッドは処理をコールバック関数として書く。
