#! /usr/bin/env bash

if [ $OOC=="" ]; then
    OOC="ooc"
fi
OOC_FLAGS="${OOC_FLAGS} -v -g +-O0 -editor=''"
builddir="build"
launchedprocs=""
maxjobs=3
 
walk_tree() {
    local IFS outpath
	ls "$1" | while IFS= read i; do
		if [ -d "$1/$i" ]; then
			echo "$i/"
			walk_tree "$1/$i" "$2" | sed -r 's/^/\t/'
		else
            condition=$(echo "$i" | grep -E "$2$")
            if [ condition!="" ]; then
                outpath=$(echo "${builddir}/$1/$i" | sed -r 's/\.ooc//')
                mkdir -p ${outpath}
        
                echo "$i"
                ${OOC} ${OOC_FLAGS} -sourcepath=$1 -outpath=${outpath} -o=${outpath/exec} $i &> ${outpath}/compile.log &
                launchedprocs=$(printf "${launchedprocs}\n$!")
                waitforprocs
            fi
		fi
	done
}

waitforprocs() {
    waiting=1
    while true; do
        waiting=0
        runningprocs=$(ps x | sed -r 's/[ ]*([0-9]+) .*/\1/g')
        remainprocs=$(printf "${launchedprocs}\n${runningprocs}" | sed 's/^[ \t]*//;s/[ \t]*$//' | sort | uniq -d | sed -n '$=')
        if [[ ${remainprocs} -lt ${maxjobs} ]]; then
            break
        fi
        echo "Got ${remainprocs} processes running, waiting.."
        sleep 0.2
    done
}

rm -rf ${builddir} 
walk_tree "source/" "\.ooc$"
