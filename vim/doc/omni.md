### 補完

* 単語の補完先
	* カレントファイル
	* 他のウィンドウのファイル
	* ロードされたファイル (隠しバッファ)
	* ロードされてないファイル (休眠バッファ)
	* タグファイル
	* カレントファイルが #include しているファイル

* 補完したい単語の種類がわかっている場合は、次のコマンドで補完の種類を指定できる。
* 各コマンドの詳細は |ins-completion| を参照

```markdown
CTRL-X CTRL-F       ファイル名
CTRL-X CTRL-L       行全体
CTRL-X CTRL-D       マクロ定義 (インクルードファイルの中も探す)
CTRL-X CTRL-I       カレントファイルとインクルードファイル
CTRL-X CTRL-K       辞書
CTRL-X CTRL-T       同義語辞書 (シソーラス)
CTRL-X CTRL-]       タグ
CTRL-X CTRL-V       Vim のコマンドライン
CTRL-X CTRL-O       オムニ補完(インテリセンス)
```

オムニ補完→通常の補完と違い言語構造に沿った補完内容になる。

### 短縮形 (Abbreviations)

```markdown

:inoreabbrev <expr>  <buffer> 短縮入力で展開後にマップを適用しない。
:abbreviate 短縮形の一覧を表示出来る :abclear すべての短縮形を削除
```

短縮形とは長い単語を置き換える短い単語のことです。
例えば、"ad" は"advertisement" の短縮形です。
Vim では、入力した短縮形を自動的に展開することができます。

