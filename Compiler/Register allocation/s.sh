RED='\033[0;31m';
NC='\033[0m';
GREEN='\033[0;32m';

   javac A4.java;
find ./test/microIR -type f -name "*.microIR" | while read tin; do
input="${tin:15}";
   java A4 < ./test/microIR/$input > ./test/miniRA/$input
  done
