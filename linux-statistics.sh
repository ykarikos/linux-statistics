#!/bin/sh

TAGS=`git tag|grep -v -- -|grep -vF 2.6.11|cut -b 2-|sort -t. -k1,1n -k2,2n`

for tag in $TAGS; do
    git checkout v$tag >/dev/null 2>&1
    numfiles=`find . -type f|wc -l`
    treesize=`du -scm *|tail -1|cut -f1`
    echo $tag $treesize $numfiles
done

