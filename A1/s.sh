bison -d A1.y
flex A1.l
gcc A1.tab.c lex.yy.c -lfl -o run
bash a.sh
