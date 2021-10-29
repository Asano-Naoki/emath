# asanonaoki/emath
[emath](http://emath.s40.xrea.com/)を使うための最小限のdockerイメージ


## 機能
dockerを活用して手軽にemathが使える環境を構築できます。


## インストール
```
docker pull asanonaoki/emath
```

## 使い方
### 原始的な使い方
```
docker run --rm -it -v $PWD:/workdir asanonaoki/emath sh -c 'platex -shell-escape YOUR_FILE_NAME.tex'
docker run --rm -it -v $PWD:/workdir asanonaoki/emath sh -c 'dvipdfmx YOUR_FILE_NAME.dvi'
```
YOUR_FILE_NAMEの部分はtexファイルのファイル名に置き換えてください。

### 発展的な使い方(latexmk)
最初に.latexmkrcファイルを作ってください。例：
>$latex = 'platex -shell-escape %O %S';  
>$dvipdf = 'dvipdfmx %O -o %D %S';  

これで以下のコマンドが実行できるようになります。
```
docker run --rm -it -v $PWD:/workdir asanonaoki/emath sh -c 'latexmk YOUR_FILE_NAME.tex'
```
YOUR_FILE_NAMEの部分はtexファイルのファイル名に置き換えてください。

styファイルやfontsファイルを使いたい場合は、以下の設定を.latexmkrcファイルに書き加えてください。
>ensure_path('TEXINPUTS', './sty//');  
>ensure_path('OSFONTDIR', './fonts');  

これにより、styサブディレクトリの中にあるstyファイルと、fontsサブディレクトリにあるfontsファイルが含まれるようになります。

ディレクトリ構成
<pre>
.
├── .latexmkrc
├── YOUR_FILE_NAME.tex
├── fonts
│   └── bar.ttc
└── sty
    └── foo.sty
</pre>

### TeXworks経由の使い方
(作成中です)


## 著者
[浅野直樹](https://asanonaoki.com/blog/)


## ライセンス
MITライセンスの元にライセンスされています。詳細は[LICENSE](/LICENSE)をご覧ください。


## 謝辞
- [Paperist/texlive-ja: The minimal TeXLive Docker image for Japanese](https://github.com/Paperist/texlive-ja)のdockerイメージをもとに拡張しました。
- これまで[emath](http://emath.s40.xrea.com/)にお世話になってきたので、これを簡単に使えるようにしました。

