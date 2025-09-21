#! /bin/bash

# switch case on the first argument - if case "all" print "hello"
case $1 in
    "cyber")
        pdflatex -interaction=nonstopmode "\def\cyber{1} \input{resume.tex}"
        ;;
    "se")
        pdflatex -interaction=nonstopmode "\def\se{1} \input{resume.tex}"
        ;;
    "ml")
        pdflatex -interaction=nonstopmode "\def\ml{1} \input{resume.tex}"
        ;;
    "all")
        echo "hello"
        pdflatex -interaction=nonstopmode "\def\VARIANT{all}\input{resume.tex}"
        ;;
    *)
        echo "Usage: $0 {cyber|se|ml|all}"
        exit 1
        ;;
esac




# case "$1" in

# if
# pdflatex -interaction=nonstopmode -halt-on-error -synctex=1 -jobname=Resume-All '\\def\\VARIANT{all}\\input{resume.tex}'');
# // View the combined PDF (internal viewer)
# run('txs:///view-pdf-internal');

# // 2) Build the three individual variants into ./outputs
# run('txs:///pdflatex -interaction=nonstopmode -halt-on-error -synctex=1 -output-directory=outputs -jobname=Resume-Cyber "\\def\\VARIANT{cyber}\\input{resume.tex}"');
# run('txs:///pdflatex -interaction=nonstopmode -halt-on-error -synctex=1 -output-directory=outputs -jobname=Resume-SE "\\def\\VARIANT{se}\\input{resume.tex}"');
# run('txs:///pdflatex -interaction=nonstopmode -halt-on-error -synctex=1 -output-directory=outputs -jobname=Resume-ML "\\def\\VARIANT{ml}\\input{resume.tex}"');