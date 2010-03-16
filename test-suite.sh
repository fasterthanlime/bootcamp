#! /usr/bin/env bash

trap bashtrap INT

bashtrap() {
    "Interrupted! exiting.."
    exit 0
}

if [ ! "$OOC" ]; then
    OOC="ooc"
fi
OOC_FLAGS="${OOC_FLAGS} -v -g +-O0 -editor='' -shout"
builddir="build"
launchedprocs=""
maxjobs=3
echo 0 > .bctotal

walk_tree() {
    local IFS outpath
	ls "$1" | while IFS= read i; do
		if [ -d "$1/$i" ]; then
			echo "$i/"
			walk_tree "$1/$i" "$2" | sed -r 's/^/\t/'
		else
            if [[ $i =~ .*\.ooc ]]; then
                outpath=$(echo "${builddir}/$1/$i" | sed -r 's/\.ooc//')
                mkdir -p ${outpath}
        
                declare -i total
                total=$(cat .bctotal)+1
                echo ${total} > .bctotal
                echo "$i (test #${total})"
                ${OOC} ${OOC_FLAGS} -sourcepath=$1 -outpath=${outpath} -o=${outpath}/exec $i &> ${outpath}/compile.log &
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
        sleep 0.1
    done
}

walk_tree "source" "\.ooc"
rm .bctotal

logs=$(find build/ -name "*.log")

# count number of failed tests
echo "" > .failcount > .okcount
failcount=$(cat $logs | grep -E '\[FAIL\]' | sed -n '$=')
okcount=$(  cat $logs | grep -E '\[ OK \]' | sed -n '$=')
total=$(    echo $logs | sed -r 's/ /\n/g' | sed -n '$=')

declare -i wtfcount
wtfcount=total-failcount-okcount
echo "Compiled ${total} tests, ${okcount} OK, ${failcount} FAILED, ${wtfcount} WTF =)"
