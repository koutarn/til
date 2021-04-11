# switch文は関数化する
```javascript
function toJaString(week){
    switch(week){
        case "monday":
            return "月";
        case "tuesday":
            return "火";
        case "wednesday":
            return "水";
        case "thursday":
            return "木";
        case "friday":
            return "金";
        case "saturday":
            return "土";
        case "sunday":
            return "日";
        default:
            throw "エラー";
    }
}

```
* switch文は関数の中に存在すると無駄に場所を取って読みづらい
* switch文専用の関数を用意し、何を返すのかを明確化しよう
* その際に直接returnするようにするともっと見やすくなる。
