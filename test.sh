#!/bin/sh

source ./output_functional.sh

#output_with_color $FG_YELLOW $BG_BLUE "hello world"
#output_with_fg_color $FG_YELLOW "hello world"
#output_with_bg_color $BG_BLUE "hello world"

#xlz_defined=/home/hadoop
#prepend_export xlz_defined "/var/www"
#output_with_color $FG_YELLOW $BG_DGREEN "$xlz_defined"
#prepend_export xlz_defined "/usr/local"
#output_with_color $FG_YELLOW $BG_DGREEN "$xlz_defined"

output_with_color $FG_YELLOW $BG_DGREEN $(calc_with_bc "2*4/5" 2)
