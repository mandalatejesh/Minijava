RED='\033[0;31m';
NC='\033[0m';

find ./testcases -type f -name "*" | while read tin; do
input="${tin:12}";
  ./run < ./testcases/$input > $input.java
   (javac $input.java && java $input > ./outs/output$input && echo -e "${NC}passed $input" && rm *.class) || echo -e "${RED}failed $input"
  done
