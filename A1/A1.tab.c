/* A Bison parser, made by GNU Bison 3.7.5.  */

/* Bison implementation for Yacc-like parsers in C

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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30705

/* Bison version string.  */
#define YYBISON_VERSION "3.7.5"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 3 "A1.y"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <assert.h>

char* ids[100];
char* vals[100];
char* params[100];
void store(char*,char*,char*);
char* getval(char*);
char* getparams(char*);
char* str_replace(char*,char*,char*);
char** str_split(char*, const char);


#line 89 "A1.tab.c"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

#include "A1.tab.h"
/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_INTEGER_LITERAL = 3,            /* INTEGER_LITERAL  */
  YYSYMBOL_EQ = 4,                         /* EQ  */
  YYSYMBOL_DIV = 5,                        /* DIV  */
  YYSYMBOL_MUL = 6,                        /* MUL  */
  YYSYMBOL_PLUS = 7,                       /* PLUS  */
  YYSYMBOL_MINUS = 8,                      /* MINUS  */
  YYSYMBOL_SEMICOLON = 9,                  /* SEMICOLON  */
  YYSYMBOL_LEFTCURLBRAC = 10,              /* LEFTCURLBRAC  */
  YYSYMBOL_RIGHTCURLBRAC = 11,             /* RIGHTCURLBRAC  */
  YYSYMBOL_LEFTBRAC = 12,                  /* LEFTBRAC  */
  YYSYMBOL_RIGHTBRAC = 13,                 /* RIGHTBRAC  */
  YYSYMBOL_LEFTSQBRAC = 14,                /* LEFTSQBRAC  */
  YYSYMBOL_RIGHTSQBRAC = 15,               /* RIGHTSQBRAC  */
  YYSYMBOL_COMMA = 16,                     /* COMMA  */
  YYSYMBOL_QUES = 17,                      /* QUES  */
  YYSYMBOL_NOT = 18,                       /* NOT  */
  YYSYMBOL_AND = 19,                       /* AND  */
  YYSYMBOL_OR = 20,                        /* OR  */
  YYSYMBOL_NEQ = 21,                       /* NEQ  */
  YYSYMBOL_LEQ = 22,                       /* LEQ  */
  YYSYMBOL_DOT = 23,                       /* DOT  */
  YYSYMBOL_IDENTIFIER = 24,                /* IDENTIFIER  */
  YYSYMBOL_CLASS = 25,                     /* CLASS  */
  YYSYMBOL_PUBLIC = 26,                    /* PUBLIC  */
  YYSYMBOL_STATIC = 27,                    /* STATIC  */
  YYSYMBOL_VOID = 28,                      /* VOID  */
  YYSYMBOL_MAIN = 29,                      /* MAIN  */
  YYSYMBOL_STRING = 30,                    /* STRING  */
  YYSYMBOL_SOP = 31,                       /* SOP  */
  YYSYMBOL_EXTENDS = 32,                   /* EXTENDS  */
  YYSYMBOL_RETURN = 33,                    /* RETURN  */
  YYSYMBOL_INTTYPE = 34,                   /* INTTYPE  */
  YYSYMBOL_BOOL = 35,                      /* BOOL  */
  YYSYMBOL_IF = 36,                        /* IF  */
  YYSYMBOL_ELSE = 37,                      /* ELSE  */
  YYSYMBOL_WHILE = 38,                     /* WHILE  */
  YYSYMBOL_THIS = 39,                      /* THIS  */
  YYSYMBOL_NEW = 40,                       /* NEW  */
  YYSYMBOL_HDEF = 41,                      /* HDEF  */
  YYSYMBOL_DLEN = 42,                      /* DLEN  */
  YYSYMBOL_TR = 43,                        /* TR  */
  YYSYMBOL_FL = 44,                        /* FL  */
  YYSYMBOL_YYACCEPT = 45,                  /* $accept  */
  YYSYMBOL_Goal = 46,                      /* Goal  */
  YYSYMBOL_MainClass = 47,                 /* MainClass  */
  YYSYMBOL_TypeDeclaration = 48,           /* TypeDeclaration  */
  YYSYMBOL_MethodDeclaration = 49,         /* MethodDeclaration  */
  YYSYMBOL_Type = 50,                      /* Type  */
  YYSYMBOL_Statement = 51,                 /* Statement  */
  YYSYMBOL_Expression = 52,                /* Expression  */
  YYSYMBOL_PrimaryExpression = 53,         /* PrimaryExpression  */
  YYSYMBOL_MacroDefinition = 54,           /* MacroDefinition  */
  YYSYMBOL_MacroDefStatement = 55,         /* MacroDefStatement  */
  YYSYMBOL_MacroDefExpression = 56,        /* MacroDefExpression  */
  YYSYMBOL_Identifier = 57,                /* Identifier  */
  YYSYMBOL_Integer = 58,                   /* Integer  */
  YYSYMBOL_STARONE = 59,                   /* STARONE  */
  YYSYMBOL_STARTWO = 60,                   /* STARTWO  */
  YYSYMBOL_STARTHREE = 61,                 /* STARTHREE  */
  YYSYMBOL_STARFOUR = 62,                  /* STARFOUR  */
  YYSYMBOL_STARFIVE = 63,                  /* STARFIVE  */
  YYSYMBOL_STARSIX = 64,                   /* STARSIX  */
  YYSYMBOL_STARSEVEN = 65,                 /* STARSEVEN  */
  YYSYMBOL_STAREIGHT = 66                  /* STAREIGHT  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;




#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

/* Work around bug in HP-UX 11.23, which defines these macros
   incorrectly for preprocessor constants.  This workaround can likely
   be removed in 2023, as HPE has promised support for HP-UX 11.23
   (aka HP-UX 11i v2) only through the end of 2022; see Table 2 of
   <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA4-7673ENW.pdf>.  */
#ifdef __hpux
# undef UINT_LEAST8_MAX
# undef UINT_LEAST16_MAX
# define UINT_LEAST8_MAX 255
# define UINT_LEAST16_MAX 65535
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


/* Stored state numbers (used for stacks). */
typedef yytype_uint8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

#if defined __GNUC__ && ! defined __ICC && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                            \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if !defined yyoverflow

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* !defined yyoverflow */

#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  12
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   350

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  45
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  22
/* YYNRULES -- Number of rules.  */
#define YYNRULES  91
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  246

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   299


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint8 yyrline[] =
{
       0,    58,    58,    59,    60,    61,    63,    65,    66,    67,
      68,    69,    70,    71,    72,    74,    76,    78,    80,    82,
      84,    87,    88,    89,    90,    92,    93,    94,    95,    96,
      97,    98,    99,   100,   101,   102,   128,   130,   131,   132,
     133,   134,   135,   136,   137,   138,   139,   140,   141,   142,
     143,   169,   170,   171,   198,   199,   200,   201,   202,   203,
     204,   205,   206,   208,   209,   211,   212,   213,   214,   215,
     216,   218,   219,   220,   222,   224,   226,   227,   229,   230,
     231,   232,   233,   234,   235,   236,   237,   238,   239,   240,
     241,   242
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if YYDEBUG || 0
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "INTEGER_LITERAL",
  "EQ", "DIV", "MUL", "PLUS", "MINUS", "SEMICOLON", "LEFTCURLBRAC",
  "RIGHTCURLBRAC", "LEFTBRAC", "RIGHTBRAC", "LEFTSQBRAC", "RIGHTSQBRAC",
  "COMMA", "QUES", "NOT", "AND", "OR", "NEQ", "LEQ", "DOT", "IDENTIFIER",
  "CLASS", "PUBLIC", "STATIC", "VOID", "MAIN", "STRING", "SOP", "EXTENDS",
  "RETURN", "INTTYPE", "BOOL", "IF", "ELSE", "WHILE", "THIS", "NEW",
  "HDEF", "DLEN", "TR", "FL", "$accept", "Goal", "MainClass",
  "TypeDeclaration", "MethodDeclaration", "Type", "Statement",
  "Expression", "PrimaryExpression", "MacroDefinition",
  "MacroDefStatement", "MacroDefExpression", "Identifier", "Integer",
  "STARONE", "STARTWO", "STARTHREE", "STARFOUR", "STARFIVE", "STARSIX",
  "STARSEVEN", "STAREIGHT", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_int16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
     295,   296,   297,   298,   299
};
#endif

#define YYPACT_NINF (-155)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-1)

#define yytable_value_is_error(Yyn) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     -20,   -18,   -18,    36,    -6,    12,  -155,  -155,    38,  -155,
      44,    58,  -155,   -18,    -6,  -155,  -155,    -6,    53,     9,
      -2,  -155,  -155,    78,   100,    19,   106,   -18,    83,    49,
     179,   108,   -18,   109,  -155,   160,   105,  -155,   111,   -18,
    -155,    13,   127,   140,   124,   220,  -155,   147,   150,   151,
     -18,   288,    57,   144,  -155,   179,   179,  -155,   -11,  -155,
    -155,   153,   206,   158,  -155,   226,   179,   155,   176,   -18,
     159,  -155,   170,  -155,   169,  -155,   143,   184,  -155,   187,
     179,   179,   179,   191,  -155,   179,    64,   179,  -155,   188,
    -155,   190,   193,  -155,   179,   179,   179,   179,   179,   179,
     179,   179,   179,   -18,  -155,   103,  -155,   195,   189,  -155,
     235,   179,   197,  -155,   160,  -155,  -155,    29,   199,   185,
    -155,   204,   208,   211,  -155,   223,   224,    65,   219,  -155,
     179,   222,  -155,  -155,  -155,  -155,  -155,   225,  -155,  -155,
    -155,  -155,   227,  -155,    76,  -155,  -155,  -155,   230,   229,
     101,  -155,  -155,   232,  -155,   238,   240,   288,   288,  -155,
    -155,   254,   179,   234,   261,   257,  -155,  -155,   121,  -155,
     262,  -155,  -155,   228,   -18,  -155,   265,  -155,   247,  -155,
    -155,   269,   277,   179,  -155,  -155,   115,  -155,   243,   135,
     -18,   288,  -155,  -155,   278,  -155,   275,   179,   266,   280,
     160,   282,   287,  -155,  -155,  -155,   292,   179,   258,   -18,
     293,   295,   291,   301,   179,   281,   297,   273,   284,  -155,
     305,   308,   179,  -155,   179,   285,   309,  -155,   314,   311,
     327,   179,   179,  -155,   326,   328,   329,   330,  -155,  -155,
     331,   332,  -155,   333,   334,  -155
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       0,     0,     0,     0,     2,    89,    64,    63,     0,    74,
       0,     0,     1,     0,    91,     4,    88,     3,     0,     0,
       0,    90,     5,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     7,     0,    21,    22,    78,     0,
      24,     0,     0,     0,     0,     0,    65,     0,     0,     0,
       0,    80,    24,     0,    75,     0,     0,    58,     0,    55,
      56,     0,    47,    57,    54,     0,     0,    86,     0,     0,
       0,    79,     0,     9,     0,     8,     0,     0,    25,     0,
       0,     0,     0,     0,    81,     0,     0,     0,    66,     0,
      61,     0,     0,    71,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    46,     0,    67,     0,     0,    87,
       0,     0,     0,    23,    76,    10,    11,     0,     0,     0,
      26,     0,     0,     0,    36,     0,     0,     0,     0,    62,
       0,     0,    44,    57,    43,    41,    42,     0,    37,    38,
      39,    40,     0,    51,     0,    69,    72,    68,     0,     0,
       0,    77,    13,     0,    12,     0,     0,     0,     0,    28,
      33,     0,     0,     0,     0,     0,    60,    45,     0,    52,
       0,    70,    73,     0,     0,    14,     0,    27,    30,    32,
      34,    84,     0,     0,    59,    48,     0,    53,     0,     0,
       0,     0,    85,    35,     0,    49,     0,     0,     0,     0,
       0,     0,     0,    31,    29,    50,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    82,     0,     0,    15,
       0,     0,     0,    83,     0,     0,     0,    16,     0,     0,
       0,     0,     0,    17,     0,     0,     0,     0,    18,    19,
       0,     0,    20,     0,     0,     6
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -155,  -155,   338,  -155,  -155,   -24,  -154,   -39,   233,  -155,
    -155,  -155,    -1,  -155,   -56,   -31,   -36,   131,  -130,   283,
     335,    48
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_uint8 yydefgoto[] =
{
       0,     3,     4,    14,    38,    50,    51,    61,    62,     5,
       6,     7,    63,    64,    41,    42,    53,   201,   163,    33,
       8,    15
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_uint8 yytable[] =
{
      10,    11,    39,   178,   179,     1,     9,    71,    26,    79,
      74,    69,    20,     9,   170,    84,    89,    90,    25,    13,
     117,     2,    24,    91,    73,    40,    43,   108,    52,   107,
      27,    67,    31,     9,    40,    32,    12,   203,    72,    35,
     152,   121,   122,   123,    52,   118,   125,   127,   128,    83,
      52,   192,    39,     2,    18,    35,   196,    92,   151,    45,
      46,    85,    21,     1,    52,    22,   144,    54,   112,    86,
      19,    87,   149,     9,   148,    40,    55,   126,   161,    23,
      47,   162,    56,    36,    37,    48,   153,    49,     9,   169,
      39,   165,   162,   133,   133,   133,   133,   133,   133,   133,
     133,   133,   142,    57,    58,    28,    54,    59,    60,    52,
      29,    44,    30,    40,   173,    55,   143,    34,    65,    70,
      66,    56,    68,   181,    54,     9,   174,     9,   195,   186,
       9,   162,    35,    55,   185,    36,    37,    35,    75,    56,
      36,    37,    57,    58,   194,     9,    59,    60,   199,    40,
      76,   200,   198,    77,   116,    88,    52,    52,   206,    80,
      57,    58,    81,    82,    59,    60,    93,     9,   213,    35,
     105,    32,   215,   189,   113,   221,   209,    36,    37,   114,
     115,   225,    54,   229,     9,   230,   110,    52,   111,   202,
      52,    55,   236,   237,    36,    37,   119,    56,   120,    40,
     124,   129,   146,     9,   130,   131,   145,    52,   216,   150,
     154,    94,    95,    96,    97,   155,    52,   156,    57,    58,
      98,   157,    59,    60,   158,    99,   100,   101,   102,   103,
      45,    78,   159,   160,   164,   166,    45,   106,   188,   168,
     167,   171,   172,   175,     9,    45,   147,   182,   104,   177,
       9,    47,   176,    45,    36,    37,    48,    47,    49,     9,
      36,    37,    48,   180,    49,   183,    47,     9,    45,    36,
      37,    48,   184,    49,    47,   187,   197,    36,    37,    48,
     190,    49,     9,    45,   191,   162,   193,   204,   205,    47,
     208,   214,    36,    37,    48,   210,    49,     9,    45,   207,
     211,   212,   219,   217,    47,   218,   224,    36,    37,    48,
     220,    49,     9,   200,   222,   226,   227,   228,   231,    47,
     234,   232,    36,    37,    48,   233,    49,   132,   134,   135,
     136,   137,   138,   139,   140,   141,   235,   238,   240,   239,
      16,   243,   242,   241,   244,   245,    17,   223,     0,     0,
     109
};

static const yytype_int16 yycheck[] =
{
       1,     2,    26,   157,   158,    25,    24,    38,    10,    45,
      41,    35,    13,    24,   144,    51,    55,    56,    19,    25,
      76,    41,    13,    34,    11,    26,    27,    66,    29,    65,
      32,    32,    13,    24,    35,    16,     0,   191,    39,    26,
      11,    80,    81,    82,    45,    76,    85,    86,    87,    50,
      51,   181,    76,    41,    10,    26,   186,    58,   114,    10,
      11,     4,    14,    25,    65,    17,   105,     3,    69,    12,
      12,    14,   111,    24,   110,    76,    12,    13,    13,    26,
      31,    16,    18,    34,    35,    36,   117,    38,    24,    13,
     114,   130,    16,    94,    95,    96,    97,    98,    99,   100,
     101,   102,   103,    39,    40,    27,     3,    43,    44,   110,
      10,    28,    12,   114,    13,    12,    13,    11,    10,    14,
      12,    18,    13,   162,     3,    24,   150,    24,    13,   168,
      24,    16,    26,    12,    13,    34,    35,    26,    11,    18,
      34,    35,    39,    40,   183,    24,    43,    44,    13,   150,
      10,    16,   188,    29,    11,    11,   157,   158,   197,    12,
      39,    40,    12,    12,    43,    44,    13,    24,   207,    26,
      12,    16,   208,   174,    15,   214,   200,    34,    35,     9,
      11,   217,     3,   222,    24,   224,    10,   188,    12,   190,
     191,    12,   231,   232,    34,    35,    12,    18,    11,   200,
       9,    13,    13,    24,    14,    12,    11,   208,   209,    12,
      11,     5,     6,     7,     8,    30,   217,    13,    39,    40,
      14,    13,    43,    44,    13,    19,    20,    21,    22,    23,
      10,    11,     9,     9,    15,    13,    10,    11,    10,    12,
      15,    11,    13,    11,    24,    10,    11,    13,    42,     9,
      24,    31,    14,    10,    34,    35,    36,    31,    38,    24,
      34,    35,    36,     9,    38,     4,    31,    24,    10,    34,
      35,    36,    15,    38,    31,    13,    33,    34,    35,    36,
      15,    38,    24,    10,    37,    16,     9,     9,    13,    31,
      10,    33,    34,    35,    36,    13,    38,    24,    10,    33,
      13,     9,    11,    10,    31,    10,    33,    34,    35,    36,
       9,    38,    24,    16,    33,    31,    11,     9,    33,    31,
       9,    12,    34,    35,    36,    11,    38,    94,    95,    96,
      97,    98,    99,   100,   101,   102,     9,    11,     9,    11,
       5,     9,    11,    13,    11,    11,     8,   216,    -1,    -1,
      67
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,    25,    41,    46,    47,    54,    55,    56,    65,    24,
      57,    57,     0,    25,    48,    66,    65,    47,    10,    12,
      57,    66,    66,    26,    13,    57,    10,    32,    27,    10,
      12,    13,    16,    64,    11,    26,    34,    35,    49,    50,
      57,    59,    60,    57,    28,    10,    11,    31,    36,    38,
      50,    51,    57,    61,     3,    12,    18,    39,    40,    43,
      44,    52,    53,    57,    58,    10,    12,    57,    13,    50,
      14,    60,    57,    11,    60,    11,    10,    29,    11,    61,
      12,    12,    12,    57,    61,     4,    12,    14,    11,    52,
      52,    34,    57,    13,     5,     6,     7,     8,    14,    19,
      20,    21,    22,    23,    42,    12,    11,    61,    52,    64,
      10,    12,    57,    15,     9,    11,    11,    59,    60,    12,
      11,    52,    52,    52,     9,    52,    13,    52,    52,    13,
      14,    12,    53,    57,    53,    53,    53,    53,    53,    53,
      53,    53,    57,    13,    52,    11,    13,    11,    61,    52,
      12,    59,    11,    60,    11,    30,    13,    13,    13,     9,
       9,    13,    16,    63,    15,    52,    13,    15,    12,    13,
      63,    11,    13,    13,    50,    11,    14,     9,    51,    51,
       9,    52,    13,     4,    15,    13,    52,    13,    10,    57,
      15,    37,    63,     9,    52,    13,    63,    33,    61,    13,
      16,    62,    57,    51,     9,    13,    52,    33,    10,    50,
      13,    13,     9,    52,    33,    61,    57,    10,    10,    11,
       9,    52,    33,    62,    33,    61,    31,    11,     9,    52,
      52,    33,    12,    11,     9,     9,    52,    52,    11,    11,
       9,    13,    11,     9,    11,    11
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_int8 yyr1[] =
{
       0,    45,    46,    46,    46,    46,    47,    48,    48,    48,
      48,    48,    48,    48,    48,    49,    49,    49,    49,    49,
      49,    50,    50,    50,    50,    51,    51,    51,    51,    51,
      51,    51,    51,    51,    51,    51,    51,    52,    52,    52,
      52,    52,    52,    52,    52,    52,    52,    52,    52,    52,
      52,    52,    52,    52,    53,    53,    53,    53,    53,    53,
      53,    53,    53,    54,    54,    55,    55,    55,    55,    55,
      55,    56,    56,    56,    57,    58,    59,    59,    60,    60,
      61,    61,    62,    62,    63,    63,    64,    64,    65,    65,
      66,    66
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     2,     2,     3,    21,     4,     5,     5,
       6,     6,     7,     7,     8,    10,    11,    12,    13,    13,
      14,     1,     1,     3,     1,     2,     3,     5,     4,     7,
       5,     7,     5,     4,     5,     6,     3,     3,     3,     3,
       3,     3,     3,     3,     3,     4,     2,     1,     5,     6,
       7,     3,     4,     5,     1,     1,     1,     1,     1,     5,
       4,     2,     3,     1,     1,     6,     7,     7,     8,     8,
       9,     7,     8,     9,     1,     1,     3,     4,     1,     2,
       1,     2,     3,     4,     2,     3,     2,     3,     2,     1,
       2,     1
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)

/* This macro is provided for backward compatibility. */
# ifndef YY_LOCATION_PRINT
#  define YY_LOCATION_PRINT(File, Loc) ((void) 0)
# endif


# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YY_USE (yyoutput);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yykind < YYNTOKENS)
    YYPRINT (yyo, yytoknum[yykind], *yyvaluep);
# endif
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  yy_symbol_value_print (yyo, yykind, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp,
                 int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)]);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif






/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep)
{
  YY_USE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;




/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY; /* Cause a token to be read.  */
  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    goto yyexhaustedlab;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      goto yyerrlab1;
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2: /* Goal: MainClass  */
#line 58 "A1.y"
                {sprintf((yyval.char_val),"%s\n",(yyvsp[0].char_val)); printf("%s\n",(yyval.char_val));}
#line 1326 "A1.tab.c"
    break;

  case 3: /* Goal: STARSEVEN MainClass  */
#line 59 "A1.y"
                                    {sprintf((yyval.char_val),"%s\n",(yyvsp[0].char_val)); printf("%s\n",(yyval.char_val));}
#line 1332 "A1.tab.c"
    break;

  case 4: /* Goal: MainClass STAREIGHT  */
#line 60 "A1.y"
                                    {sprintf((yyval.char_val),"%s %s\n",(yyvsp[-1].char_val),(yyvsp[0].char_val)); printf("%s\n",(yyval.char_val));}
#line 1338 "A1.tab.c"
    break;

  case 5: /* Goal: STARSEVEN MainClass STAREIGHT  */
#line 61 "A1.y"
                                                {sprintf((yyval.char_val),"%s %s\n",(yyvsp[-1].char_val),(yyvsp[0].char_val)); printf("%s\n",(yyval.char_val));}
#line 1344 "A1.tab.c"
    break;

  case 6: /* MainClass: CLASS Identifier LEFTCURLBRAC PUBLIC STATIC VOID MAIN LEFTBRAC STRING LEFTSQBRAC RIGHTSQBRAC Identifier RIGHTBRAC LEFTCURLBRAC SOP LEFTBRAC Expression RIGHTBRAC SEMICOLON RIGHTCURLBRAC RIGHTCURLBRAC  */
#line 63 "A1.y"
                                                                                                                                                                                                                                {sprintf((yyval.char_val),"%s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s",(yyvsp[-20].char_val),(yyvsp[-19].char_val),(yyvsp[-18].char_val),(yyvsp[-17].char_val),(yyvsp[-16].char_val),(yyvsp[-15].char_val),(yyvsp[-14].char_val),(yyvsp[-13].char_val),(yyvsp[-12].char_val),(yyvsp[-11].char_val),(yyvsp[-10].char_val),(yyvsp[-9].char_val),(yyvsp[-8].char_val),(yyvsp[-7].char_val),(yyvsp[-6].char_val),(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1350 "A1.tab.c"
    break;

  case 7: /* TypeDeclaration: CLASS Identifier LEFTCURLBRAC RIGHTCURLBRAC  */
#line 65 "A1.y"
                                                             {sprintf((yyval.char_val),"%s %s %s %s",(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1356 "A1.tab.c"
    break;

  case 8: /* TypeDeclaration: CLASS Identifier LEFTCURLBRAC STARTWO RIGHTCURLBRAC  */
#line 66 "A1.y"
                                                                             {sprintf((yyval.char_val),"%s %s %s %s %s",(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1362 "A1.tab.c"
    break;

  case 9: /* TypeDeclaration: CLASS Identifier LEFTCURLBRAC STARONE RIGHTCURLBRAC  */
#line 67 "A1.y"
                                                                              {sprintf((yyval.char_val),"%s %s %s %s %s",(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1368 "A1.tab.c"
    break;

  case 10: /* TypeDeclaration: CLASS Identifier LEFTCURLBRAC STARONE STARTWO RIGHTCURLBRAC  */
#line 68 "A1.y"
                                                                                        {sprintf((yyval.char_val),"%s %s %s %s %s %s",(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1374 "A1.tab.c"
    break;

  case 11: /* TypeDeclaration: CLASS Identifier EXTENDS Identifier LEFTCURLBRAC RIGHTCURLBRAC  */
#line 69 "A1.y"
                                                                                        {sprintf((yyval.char_val),"%s %s %s %s %s %s",(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1380 "A1.tab.c"
    break;

  case 12: /* TypeDeclaration: CLASS Identifier EXTENDS Identifier LEFTCURLBRAC STARTWO RIGHTCURLBRAC  */
#line 70 "A1.y"
                                                                                                {sprintf((yyval.char_val),"%s %s %s %s %s %s %s",(yyvsp[-6].char_val),(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1386 "A1.tab.c"
    break;

  case 13: /* TypeDeclaration: CLASS Identifier EXTENDS Identifier LEFTCURLBRAC STARONE RIGHTCURLBRAC  */
#line 71 "A1.y"
                                                                                                {sprintf((yyval.char_val),"%s %s %s %s %s %s %s",(yyvsp[-6].char_val),(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1392 "A1.tab.c"
    break;

  case 14: /* TypeDeclaration: CLASS Identifier EXTENDS Identifier LEFTCURLBRAC STARONE STARTWO RIGHTCURLBRAC  */
#line 72 "A1.y"
                                                                                                        {sprintf((yyval.char_val),"%s %s %s %s %s %s %s %s",(yyvsp[-7].char_val),(yyvsp[-6].char_val),(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1398 "A1.tab.c"
    break;

  case 15: /* MethodDeclaration: PUBLIC Type Identifier LEFTBRAC RIGHTBRAC LEFTCURLBRAC RETURN Expression SEMICOLON RIGHTCURLBRAC  */
#line 74 "A1.y"
                                                                                                                        {sprintf((yyval.char_val),"%s %s %s %s %s %s %s %s %s %s",(yyvsp[-9].char_val),(yyvsp[-8].char_val),(yyvsp[-7].char_val),(yyvsp[-6].char_val),(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1404 "A1.tab.c"
    break;

  case 16: /* MethodDeclaration: PUBLIC Type Identifier LEFTBRAC RIGHTBRAC LEFTCURLBRAC STARTHREE RETURN Expression SEMICOLON RIGHTCURLBRAC  */
#line 76 "A1.y"
                                                                                                                                        {sprintf((yyval.char_val),"%s %s %s %s %s %s %s %s %s %s %s",(yyvsp[-10].char_val),(yyvsp[-9].char_val),(yyvsp[-8].char_val),(yyvsp[-7].char_val),(yyvsp[-6].char_val),(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1410 "A1.tab.c"
    break;

  case 17: /* MethodDeclaration: PUBLIC Type Identifier LEFTBRAC Type Identifier RIGHTBRAC LEFTCURLBRAC RETURN Expression SEMICOLON RIGHTCURLBRAC  */
#line 78 "A1.y"
                                                                                                                                          {sprintf((yyval.char_val),"%s %s %s %s %s %s %s %s %s %s %s %s",(yyvsp[-11].char_val),(yyvsp[-10].char_val),(yyvsp[-9].char_val),(yyvsp[-8].char_val),(yyvsp[-7].char_val),(yyvsp[-6].char_val),(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1416 "A1.tab.c"
    break;

  case 18: /* MethodDeclaration: PUBLIC Type Identifier LEFTBRAC Type Identifier RIGHTBRAC LEFTCURLBRAC STARTHREE RETURN Expression SEMICOLON RIGHTCURLBRAC  */
#line 80 "A1.y"
                                                                                                                                                    {sprintf((yyval.char_val),"%s %s %s %s %s %s %s %s %s %s %s %s %s",(yyvsp[-12].char_val),(yyvsp[-11].char_val),(yyvsp[-10].char_val),(yyvsp[-9].char_val),(yyvsp[-8].char_val),(yyvsp[-7].char_val),(yyvsp[-6].char_val),(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1422 "A1.tab.c"
    break;

  case 19: /* MethodDeclaration: PUBLIC Type Identifier LEFTBRAC Type Identifier STARFOUR RIGHTBRAC LEFTCURLBRAC RETURN Expression SEMICOLON RIGHTCURLBRAC  */
#line 82 "A1.y"
                                                                                                                                                     {sprintf((yyval.char_val),"%s %s %s %s %s %s %s %s %s %s %s %s %s",(yyvsp[-12].char_val),(yyvsp[-11].char_val),(yyvsp[-10].char_val),(yyvsp[-9].char_val),(yyvsp[-8].char_val),(yyvsp[-7].char_val),(yyvsp[-6].char_val),(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1428 "A1.tab.c"
    break;

  case 20: /* MethodDeclaration: PUBLIC Type Identifier LEFTBRAC Type Identifier STARFOUR RIGHTBRAC LEFTCURLBRAC STARTHREE RETURN Expression SEMICOLON RIGHTCURLBRAC  */
#line 84 "A1.y"
                                                                                                                                                                {sprintf((yyval.char_val),"%s %s %s %s %s %s %s %s %s %s %s %s %s %s",(yyvsp[-13].char_val),(yyvsp[-12].char_val),(yyvsp[-11].char_val),(yyvsp[-10].char_val),(yyvsp[-9].char_val),(yyvsp[-8].char_val),(yyvsp[-7].char_val),(yyvsp[-6].char_val),(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1434 "A1.tab.c"
    break;

  case 21: /* Type: INTTYPE  */
#line 87 "A1.y"
                {sprintf((yyval.char_val),"%s",(yyvsp[0].char_val));}
#line 1440 "A1.tab.c"
    break;

  case 22: /* Type: BOOL  */
#line 88 "A1.y"
                        {sprintf((yyval.char_val),"%s",(yyvsp[0].char_val));}
#line 1446 "A1.tab.c"
    break;

  case 23: /* Type: INTTYPE LEFTSQBRAC RIGHTSQBRAC  */
#line 89 "A1.y"
                                                {sprintf((yyval.char_val),"%s %s %s",(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1452 "A1.tab.c"
    break;

  case 24: /* Type: Identifier  */
#line 90 "A1.y"
                                {sprintf((yyval.char_val),"%s",(yyvsp[0].char_val));}
#line 1458 "A1.tab.c"
    break;

  case 25: /* Statement: LEFTCURLBRAC RIGHTCURLBRAC  */
#line 92 "A1.y"
                                        {sprintf((yyval.char_val),"%s %s",(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1464 "A1.tab.c"
    break;

  case 26: /* Statement: LEFTCURLBRAC STARTHREE RIGHTCURLBRAC  */
#line 93 "A1.y"
                                                        {sprintf((yyval.char_val),"%s %s %s",(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1470 "A1.tab.c"
    break;

  case 27: /* Statement: SOP LEFTBRAC Expression RIGHTBRAC SEMICOLON  */
#line 94 "A1.y"
                                                                {sprintf((yyval.char_val),"%s %s %s %s %s",(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1476 "A1.tab.c"
    break;

  case 28: /* Statement: Identifier EQ Expression SEMICOLON  */
#line 95 "A1.y"
                                                        {sprintf((yyval.char_val),"%s %s %s %s",(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1482 "A1.tab.c"
    break;

  case 29: /* Statement: Identifier LEFTSQBRAC Expression RIGHTSQBRAC EQ Expression SEMICOLON  */
#line 96 "A1.y"
                                                                                        {sprintf((yyval.char_val),"%s %s %s %s %s %s %s",(yyvsp[-6].char_val),(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1488 "A1.tab.c"
    break;

  case 30: /* Statement: IF LEFTBRAC Expression RIGHTBRAC Statement  */
#line 97 "A1.y"
                                                                {sprintf((yyval.char_val),"%s %s %s %s %s",(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1494 "A1.tab.c"
    break;

  case 31: /* Statement: IF LEFTBRAC Expression RIGHTBRAC Statement ELSE Statement  */
#line 98 "A1.y"
                                                                                {sprintf((yyval.char_val),"%s %s %s %s %s %s %s",(yyvsp[-6].char_val),(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1500 "A1.tab.c"
    break;

  case 32: /* Statement: WHILE LEFTBRAC Expression RIGHTBRAC Statement  */
#line 99 "A1.y"
                                                                {sprintf((yyval.char_val),"%s %s %s %s %s",(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1506 "A1.tab.c"
    break;

  case 33: /* Statement: Identifier LEFTBRAC RIGHTBRAC SEMICOLON  */
#line 100 "A1.y"
                                                                {if(strcmp(getval((yyvsp[-3].char_val)),"err")!=0){sprintf((yyval.char_val),"%s",getval((yyvsp[-3].char_val)));} else{sprintf((yyval.char_val),"%s %s %s %s",(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}}
#line 1512 "A1.tab.c"
    break;

  case 34: /* Statement: Identifier LEFTBRAC Expression RIGHTBRAC SEMICOLON  */
#line 101 "A1.y"
                                                                        {if(strcmp(getval((yyvsp[-4].char_val)),"err")!=0){sprintf((yyval.char_val),"%s",str_replace(getval((yyvsp[-4].char_val)),getparams((yyvsp[-4].char_val)),(yyvsp[-2].char_val)));}else{sprintf((yyval.char_val),"%s %s %s %s %s",(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}}
#line 1518 "A1.tab.c"
    break;

  case 35: /* Statement: Identifier LEFTBRAC Expression STARFIVE RIGHTBRAC SEMICOLON  */
#line 102 "A1.y"
                                                                                {
		if(strcmp(getval((yyvsp[-5].char_val)),"err")!=0){
			char* temp=(char*)malloc(strlen((yyvsp[-3].char_val))+strlen((yyvsp[-2].char_val))+1);strcpy(temp,(yyvsp[-3].char_val));strcat(temp,(yyvsp[-2].char_val));
			char** temptokens;
			temptokens = str_split(temp,',');
			char* param =(char*)malloc(1000);strcpy(param,getparams((yyvsp[-5].char_val)));
			char** paramtokens;
			paramtokens = str_split(param,',');
			char* stmt = (char*)malloc(1000);
			strcpy(stmt,getval((yyvsp[-5].char_val)));
			if (paramtokens)
			    {
				int i;
				for (i = 0; *(paramtokens + i); i++)
				{
				    strcpy(stmt,str_replace(stmt,*(paramtokens + i),*(temptokens + i)));
				    free(*(paramtokens + i));
				    free(*(temptokens + i));
				}
				printf("\n");
				free(paramtokens);
				free(temptokens);
			    }
			sprintf((yyval.char_val),"%s",stmt);
		}
		else{sprintf((yyval.char_val),"%s %s %s %s %s %s",(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}}
#line 1549 "A1.tab.c"
    break;

  case 36: /* Statement: Type Identifier SEMICOLON  */
#line 128 "A1.y"
                                                {sprintf((yyval.char_val),"%s %s %s",(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1555 "A1.tab.c"
    break;

  case 37: /* Expression: PrimaryExpression AND PrimaryExpression  */
#line 130 "A1.y"
                                                        {sprintf((yyval.char_val),"%s %s %s",(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1561 "A1.tab.c"
    break;

  case 38: /* Expression: PrimaryExpression OR PrimaryExpression  */
#line 131 "A1.y"
                                                        {sprintf((yyval.char_val),"%s %s %s",(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1567 "A1.tab.c"
    break;

  case 39: /* Expression: PrimaryExpression NEQ PrimaryExpression  */
#line 132 "A1.y"
                                                        {sprintf((yyval.char_val),"%s %s %s",(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1573 "A1.tab.c"
    break;

  case 40: /* Expression: PrimaryExpression LEQ PrimaryExpression  */
#line 133 "A1.y"
                                                        {sprintf((yyval.char_val),"%s %s %s",(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1579 "A1.tab.c"
    break;

  case 41: /* Expression: PrimaryExpression PLUS PrimaryExpression  */
#line 134 "A1.y"
                                                                {sprintf((yyval.char_val),"%s %s %s",(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1585 "A1.tab.c"
    break;

  case 42: /* Expression: PrimaryExpression MINUS PrimaryExpression  */
#line 135 "A1.y"
                                                                {sprintf((yyval.char_val),"%s %s %s",(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1591 "A1.tab.c"
    break;

  case 43: /* Expression: PrimaryExpression MUL PrimaryExpression  */
#line 136 "A1.y"
                                                                {sprintf((yyval.char_val),"%s %s %s",(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1597 "A1.tab.c"
    break;

  case 44: /* Expression: PrimaryExpression DIV PrimaryExpression  */
#line 137 "A1.y"
                                                                {sprintf((yyval.char_val),"%s %s %s",(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1603 "A1.tab.c"
    break;

  case 45: /* Expression: PrimaryExpression LEFTSQBRAC PrimaryExpression RIGHTSQBRAC  */
#line 138 "A1.y"
                                                                                {sprintf((yyval.char_val),"%s %s %s %s",(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1609 "A1.tab.c"
    break;

  case 46: /* Expression: PrimaryExpression DLEN  */
#line 139 "A1.y"
                                                {sprintf((yyval.char_val),"%s %s",(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1615 "A1.tab.c"
    break;

  case 47: /* Expression: PrimaryExpression  */
#line 140 "A1.y"
                                                {sprintf((yyval.char_val),"%s",(yyvsp[0].char_val));}
#line 1621 "A1.tab.c"
    break;

  case 48: /* Expression: PrimaryExpression DOT Identifier LEFTBRAC RIGHTBRAC  */
#line 141 "A1.y"
                                                                        {if(strcmp(getval((yyvsp[-2].char_val)),"err")!=0){sprintf((yyval.char_val),"%s %s %s %s %s",(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-1].char_val),getval((yyvsp[-2].char_val)),(yyvsp[0].char_val));}else{sprintf((yyval.char_val),"%s %s %s %s %s",(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}}
#line 1627 "A1.tab.c"
    break;

  case 49: /* Expression: PrimaryExpression DOT Identifier LEFTBRAC Expression RIGHTBRAC  */
#line 142 "A1.y"
                                                                                {if(strcmp(getval((yyvsp[-3].char_val)),"err")!=0){sprintf((yyval.char_val),"%s %s %s %s %s",(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-2].char_val),str_replace(getval((yyvsp[-3].char_val)),getparams((yyvsp[-3].char_val)),(yyvsp[-1].char_val)),(yyvsp[0].char_val));}else{sprintf((yyval.char_val),"%s %s %s %s %s %s",(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}}
#line 1633 "A1.tab.c"
    break;

  case 50: /* Expression: PrimaryExpression DOT Identifier LEFTBRAC Expression STARFIVE RIGHTBRAC  */
#line 143 "A1.y"
                                                                                          {
		if(strcmp(getval((yyvsp[-4].char_val)),"err")!=0){
			char* temp=(char*)malloc(strlen((yyvsp[-2].char_val))+strlen((yyvsp[-1].char_val))+1);strcpy(temp,(yyvsp[-2].char_val));strcat(temp,(yyvsp[-1].char_val));
			char** temptokens;
			temptokens = str_split(temp,',');
			char* param =(char*)malloc(1000);strcpy(param,getparams((yyvsp[-4].char_val)));
			char** paramtokens;
			paramtokens = str_split(param,',');
			char* stmt = (char*)malloc(1000);
			strcpy(stmt,getval((yyvsp[-4].char_val)));
			if (paramtokens)
			    {
				int i;
				for (i = 0; *(paramtokens + i); i++)
				{
				    strcpy(stmt,str_replace(stmt,*(paramtokens + i),*(temptokens + i)));
				    free(*(paramtokens + i));
				    free(*(temptokens + i));
				}
				printf("\n");
				free(paramtokens);
				free(temptokens);
			    }
			sprintf((yyval.char_val),"%s %s %s %s %s",(yyvsp[-6].char_val),(yyvsp[-5].char_val),(yyvsp[-3].char_val),stmt,(yyvsp[0].char_val));
		}
		else{sprintf((yyval.char_val),"%s %s %s %s %s %s %s",(yyvsp[-6].char_val),(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}}
#line 1664 "A1.tab.c"
    break;

  case 51: /* Expression: Identifier LEFTBRAC RIGHTBRAC  */
#line 169 "A1.y"
                                                {if(strcmp(getval((yyvsp[-2].char_val)),"err")!=0){sprintf((yyval.char_val),"%s %s %s",(yyvsp[-1].char_val),getval((yyvsp[-2].char_val)),(yyvsp[0].char_val));}else{sprintf((yyval.char_val),"%s %s %s",(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}}
#line 1670 "A1.tab.c"
    break;

  case 52: /* Expression: Identifier LEFTBRAC Expression RIGHTBRAC  */
#line 170 "A1.y"
                                                                {if(strcmp(getval((yyvsp[-3].char_val)),"err")!=0){sprintf((yyval.char_val),"%s %s %s",(yyvsp[-2].char_val),str_replace(getval((yyvsp[-3].char_val)),getparams((yyvsp[-3].char_val)),(yyvsp[-1].char_val)),(yyvsp[0].char_val));}else{sprintf((yyval.char_val),"%s %s %s %s",(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}}
#line 1676 "A1.tab.c"
    break;

  case 53: /* Expression: Identifier LEFTBRAC Expression STARFIVE RIGHTBRAC  */
#line 171 "A1.y"
                                                                   {
		if(strcmp(getval((yyvsp[-4].char_val)),"err")!=0){
			char* temp=(char*)malloc(strlen((yyvsp[-2].char_val))+strlen((yyvsp[-1].char_val))+1);strcpy(temp,(yyvsp[-2].char_val));strcat(temp,(yyvsp[-1].char_val));
			char** temptokens;
			temptokens = str_split(temp,',');
			char* param =(char*)malloc(1000);strcpy(param,getparams((yyvsp[-4].char_val)));
			char** paramtokens;
			paramtokens = str_split(param,',');
			char* stmt = (char*)malloc(1000);
			strcpy(stmt,getval((yyvsp[-4].char_val)));
			if (paramtokens)
			    {
				int i;
				for (i = 0; *(paramtokens + i); i++)
				{
				    strcpy(stmt,str_replace(stmt,*(paramtokens + i),*(temptokens + i)));
				    free(*(paramtokens + i));
				    free(*(temptokens + i));
				}
				printf("\n");
				free(paramtokens);
				free(temptokens);
			    }
			sprintf((yyval.char_val),"%s %s %s",(yyvsp[-3].char_val),stmt,(yyvsp[0].char_val));
		}
		else{sprintf((yyval.char_val),"%s %s %s %s %s",(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}}
#line 1707 "A1.tab.c"
    break;

  case 54: /* PrimaryExpression: Integer  */
#line 198 "A1.y"
                                {sprintf((yyval.char_val),"%s",(yyvsp[0].char_val));}
#line 1713 "A1.tab.c"
    break;

  case 55: /* PrimaryExpression: TR  */
#line 199 "A1.y"
                                {sprintf((yyval.char_val),"%s",(yyvsp[0].char_val));}
#line 1719 "A1.tab.c"
    break;

  case 56: /* PrimaryExpression: FL  */
#line 200 "A1.y"
                                {sprintf((yyval.char_val),"%s",(yyvsp[0].char_val));}
#line 1725 "A1.tab.c"
    break;

  case 57: /* PrimaryExpression: Identifier  */
#line 201 "A1.y"
                                        {sprintf((yyval.char_val),"%s",(yyvsp[0].char_val));}
#line 1731 "A1.tab.c"
    break;

  case 58: /* PrimaryExpression: THIS  */
#line 202 "A1.y"
                                {sprintf((yyval.char_val),"%s",(yyvsp[0].char_val));}
#line 1737 "A1.tab.c"
    break;

  case 59: /* PrimaryExpression: NEW INTTYPE LEFTSQBRAC Expression RIGHTSQBRAC  */
#line 203 "A1.y"
                                                                         {sprintf((yyval.char_val),"%s %s %s %s %s",(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1743 "A1.tab.c"
    break;

  case 60: /* PrimaryExpression: NEW Identifier LEFTBRAC RIGHTBRAC  */
#line 204 "A1.y"
                                                                 {sprintf((yyval.char_val),"%s %s %s %s",(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1749 "A1.tab.c"
    break;

  case 61: /* PrimaryExpression: NOT Expression  */
#line 205 "A1.y"
                                                 {sprintf((yyval.char_val),"%s %s",(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1755 "A1.tab.c"
    break;

  case 62: /* PrimaryExpression: LEFTBRAC Expression RIGHTBRAC  */
#line 206 "A1.y"
                                                         {sprintf((yyval.char_val),"%s %s %s",(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1761 "A1.tab.c"
    break;

  case 63: /* MacroDefinition: MacroDefExpression  */
#line 208 "A1.y"
                                        {sprintf((yyval.char_val),"%s",(yyvsp[0].char_val));}
#line 1767 "A1.tab.c"
    break;

  case 64: /* MacroDefinition: MacroDefStatement  */
#line 209 "A1.y"
                                                {sprintf((yyval.char_val),"%s",(yyvsp[0].char_val));}
#line 1773 "A1.tab.c"
    break;

  case 65: /* MacroDefStatement: HDEF Identifier LEFTBRAC RIGHTBRAC LEFTCURLBRAC RIGHTCURLBRAC  */
#line 211 "A1.y"
                                                                                        {store((yyvsp[-4].char_val),"",""); sprintf((yyval.char_val),"%s %s %s %s %s %s",(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1779 "A1.tab.c"
    break;

  case 66: /* MacroDefStatement: HDEF Identifier LEFTBRAC RIGHTBRAC LEFTCURLBRAC STARTHREE RIGHTCURLBRAC  */
#line 212 "A1.y"
                                                                                                {store((yyvsp[-5].char_val),(yyvsp[-1].char_val),""); sprintf((yyval.char_val),"%s %s %s %s %s %s %s",(yyvsp[-6].char_val),(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1785 "A1.tab.c"
    break;

  case 67: /* MacroDefStatement: HDEF Identifier LEFTBRAC Identifier RIGHTBRAC LEFTCURLBRAC RIGHTCURLBRAC  */
#line 213 "A1.y"
                                                                                                        {store((yyvsp[-5].char_val),"",(yyvsp[-3].char_val)); sprintf((yyval.char_val),"%s %s %s %s %s %s %s",(yyvsp[-6].char_val),(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1791 "A1.tab.c"
    break;

  case 68: /* MacroDefStatement: HDEF Identifier LEFTBRAC Identifier STARSIX RIGHTBRAC LEFTCURLBRAC RIGHTCURLBRAC  */
#line 214 "A1.y"
                                                                                                                {char* temp=(char*)malloc(strlen((yyvsp[-4].char_val))+strlen((yyvsp[-3].char_val))+1);strcpy(temp,(yyvsp[-4].char_val));strcat(temp,(yyvsp[-3].char_val));store((yyvsp[-6].char_val),"",temp);free(temp);sprintf((yyval.char_val),"%s %s %s %s %s %s %s %s",(yyvsp[-7].char_val),(yyvsp[-6].char_val),(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1797 "A1.tab.c"
    break;

  case 69: /* MacroDefStatement: HDEF Identifier LEFTBRAC Identifier RIGHTBRAC LEFTCURLBRAC STARTHREE RIGHTCURLBRAC  */
#line 215 "A1.y"
                                                                                                                {store((yyvsp[-6].char_val),(yyvsp[-1].char_val),(yyvsp[-4].char_val)); sprintf((yyval.char_val),"%s %s %s %s %s %s %s %s",(yyvsp[-7].char_val),(yyvsp[-6].char_val),(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1803 "A1.tab.c"
    break;

  case 70: /* MacroDefStatement: HDEF Identifier LEFTBRAC Identifier STARSIX RIGHTBRAC LEFTCURLBRAC STARTHREE RIGHTCURLBRAC  */
#line 216 "A1.y"
                                                                                                                        {char* temp=(char*)malloc(strlen((yyvsp[-5].char_val))+strlen((yyvsp[-4].char_val))+1);strcpy(temp,(yyvsp[-5].char_val));strcat(temp,(yyvsp[-4].char_val));store((yyvsp[-7].char_val),(yyvsp[-1].char_val),temp);free(temp);sprintf((yyval.char_val),"%s %s %s %s %s %s %s %s %s",(yyvsp[-8].char_val),(yyvsp[-7].char_val),(yyvsp[-6].char_val),(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1809 "A1.tab.c"
    break;

  case 71: /* MacroDefExpression: HDEF Identifier LEFTBRAC RIGHTBRAC LEFTBRAC Expression RIGHTBRAC  */
#line 218 "A1.y"
                                                                                        {store((yyvsp[-5].char_val),(yyvsp[-1].char_val),""); sprintf((yyval.char_val),"%s %s %s %s %s %s %s",(yyvsp[-6].char_val),(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1815 "A1.tab.c"
    break;

  case 72: /* MacroDefExpression: HDEF Identifier LEFTBRAC Identifier RIGHTBRAC LEFTBRAC Expression RIGHTBRAC  */
#line 219 "A1.y"
                                                                                                        {store((yyvsp[-6].char_val),(yyvsp[-1].char_val),(yyvsp[-4].char_val)); sprintf((yyval.char_val),"%s %s %s %s %s %s %s %s",(yyvsp[-7].char_val),(yyvsp[-6].char_val),(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1821 "A1.tab.c"
    break;

  case 73: /* MacroDefExpression: HDEF Identifier LEFTBRAC Identifier STARSIX RIGHTBRAC LEFTBRAC Expression RIGHTBRAC  */
#line 220 "A1.y"
                                                                                                                {char* temp=(char*)malloc(strlen((yyvsp[-5].char_val))+strlen((yyvsp[-4].char_val))+1);strcpy(temp,(yyvsp[-5].char_val));strcat(temp,(yyvsp[-4].char_val));store((yyvsp[-7].char_val),(yyvsp[-1].char_val),temp);free(temp);sprintf((yyval.char_val),"%s %s %s %s %s %s %s %s %s",(yyvsp[-8].char_val),(yyvsp[-7].char_val),(yyvsp[-6].char_val),(yyvsp[-5].char_val),(yyvsp[-4].char_val),(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1827 "A1.tab.c"
    break;

  case 74: /* Identifier: IDENTIFIER  */
#line 222 "A1.y"
                                {sprintf((yyval.char_val),"%s",(yyvsp[0].char_val));}
#line 1833 "A1.tab.c"
    break;

  case 75: /* Integer: INTEGER_LITERAL  */
#line 224 "A1.y"
                                {sprintf((yyval.char_val),"%s",(yyvsp[0].char_val));}
#line 1839 "A1.tab.c"
    break;

  case 76: /* STARONE: Type Identifier SEMICOLON  */
#line 226 "A1.y"
                                        {sprintf((yyval.char_val),"%s %s %s",(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1845 "A1.tab.c"
    break;

  case 77: /* STARONE: Type Identifier SEMICOLON STARONE  */
#line 227 "A1.y"
                                                        {sprintf((yyval.char_val),"%s %s %s %s",(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1851 "A1.tab.c"
    break;

  case 78: /* STARTWO: MethodDeclaration  */
#line 229 "A1.y"
                                {sprintf((yyval.char_val),"%s",(yyvsp[0].char_val));}
#line 1857 "A1.tab.c"
    break;

  case 79: /* STARTWO: MethodDeclaration STARTWO  */
#line 230 "A1.y"
                                                {sprintf((yyval.char_val),"%s %s",(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1863 "A1.tab.c"
    break;

  case 80: /* STARTHREE: Statement  */
#line 231 "A1.y"
                        {sprintf((yyval.char_val),"%s",(yyvsp[0].char_val));}
#line 1869 "A1.tab.c"
    break;

  case 81: /* STARTHREE: Statement STARTHREE  */
#line 232 "A1.y"
                                        {sprintf((yyval.char_val),"%s %s",(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1875 "A1.tab.c"
    break;

  case 82: /* STARFOUR: COMMA Type Identifier  */
#line 233 "A1.y"
                                        {sprintf((yyval.char_val),"%s %s %s",(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1881 "A1.tab.c"
    break;

  case 83: /* STARFOUR: COMMA Type Identifier STARFOUR  */
#line 234 "A1.y"
                                                {sprintf((yyval.char_val),"%s %s %s %s",(yyvsp[-3].char_val),(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1887 "A1.tab.c"
    break;

  case 84: /* STARFIVE: COMMA Expression  */
#line 235 "A1.y"
                                {sprintf((yyval.char_val),"%s %s",(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1893 "A1.tab.c"
    break;

  case 85: /* STARFIVE: COMMA Expression STARFIVE  */
#line 236 "A1.y"
                                                {sprintf((yyval.char_val),"%s %s %s",(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1899 "A1.tab.c"
    break;

  case 86: /* STARSIX: COMMA Identifier  */
#line 237 "A1.y"
                                {sprintf((yyval.char_val),"%s %s",(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1905 "A1.tab.c"
    break;

  case 87: /* STARSIX: COMMA Identifier STARSIX  */
#line 238 "A1.y"
                                                {sprintf((yyval.char_val),"%s %s %s",(yyvsp[-2].char_val),(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1911 "A1.tab.c"
    break;

  case 88: /* STARSEVEN: MacroDefinition STARSEVEN  */
#line 239 "A1.y"
                                        {sprintf((yyval.char_val),"%s %s",(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1917 "A1.tab.c"
    break;

  case 89: /* STARSEVEN: MacroDefinition  */
#line 240 "A1.y"
                                        {sprintf((yyval.char_val),"%s",(yyvsp[0].char_val));}
#line 1923 "A1.tab.c"
    break;

  case 90: /* STAREIGHT: TypeDeclaration STAREIGHT  */
#line 241 "A1.y"
                                        {sprintf((yyval.char_val),"%s %s",(yyvsp[-1].char_val),(yyvsp[0].char_val));}
#line 1929 "A1.tab.c"
    break;

  case 91: /* STAREIGHT: TypeDeclaration  */
#line 242 "A1.y"
                                        {sprintf((yyval.char_val),"%s",(yyvsp[0].char_val));}
#line 1935 "A1.tab.c"
    break;


#line 1939 "A1.tab.c"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      yyerror (YY_("syntax error"));
    }

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  YY_ACCESSING_SYMBOL (yystate), yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;


#if !defined yyoverflow
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturn;
#endif


/*-------------------------------------------------------.
| yyreturn -- parsing is finished, clean up and return.  |
`-------------------------------------------------------*/
yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif

  return yyresult;
}

#line 244 "A1.y"


char *str_replace(char *orig, char *rep, char *with) {
    char *result; // the return string
    char *ins;    // the next insert point
    char *tmp;    // varies
    int len_rep;  // length of rep
    int len_with; // length of with
    int len_front; // distance between rep and end of last rep
    int count;    // number of replacements

    if (!orig)
        return NULL;
    if (!rep)
        rep = "";
    len_rep = strlen(rep);
    if (!with)
        with = "";
    len_with = strlen(with);

    ins = orig;
    for (count = 0; tmp = strstr(ins, rep); ++count) {
        ins = tmp + len_rep;
    }

    // first time through the loop, all the variable are set correctly
    // from here on,
    //    tmp points to the end of the result string
    //    ins points to the next occurrence of rep in orig
    //    orig points to the remainder of orig after "end of rep"
    tmp = result = malloc(strlen(orig) + (len_with - len_rep) * count + 1);

    if (!result)
        return NULL;

    while (count--) {
        ins = strstr(orig, rep);
        len_front = ins - orig;
        tmp = strncpy(tmp, orig, len_front) + len_front;
        tmp = strcpy(tmp, with) + len_with;
        orig += len_front + len_rep; // move to next "end of rep"
    }
    strcpy(tmp, orig);
    return result;
}


char** str_split(char* a_str, const char a_delim)
{
    char** result    = 0;
    size_t count     = 0;
    char* tmp        = a_str;
    char* last_comma = 0;
    char delim[2];
    delim[0] = a_delim;
    delim[1] = 0;

    /* Count how many elements will be extracted. */
    while (*tmp)
    {
        if (a_delim == *tmp)
        {
            count++;
            last_comma = tmp;
        }
        tmp++;
    }

    /* Add space for trailing token. */
    count += last_comma < (a_str + strlen(a_str) - 1);

    /* Add space for terminating null string so caller
       knows where the list of returned strings ends. */
    count++;

    result = malloc(sizeof(char*) * count);

    if (result)
    {
        size_t idx  = 0;
        char* token = strtok(a_str, delim);

        while (token)
        {
            assert(idx < count);
            *(result + idx++) = strdup(token);
            token = strtok(0, delim);
        }
        assert(idx == count - 1);
        *(result + idx) = 0;
    }

    return result;
}


void store(char* id,char* val,char* param){
	//check for duplicates of id
	//printf("entered store\n");
	int index = 0;
	while(ids[index]!=NULL){
		index++;	
	}
	int nid = strlen(id);
	ids[index] = (char*)malloc(nid+1);
	strcpy(ids[index],id);
	int vid = strlen(val);
	vals[index] = (char*)malloc(vid+1);
	strcpy(vals[index],val);
	int pid = strlen(param);
	params[index] = (char*)malloc(pid+1);
	strcpy(params[index],param);
	//printf("index: %d, id: %s, val: %s, param: %s, stored\n",index,ids[index],vals[index],params[index]);
	return;
	
}

char* getval(char* id){
	//printf("entered getval\n");
	int index = 0;
	while(ids[index]!=NULL){
		if(strcmp(ids[index],id)==0){
			//printf("%s id, %s val returning\n",ids[index],vals[index]);
			return vals[index];		
		}
		else{
			index++;		
		}
	}
	char* err = (char*)malloc(4);
	strcpy(err,"err");
	//printf("returning err\n");
	return err;
}

char* getparams(char* id){
	//printf("entered getval\n");
	int index = 0;
	while(ids[index]!=NULL){
		if(strcmp(ids[index],id)==0){
			//printf("%s id, %s val returning\n",ids[index],vals[index]);
			return params[index];		
		}
		else{
			index++;		
		}
	}
	char* err = (char*)malloc(4);
	strcpy(err,"err");
	//printf("returning err\n");
	return err;
}

int yyerror(char *s)
{
	printf("error: %s\n", s);
	printf("// Failed to parse the infix expression\n");
	return 0;
}

int main(int argc, char **argv)
{
	yyparse();
	return 0;
}

