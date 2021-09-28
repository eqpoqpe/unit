#!/bin/bash
# This is a noshit bash script for unit test
# Copyright (c) 2021 Ryan Martin

declare unit_file="unit"

if [ "$#" -eq 1 ]; then
case "$1" in
"python3"|"python") vim $unit_file.py
	;;
"c"|"c++") vim $unit_file.c
	;;
"java"|"fuck") vim $unit_file.java
	;;
"javascript"|"js") vim $unit_file.js
	;;
esac
elif [ "$#" -eq 0 ]; then
	declare ISF="|"
	declare unit_test_dir=$(pwd)
	declare lang_ff=("${IFS}bash${IFS}py${IFS}java${IFS}js")
if [ -e $unit_test_dir/$unit_file.* ]; then
	declare _file=$(ls $unit_file.*) 2>/dev/null
#if [[ "${IFS}${lang_ff[*]}${ISF}" =~ "${IFS}${_file##*.}${IFS}" ]]; then
#fi
	case "${_file##*.}" in
	"py") python3 $_file
		;;
	"java") java $_file
		;;
	"js") node $_file
		;;
	"sh") bash $_file
		;;
	esac
	unset IFS
fi
fi
