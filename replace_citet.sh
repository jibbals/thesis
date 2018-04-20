#!/bin/bash

# replace \citet{...} with (\cite{...})
#

# needs an argument: filename
if [ $# -lt 1 ]; then
    echo "EG: $0 filename.tex"
    exit 0
fi


# sed syntax: sed 's/regex/replacement/flags'
# replace \citep{...} with (\cite{...})
#
# For testing:
#echo '\citep{Young,blah203} blah, \citep{Juger}' | sed 's/\\citep{\([^}]*\)}/(\\cite{\1})/g'
#sed -i 's/\\citep{\([^}]*\)}/(\\cite{\1})/g' $1

# Now I want to go back from (\citet{...}) to \citep{...}

# For testing:

echo 'blah blah (\citet{Young,blah203}) blah, (\citet{Juger})'
echo 'becomes'
echo 'blah blah (\citet{Young,blah203}) blah, (\citet{Juger})' | sed 's/(\\citet{\([^}]*\)})/\\citep{\1}/g'
echo 'making copy of input file at check_me.txt'
sed 's/(\\citet{\([^}]*\)})/\\citep{\1}/g' $1 > check_me.txt
