/* A Bison parser, made by GNU Bison 3.7.5.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_A1_TAB_H_INCLUDED
# define YY_YY_A1_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    INTEGER_LITERAL = 258,         /* INTEGER_LITERAL  */
    EQ = 259,                      /* EQ  */
    DIV = 260,                     /* DIV  */
    MUL = 261,                     /* MUL  */
    PLUS = 262,                    /* PLUS  */
    MINUS = 263,                   /* MINUS  */
    SEMICOLON = 264,               /* SEMICOLON  */
    LEFTCURLBRAC = 265,            /* LEFTCURLBRAC  */
    RIGHTCURLBRAC = 266,           /* RIGHTCURLBRAC  */
    LEFTBRAC = 267,                /* LEFTBRAC  */
    RIGHTBRAC = 268,               /* RIGHTBRAC  */
    LEFTSQBRAC = 269,              /* LEFTSQBRAC  */
    RIGHTSQBRAC = 270,             /* RIGHTSQBRAC  */
    COMMA = 271,                   /* COMMA  */
    QUES = 272,                    /* QUES  */
    NOT = 273,                     /* NOT  */
    AND = 274,                     /* AND  */
    OR = 275,                      /* OR  */
    NEQ = 276,                     /* NEQ  */
    LEQ = 277,                     /* LEQ  */
    DOT = 278,                     /* DOT  */
    IDENTIFIER = 279,              /* IDENTIFIER  */
    CLASS = 280,                   /* CLASS  */
    PUBLIC = 281,                  /* PUBLIC  */
    STATIC = 282,                  /* STATIC  */
    VOID = 283,                    /* VOID  */
    MAIN = 284,                    /* MAIN  */
    STRING = 285,                  /* STRING  */
    SOP = 286,                     /* SOP  */
    EXTENDS = 287,                 /* EXTENDS  */
    RETURN = 288,                  /* RETURN  */
    INTTYPE = 289,                 /* INTTYPE  */
    BOOL = 290,                    /* BOOL  */
    IF = 291,                      /* IF  */
    ELSE = 292,                    /* ELSE  */
    WHILE = 293,                   /* WHILE  */
    THIS = 294,                    /* THIS  */
    NEW = 295,                     /* NEW  */
    HDEF = 296,                    /* HDEF  */
    DLEN = 297,                    /* DLEN  */
    TR = 298,                      /* TR  */
    FL = 299                       /* FL  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 21 "A1.y"

	//int	int_val;
	char* char_val;
	//bool bool_val;

#line 114 "A1.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_A1_TAB_H_INCLUDED  */
