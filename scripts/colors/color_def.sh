#!/usr/bin/env bash

declare -r Black='\033[0;30m'
declare -r DarkGray='\033[1;30m'
declare -r Blue='\033[0;34m'
declare -r LightBlue='\033[1;34m'
declare -r Green='\033[0;32m'
declare -r LightGreen='\033[1;32m'
declare -r Cyan='\033[0;36m'
declare -r LightCyan='\033[1;36m'
declare -r Red='\033[0;31m'
declare -r LightRed='\033[1;31m'
declare -r Purple='\033[0;35m'
declare -r LightPurple='\033[1;35m'
declare -r Brown='\033[0;33m'
declare -r Yellow='\033[1;33m'
declare -r LightGray='\033[0;37m'
declare -r White='\033[1;37m'
declare -r NoColor='\033[0m'

colorEcho () {
    colorSeq=$1
    text=$2

    echo -e "${colorSeq}${text}${NoColor}"
}


