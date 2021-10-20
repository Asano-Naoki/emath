# asanonaoki/emath
The minimal [emath](http://emath.s40.xrea.com/) Docker image


## Summary
You can use emath easily through docker.


## Install
```
docker pull asanonaoki/emath:latest
```

## Usage
```
docker run --rm -it -v $PWD:/workdir asanonaoki/emath:latest sh -c 'latexmk YOUR_FILE_NAME.tex'
```
Replace YOUR_FILE_NAME with the actual tex file name.


## Author
[Asano Naoki](https://asanonaoki.com/blog/)(Japanese)


## License
Under the MIT License.See [LICENSE](/LICENSE) for details.


## 謝辞
- Based on [Paperist/texlive-ja: The minimal TeXLive Docker image for Japanese](https://github.com/Paperist/texlive-ja) docker image.
- Thanks for [emath](http://emath.s40.xrea.com/).

