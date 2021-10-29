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
docker run --rm -it -v $PWD:/workdir asanonaoki/emath platex -shell-escape YOUR_FILE_NAME.tex
docker run --rm -it -v $PWD:/workdir asanonaoki/emath dvipdfmx YOUR_FILE_NAME.dvi
```
Replace YOUR_FILE_NAME with the actual tex file name.

### Advanced Usage(latexmk)
First, create .latexmkrc file. Example is below:
>$latex = 'platex -shell-escape %O %S';  
>$dvipdf = 'dvipdfmx %O -o %D %S';  

Now, you can use latexmk command.
```
docker run --rm -it -v $PWD:/workdir asanonaoki/emath latexmk -pdfdvi YOUR_FILE_NAME.tex
```
Replace YOUR_FILE_NAME with the actual tex file name.

If you would like to use sty and/or fonts files, add these settings in the .latexmkrc file like this:
>ensure_path('TEXINPUTS', './sty//');  
>ensure_path('OSFONTDIR', './fonts');  

By doing so, sty files in your sty subdirectory and fonts files in your fonts subdirectory are included.

Directory structure
<pre>
.
├── .latexmkrc
├── YOUR_FILE_NAME.tex
├── fonts
│   └── bar.ttc
└── sty
    └── foo.sty
</pre>

### Via TeXworks
To use this image via TeXworks, adjusting typesetting is mandatory.

(1) Click "Edit" and "Preferences..."   
(2) Choose the "Typesetting" tab.  
(3) Click "+" mark at the bottom of the Processing tools.  
(4) Edit appropriately.  
  (i) Any name will do. I put "docker_latexmk"  
  (ii) Program is "docker"  
  (iii) Arguments are "run", "--rm", "-v", "$directory:/workdir", "asanonaoki/emath", "latexmk", "-pdfdvi", "$basename". Put each of them in the seperate box.  
  (iv) Check "View PDF after running"  
  (v) Click "OK"  

<img src="./texworks_setting1.png">

## Author
[Asano Naoki](https://asanonaoki.com/blog/)


## License
Under the MIT License. See [LICENSE](/LICENSE) for details.


## Acknowledgments
- Based on [Paperist/texlive-ja: The minimal TeXLive Docker image for Japanese](https://github.com/Paperist/texlive-ja) docker image.
- Thanks for [emath](http://emath.s40.xrea.com/).

