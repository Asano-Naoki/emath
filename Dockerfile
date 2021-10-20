FROM paperist/alpine-texlive-ja:latest

COPY emathc210509.zip /usr/local/texlive/texmf-local/tex/platex/misc/emath/
#COPY eclarith.zip /usr/local/texlive/texmf-local/tex/platex/misc/emath/
COPY emathpl16.zip /usr/local/lib/perl5/site_perl/

RUN apk add --no-cache ghostscript \
    && mkdir -p /usr/local/texlive/texmf-local/tex/platex/misc/emath/ \
    && cd /usr/local/texlive/texmf-local/tex/platex/misc/emath/ \
    && unzip emathc210509.zip \
#    && unzip sty.zip \
#    && unzip eclarith.zip \
    && cd /usr/local/lib/perl5/site_perl/ \
    && unzip emathpl16.zip \
    && mktexlsr





#/usr/local/texlive/texmf-local
#/tex/platex

#/usr/local/texlive/texmf-local/tex/platex/misc/emath/
