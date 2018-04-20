#!/bin/bash

# replace \citet{...} with (\cite{...})
#

# needs an argument: filename
if [ $# -lt 1 ]; then
    echo "EG: $0 filename.tex"
    exit 0
fi

# back up the file before changing it
echo "copy of input file at backup_${1}"


# sed syntax: sed 's/regex/replacement/flags'

#######################
# A) I want to go from \citep{...} to (\cite{...})
#######################

# For testing:
#echo '\citep{Young,blah203} blah, \citep{Juger}' | sed 's/\\citep{\([^}]*\)}/(\\cite{\1})/g'
#
#sed -i 's/\\citep{\([^}]*\)}/(\\cite{\1})/g' $1
#

######################
# B) Now I want to go from (\citet{...}) to \citep{...}
######################

# For testing:
echo 'blah blah (\citet{Young,blah203}) blah, (\citet{Juger})'
echo 'becomes'
echo 'blah blah (\citet{Young,blah203}) blah, (\citet{Juger})' | sed 's/(\\citet{\([^}]*\)})/\\citep{\1}/g'

# replace inline all the (citet{}) with citep{}
sed -i 's/(\\citet{\([^}]*\)})/\\citep{\1}/g' $1

# Can try diff or colordiff to check the changes between backup and new file
