# tryとcatch
```vim
try
    read aaa
catch
    echo 'aaaを読みこめませんでした'
finally
    echo 'asdf'
endtry
```
* `try`と`endtry`の中でエラーが起きると例外に変わる。
* `catch`で例外の際の分岐を記述出来る。
* `finally`は例外が起きなくい時に入る。
