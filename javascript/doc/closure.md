# クロージャーとは
* 外側のスコープにある変数への参照は保持できるという事
* 以下の二点の性質により実現されている。
    * ガベージコレクションの働きで、参照しなくなるまでデータは保持される。
    * javascriptはスコープにおいて、どの識別子がどの変数を参照するかは静的に決定される。
* 

## closureの例
```javascript
const createCounter = () => {
    let count = 0;
    return function increment() {
        // `increment`関数は`createCounter`関数のスコープに定義された`変数`count`を参照している
        count = count + 1;
        return count;
    };
};
// createCounter()の実行結果は、内側で定義されていた`increment`関数
const myCounter = createCounter();

// myCounter関数の実行結果は`count`の評価結果
console.log(myCounter()); // => 1
console.log(myCounter()); // => 2
```
* myCounter変数はcreateCounter関数の返り値であるincrement関数を参照している
* myCounter変数はincrement関数を経由してcount変数を参照している
* myCounter変数を実行した後もcount変数への参照は保たれている
* myCounter → increment → count
