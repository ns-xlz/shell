#!/bin/sh

RESET=0
FG_BLACK=30
FG_RED=31
FG_GREEN=32
FG_YELLOW=33
FG_BLUE=34
FG_LRED=35
FG_DGREEN=36
FG_WHITE=37

BG_BLACK=40
BG_RED=41
BG_GREEN=42
BG_YELLOW=43
BG_BLUE=44
BG_LRED=45
BG_DGREEN=46
BG_WHITE=47

output_with_fg_color(){
	echo -e "\e[1;$1m$2\e[0m"
}

output_with_bg_color(){
	echo -e "\e[1;$1m$2\e[0m"
}

output_with_color(){
	echo -e "\e[$1;$2m$3\e[0m"
}

prepend_export(){
	[ -d "$2" ] && eval $1=\"$2\$\{$1:+':'\$$1\}\"  && export $1;
}

calc_with_bc(){
	if [ -n "$2" ];then
		exp="scale=$2;$1"
	else
		exp="$1"
	fi
	echo $exp | bc
}
