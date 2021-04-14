# c++における混合演算
```c++
int a,b;
float sum;
a = 3;
b = 2;
sum = 1.0f * a / b;
```
* c++で[混合演算](../../keyword/mixedOperation.md)を行う際は精度の高い型に暗黙で変換される。
* 上記の例だとデータ型はfloatになり、1.5が入る。
