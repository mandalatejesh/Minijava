
   javac A5.java;
rm ./test/mips/*
find ./test/miniRA -type f -name "*.miniRA" | while read tin; do
tin="${tin%.*}"
input=${tin:14};
   java A5 < ./test/miniRA/$input.miniRA > ./test/mips/$input.s
  done
