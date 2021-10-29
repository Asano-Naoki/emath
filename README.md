[日本語版 README はこちら](/README_ja.md)

# asanonaoki/emath
The minimal [emath](http://emath.s40.xrea.com/) docker image


## Summary
You can use emath easily through docker.


## Install
```
docker pull asanonaoki/emath
```

## Usage
### Primitive Usage
```
docker run --rm -it -v $PWD:/workdir asanonaoki/emath sh -c 'platex YOUR_FILE_NAME.tex'
docker run --rm -it -v $PWD:/workdir asanonaoki/emath sh -c 'dvipdfmx YOUR_FILE_NAME.dvi'
```
Replace YOUR_FILE_NAME with the actual tex file name.

### Advanced Usage(latexmk)
First, create .latexmkrc file. Example is below:
>$latex = 'platex -synctex=1 -shell-escape %O %S';  
>$dvipdf = 'dvipdfmx %O -o %D %S';  

Now, you can use latexmk command.
```
docker run --rm -it -v $PWD:/workdir asanonaoki/emath:latest sh -c 'latexmk YOUR_FILE_NAME.tex'
```
Replace YOUR_FILE_NAME with the actual tex file name.

If you would like to use sty and/or fonts files, add these setting in the .latexmkrc file like this:
>ensure_path('TEXINPUTS', './sty//');  
>ensure_path('OSFONTDIR', './fonts');  

By doing so, sty files in your sty subdirectory and fonts files in your fonts subdirectory are included.

### Via Texworks
(Under construction)

## Author
[Asano Naoki](https://asanonaoki.com/blog/)(Japanese)


## License
Under the MIT License. See [LICENSE](/LICENSE) for details.


## Acknowledgments
- Based on [Paperist/texlive-ja: The minimal TeXLive Docker image for Japanese](https://github.com/Paperist/texlive-ja) docker image.
- Thanks for [emath](http://emath.s40.xrea.com/).

