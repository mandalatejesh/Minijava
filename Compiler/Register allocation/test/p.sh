RED='\033[0;31m';
NC='\033[0m';
GREEN='\033[0;32m';

find ./miniRA -type f -name "*.miniRA" | while read tin; do
input=${tin:9};
   temp=$(java main < ./miniRA/$input);
   if [[ ${temp} -eq 0 ]]
   then
   	#echo "${temp}"
   	echo -e "${RED}$input syntax error"; echo -e "${NC}"
   else 
   	java -jar kgi.jar < ./miniRA/$input > ./output/$input.answer 2> out.txt
   	if [ $? -eq 0 ]; then
   		diff -w ./expectedOutputs/$input.eans ./output/$input.answer > out.txt
   		if [ $? -eq 0 ]; then
   			echo -e "${GREEN}$input pass"; echo -e "${NC}"
   		else
   			echo -e "${RED}$input fail"; echo -e "${NC}"
   		fi
   	else 
   		echo -e "${RED}$input semantic error"; echo -e "${NC}"
   	fi
   fi
  done
