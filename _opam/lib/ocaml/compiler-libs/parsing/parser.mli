type token =
  | AMPERAMPER
  | AMPERSAND
  | AND
  | AS
  | ASSERT
  | BACKQUOTE
  | BAR
  | BARBAR
  | BARRBRACKET
  | BEGIN
  | CHAR of (char)
  | CLASS
  | COLON
  | COLONCOLON
  | COLONEQUAL
  | COLONGREATER
  | COMMA
  | CONSTRAINT
  | DO
  | DONE
  | DOT
  | DOTDOT
  | DOWNTO
  | ELSE
  | END
  | EOF
  | EQUAL
  | EXCEPTION
  | EXTERNAL
  | FALSE
  | FLOAT of (string)
  | FOR
  | FUN
  | FUNCTION
  | FUNCTOR
  | GREATER
  | GREATERRBRACE
  | GREATERRBRACKET
  | IF
  | IN
  | INCLUDE
  | INFIXOP0 of (string)
  | INFIXOP1 of (string)
  | INFIXOP2 of (string)
  | INFIXOP3 of (string)
  | INFIXOP4 of (string)
  | INHERIT
  | INITIALIZER
  | INT of (int)
  | INT32 of (int32)
  | INT64 of (int64)
  | LABEL of (string)
  | LAZY
  | LBRACE
  | LBRACELESS
  | LBRACKET
  | LBRACKETBAR
  | LBRACKETLESS
  | LBRACKETGREATER
  | LESS
  | LESSMINUS
  | LET
  | LIDENT of (string)
  | LPAREN
  | MATCH
  | METHOD
  | MINUS
  | MINUSDOT
  | MINUSGREATER
  | MODULE
  | MUTABLE
  | NATIVEINT of (nativeint)
  | NEW
  | OBJECT
  | OF
  | OPEN
  | OPTLABEL of (string)
  | OR
  | PLUS
  | PREFIXOP of (string)
  | PRIVATE
  | QUESTION
  | QUESTIONQUESTION
  | QUOTE
  | RBRACE
  | RBRACKET
  | REC
  | RPAREN
  | SEMI
  | SEMISEMI
  | SHARP
  | SIG
  | STAR
  | STRING of (string)
  | STRUCT
  | THEN
  | TILDE
  | TO
  | TRUE
  | TRY
  | TYPE
  | UIDENT of (string)
  | UNDERSCORE
  | VAL
  | VIRTUAL
  | WHEN
  | WHILE
  | WITH

val implementation :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Parsetree.structure
val interface :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Parsetree.signature
val toplevel_phrase :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Parsetree.toplevel_phrase
val use_file :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Parsetree.toplevel_phrase list
