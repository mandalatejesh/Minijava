#!bin/bash
COUNT=0
PASS=0
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
PURPLE='\033[0;35m'
BLUE='\033[0;34m'
rm ./output/*
rm -r ./err/*
echo -e "${PURPLE}running A5...${NC}"
make s
echo -e "${PURPLE}building expected outputs...${NC}"
bash build.sh

echo -e "${PURPLE}matching outputs...${NC}"
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
	mkdir ./err/$input
   	java -jar Mars4_5.jar nc sm ./mips/$input.s > ./output/$input.answer 2> ./err/$input/$input.MARS # check for errors in simulator
   	if [ $? -eq 0 ]; then
   		diff -B ./expectedOutputs/$input.eans ./output/$input.answer > ./err/$input/$input.DIFFChecker
   		if [ $? -eq 0 ]; then
   			echo -e "[${GREEN}OK${NC}]-$input"
   			PASS=$((PASS+1))
   		else
   			echo -e "[${RED}FAIL${NC}]-$input"
   		fi
   	else 
   		echo -e "${RED}$input semantic error"
   	fi
#   	fi
   	COUNT=$((COUNT+1))
  done
    echo -e "${PURPLE} ${PASS}/${COUNT} cases passed"
    echo -e "${NC}Error info can be checked in ./err${NC}"
