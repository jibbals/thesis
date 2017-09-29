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

sed -i 's/\\citep{\([^}]*\)}/(\\cite{\1})/g' $1


