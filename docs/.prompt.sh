#!/bin/bash

function FG {
	local COLOR_FOREGROUND="\e[1;38;5;FGm"
	echo "\[${COLOR_FOREGROUND/FG/$1}\]"
}

function BG {
	local COLOR_BACKGROUND="\e[1;48;5;BGm"
    echo "\[${COLOR_BACKGROUND/BG/$1}\]"
}

###############################################################################
# Function to build multi-colored prompt with environment information
# Parameters:
# $1=FG1 $2=BG1 $3=STR1 $4=FG2 $5=BG2 $6=STR2 $7=FG3 $8=BG3 $9=STR3
###############################################################################
function build {
	local END="\[\e[0m\]"
	local FG1=$1; BG1=$2; FG2=$4; BG2=$5; FG3=$7; BG3=$8; T1=$3; T2=$6; T3=$9
	echo "$(FG $FG1)$(BG $BG1) $T1" \
		 "$(FG $BG1)$(BG $BG2)$(FG $FG2) $T2"\
		 "$(FG $BG2)$(BG $BG3)$(FG $FG3) $T3"\
		 "$END$(FG $BG3)$END "
}

function make_prompt {
	CURRENT_DIR="$(pwd)"
	TXT="docs"
	PS1="$(build 255 132 DOCKERS 255 126 "$TXT" 212 132 "$CURRENT_DIR")"
}

PROMPT_COMMAND="make_prompt; $PROMPT_COMMAND"
