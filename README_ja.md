# asanonaoki/emath
[emath](http://emath.s40.xrea.com/)を使うための最小限のdockerイメージ


## 機能
dockerを活用して手軽にemathが使える環境を構築できます。


## インストール
```
docker pull asanonaoki/emath:latest
```

## 使い方
```
docker run --rm -it -v $PWD:/workdir asanonaoki/emath:latest sh -c 'latexmk YOUR_FILE_NAME.tex'
```
YOUR_FILE_NAMEの部分はtexファイルのファイル名に置き換えてください。


## 著者
[浅野直樹](https://asanonaoki.com/blog/)


## ライセンス
MITライセンスの元にライセンスされています。詳細は[LICENSE](/LICENSE)をご覧ください。


## 謝辞
- [Paperist/texlive-ja: The minimal TeXLive Docker image for Japanese](https://github.com/Paperist/texlive-ja)のdockerイメージをもとに拡張しました。
- これまで[emath](http://emath.s40.xrea.com/)にお世話になってきたので、これを簡単に使えるようにしました。

