#!/bin/bash

P_COLS=(196 211 196 255 126 255)

BG1=${P_COLS[0]:-24}
BG2=${P_COLS[1]:-31}
BG3=${P_COLS[2]:-24}
FG1=${P_COLS[3]:-255}
FG2=${P_COLS[4]:-255}
FG3=${P_COLS[5]:-255}

A='\001'
B='\002'

END="$A$(tput sgr0)$B"

ARROW=""

CS="$A$(tput sc)$B $A$(tput rc)$B$A$ARROW$B"

function COLOR_FB {
	echo "$A$(tput setaf $1)$(tput setab $2)$B"
}
function COLOR_F {
	echo "$A$(tput setaf $1)$B"
}

function build {
	echo \
		"$(COLOR_FB $FG1 $BG1) $1" \
		"$(COLOR_FB $BG1 $BG2)$CS$(COLOR_F $FG2 $BG2) $2"\
		"$(COLOR_FB $BG2 $BG3)$CS$(COLOR_F $FG3 $BG3) $3"\
		"$END$(COLOR_F $BG3)$CS$END "
}

function make_prompt {
	CURRENT_DIR="../$(basename $(pwd))"
	PS1="$(build DOCKERS music $CURRENT_DIR)"
}
PROMPT_COMMAND="make_prompt; $PROMPT_COMMAND"
