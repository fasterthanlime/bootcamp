#! /usr/bin/env bash

if [ $OOC=="" ]; then
    OOC="ooc"
fi

OOC_FLAGS="${OOC_FLAGS} -v -g +-O0"
 
walk_tree() {
    local IFS outpath
	ls "$1" | while IFS= read i; do
		if [ -d "$1/$i" ]; then
			echo "$i/"
			walk_tree "$1/$i" "$2" | sed -r 's/^/\t/'
		else
            #echo "$i"
            outpath="build/$1/$i"
            mkdir -p ${outpath}
			echo "${OOC} ${OOC_FLAGS} $1/$i -outpath=${outpath}"
		fi
	done
}
 
walk_tree "." "\.ooc$"
