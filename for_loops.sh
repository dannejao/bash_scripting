#!/bin/bash

# multi-line comment
: <<'END'
Letar igenom directory logfiles efter alla filer som
slutar på .log och packar ner dessa till tar.gz filer
använder deras namn tex, altenatives.log.tar.gz
END



for file in logfiles/*.log
do
    tar -czvf $file.tar.gz "$file" # "quoting" ifall filnament skulle inne ha mellan slag eller special characters.
done
