# 繰り返し

```vim
while {条件式}
    {ステートメント}
endwhile
```
* while文。よくある形
* continueとbreakも使える。

```vim
let array = ['one','two','three']
for val in array
    echo val
endfor
```
* vimのforは他言語のforeachみたいな扱い。

```vim
for i in range(0,4)
    {ステートメント}
endfor
```
* rangeで範囲を指定するとよくあるfor文として回せる。
    * `range`関数を使うとある長さのリストを作成出来るのでそれを利用している。

