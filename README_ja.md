# asanonaoki/emath
emathを使うための最小限のdockerイメージ


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
[浅野直樹](https://asanonaoki.com/blog/ 浅野直樹の学習日記)


## ライセンス
MITライセンスの元にライセンスされています。詳細は[LICENSE](/LICENSE)をご覧ください。


## 謝辞


