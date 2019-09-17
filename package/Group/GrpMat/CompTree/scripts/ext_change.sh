#!/bin/sh

if test $# -ge 3; then
    BASE=`basename .$1 .$2`
    NAME=${BASE}.$3
    
    svn mv $1 $NAME
    sed --in-place --regexp-extended s/\\.$2/.$3/g $NAME
else
    echo "Usage : $0 <file> <from_suffix> <to_suffix>"
fi
