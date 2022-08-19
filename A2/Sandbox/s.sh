RED='\033[0;31m';
NC='\033[0m';
GREEN='\033[0;32m';

   javac A2.java;
find ./tests -type f -name "*.java" | while read tin; do
input="${tin:8}";
   (java A2 < ./tests/$input > ./outs/$input && (diff -w ./outs/$input ./outs/ok > ./outs/errInfo/$input) && echo -e "${GREEN}success $input") || echo -e "${RED}type error: $input"
  done
