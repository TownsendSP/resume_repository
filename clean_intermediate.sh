#! /bin/bash
mv ./*.synctex.gz ./*.out ./*.log ./*.aux ./*latexmk ./*fls ./intermediate/ -v
mv ./*.pdf ./output/ -v
