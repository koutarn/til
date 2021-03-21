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

