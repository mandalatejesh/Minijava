/* Generated By:JavaCC: Do not edit this line. MiniRAParserConstants.java */

/**
 * Token literal values and constants.
 * Generated by org.javacc.parser.OtherFilesGen#start()
 */
public interface MiniRAParserConstants {

  /** End of File. */
  int EOF = 0;
  /** RegularExpression Id. */
  int FORMAL_COMMENT = 6;
  /** RegularExpression Id. */
  int MULTI_LINE_COMMENT = 7;
  /** RegularExpression Id. */
  int LPAREN = 8;
  /** RegularExpression Id. */
  int RPAREN = 9;
  /** RegularExpression Id. */
  int LBRACE = 10;
  /** RegularExpression Id. */
  int RBRACE = 11;
  /** RegularExpression Id. */
  int LSQPAREN = 12;
  /** RegularExpression Id. */
  int RSQPAREN = 13;
  /** RegularExpression Id. */
  int DOT = 14;
  /** RegularExpression Id. */
  int LE = 15;
  /** RegularExpression Id. */
  int NE = 16;
  /** RegularExpression Id. */
  int PLUS = 17;
  /** RegularExpression Id. */
  int MINUS = 18;
  /** RegularExpression Id. */
  int TIMES = 19;
  /** RegularExpression Id. */
  int DIV = 20;
  /** RegularExpression Id. */
  int MAIN = 21;
  /** RegularExpression Id. */
  int CODE = 22;
  /** RegularExpression Id. */
  int HALLOCATE = 23;
  /** RegularExpression Id. */
  int SPILLEDARG = 24;
  /** RegularExpression Id. */
  int END = 25;
  /** RegularExpression Id. */
  int NOOP = 26;
  /** RegularExpression Id. */
  int MOVE = 27;
  /** RegularExpression Id. */
  int CALL = 28;
  /** RegularExpression Id. */
  int ERROR = 29;
  /** RegularExpression Id. */
  int PRINT = 30;
  /** RegularExpression Id. */
  int BEGIN = 31;
  /** RegularExpression Id. */
  int RETURN = 32;
  /** RegularExpression Id. */
  int JUMP = 33;
  /** RegularExpression Id. */
  int CJUMP = 34;
  /** RegularExpression Id. */
  int HSTORE = 35;
  /** RegularExpression Id. */
  int HLOAD = 36;
  /** RegularExpression Id. */
  int ALOAD = 37;
  /** RegularExpression Id. */
  int ASTORE = 38;
  /** RegularExpression Id. */
  int PASSARG = 39;
  /** RegularExpression Id. */
  int MEM = 40;
  /** RegularExpression Id. */
  int TEMP = 41;
  /** RegularExpression Id. */
  int ARG = 42;
  /** RegularExpression Id. */
  int ZERO = 43;
  /** RegularExpression Id. */
  int SPILLED = 44;
  /** RegularExpression Id. */
  int NOTSPILLED = 45;
  /** RegularExpression Id. */
  int at = 46;
  /** RegularExpression Id. */
  int v0 = 47;
  /** RegularExpression Id. */
  int v1 = 48;
  /** RegularExpression Id. */
  int a0 = 49;
  /** RegularExpression Id. */
  int a1 = 50;
  /** RegularExpression Id. */
  int a2 = 51;
  /** RegularExpression Id. */
  int a3 = 52;
  /** RegularExpression Id. */
  int t0 = 53;
  /** RegularExpression Id. */
  int t1 = 54;
  /** RegularExpression Id. */
  int t2 = 55;
  /** RegularExpression Id. */
  int t3 = 56;
  /** RegularExpression Id. */
  int t4 = 57;
  /** RegularExpression Id. */
  int t5 = 58;
  /** RegularExpression Id. */
  int t6 = 59;
  /** RegularExpression Id. */
  int t7 = 60;
  /** RegularExpression Id. */
  int s0 = 61;
  /** RegularExpression Id. */
  int s1 = 62;
  /** RegularExpression Id. */
  int s2 = 63;
  /** RegularExpression Id. */
  int s3 = 64;
  /** RegularExpression Id. */
  int s4 = 65;
  /** RegularExpression Id. */
  int s5 = 66;
  /** RegularExpression Id. */
  int s6 = 67;
  /** RegularExpression Id. */
  int s7 = 68;
  /** RegularExpression Id. */
  int t8 = 69;
  /** RegularExpression Id. */
  int t9 = 70;
  /** RegularExpression Id. */
  int k0 = 71;
  /** RegularExpression Id. */
  int k1 = 72;
  /** RegularExpression Id. */
  int gp = 73;
  /** RegularExpression Id. */
  int sp = 74;
  /** RegularExpression Id. */
  int fp = 75;
  /** RegularExpression Id. */
  int ra = 76;
  /** RegularExpression Id. */
  int INTEGER_LITERAL = 77;
  /** RegularExpression Id. */
  int IDENTIFIER = 78;
  /** RegularExpression Id. */
  int LETTER = 79;
  /** RegularExpression Id. */
  int DIGIT = 80;

  /** Lexical state. */
  int DEFAULT = 0;

  /** Literal token values. */
  String[] tokenImage = {
    "<EOF>",
    "\" \"",
    "\"\\t\"",
    "\"\\n\"",
    "\"\\r\"",
    "\"\\f\"",
    "<FORMAL_COMMENT>",
    "<MULTI_LINE_COMMENT>",
    "\"(\"",
    "\")\"",
    "\"{\"",
    "\"}\"",
    "\"[\"",
    "\"]\"",
    "\".\"",
    "\"LE\"",
    "\"NE\"",
    "\"PLUS\"",
    "\"MINUS\"",
    "\"TIMES\"",
    "\"DIV\"",
    "\"MAIN\"",
    "\"CODE\"",
    "\"HALLOCATE\"",
    "\"SPILLEDARG\"",
    "\"END\"",
    "\"NOOP\"",
    "\"MOVE\"",
    "\"CALL\"",
    "\"ERROR\"",
    "\"PRINT\"",
    "\"BEGIN\"",
    "\"RETURN\"",
    "\"JUMP\"",
    "\"CJUMP\"",
    "\"HSTORE\"",
    "\"HLOAD\"",
    "\"ALOAD\"",
    "\"ASTORE\"",
    "\"PASSARG\"",
    "\"MEM\"",
    "\"TEMP\"",
    "\"ARG\"",
    "\"zero\"",
    "\"SPILLED\"",
    "\"NOTSPILLED\"",
    "\"at\"",
    "\"v0\"",
    "\"v1\"",
    "\"a0\"",
    "\"a1\"",
    "\"a2\"",
    "\"a3\"",
    "\"t0\"",
    "\"t1\"",
    "\"t2\"",
    "\"t3\"",
    "\"t4\"",
    "\"t5\"",
    "\"t6\"",
    "\"t7\"",
    "\"s0\"",
    "\"s1\"",
    "\"s2\"",
    "\"s3\"",
    "\"s4\"",
    "\"s5\"",
    "\"s6\"",
    "\"s7\"",
    "\"t8\"",
    "\"t9\"",
    "\"k0\"",
    "\"k1\"",
    "\"gp\"",
    "\"sp\"",
    "\"fp\"",
    "\"ra\"",
    "<INTEGER_LITERAL>",
    "<IDENTIFIER>",
    "<LETTER>",
    "<DIGIT>",
    "\"//\"",
  };

}