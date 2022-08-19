#!bin/bash
COUNT=0
PASS=0
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
rm ./output/*
for tin in mips/*
do
tin="${tin%.*}"
input="$(basename "$tin")"
#   temp=$(java main < ./mips/$input.s 2> ./err/syntax/$input.syn); # check for errors in grammar
#   if [[ ${temp} -eq 0 ]]
#   then
#   	#echo "${temp}"
#   	echo -e "${RED}$input syntax error"; echo -e "${NC}"
#   else 
   	java -jar Mars4_5.jar nc sm ./mips/$input.s > ./output/$input.answer 2> ./err/$input.err # check for errors in simulator
   	if [ $? -eq 0 ]; then
   		diff -B ./expectedOutputs/$input.eans ./output/$input.answer > ./err/$input.DIFFChecker
   		if [ $? -eq 0 ]; then
   			echo -e "${GREEN}$input pass"
   			PASS=$((PASS+1))
   		else
   			echo -e "${RED}$input fail"
   		fi
   	else 
   		echo -e "${RED}$input semantic error"
#   	fi
   	fi
   	COUNT=$((COUNT+1))
  done
    echo -e "${NC}Total ${PASS}/${COUNT} cases passed"
