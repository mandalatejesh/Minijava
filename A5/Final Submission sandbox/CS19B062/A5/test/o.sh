RED='\033[0;31m';
NC='\033[0m';
GREEN='\033[0;32m';

find ./MINI_RA_DEFAULT -type f -name "*.miniRA" | while read tin; do
tin="${tin%.*}"
input=${tin:18};
   temp=$(java main < ./MINI_RA_DEFAULT/$input.miniRA);
   if [[ ${temp} -eq 0 ]]
   then
   	#echo "${temp}"
   	echo -e "${RED}$input syntax error"; echo -e "${NC}"
   else 
   	java -jar kgi.jar < ./MINI_RA_DEFAULT/$input.miniRA > ./expectedOutputs/$input.eans
   fi
  done
