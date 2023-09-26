(**************************************************************************)
(*                                                                        *)
(*                        SuperBOL OSS Studio                             *)
(*                                                                        *)
(*  Copyright (c) 2022-2023 OCamlPro SAS                                  *)
(*                                                                        *)
(* All rights reserved.                                                   *)
(* This source code is licensed under the GNU Affero General Public       *)
(* License version 3 found in the LICENSE.md file in the root directory   *)
(* of this source tree.                                                   *)
(*                                                                        *)
(**************************************************************************)

open EzCompat

(* Please, use `Word` module to access these words *)

(** The list of all default reserved words. *)
let reserved_words =
  (* /!\ There's duplication between this list and the mapping of keywords to
     tokens in `Cobol_parser.Keywords`.

     TODO: Try to avoid this.  The association seems to fit well in
     `Cobol_parser', yet it depends on `Cobol_config`.  Putting the actual
     "all-dialect" config and other config values in a library `superbol_config`
     might be suitable. *)
  [ "3-D";
    "ABSENT";
    "ACCEPT";
    "ACCESS";
    "ACTION";
    "ACTIVATING";
    "ACTIVE-CLASS";
    "ACTIVE-X";
    "ACTUAL";
    "ADD";
    "ADDRESS";
    "ADJUSTABLE-COLUMNS";
    "ADVANCING";
    "AFTER";
    "ALIGNMENT";
    "ALIGNED";
    "ALL";
    "ALLOCATE";
    "ALLOWING";
    "ALPHABET";
    "ALPHABETIC";
    "ALPHABETIC-LOWER";
    "ALPHABETIC-UPPER";
    "ALPHANUMERIC";
    "ALPHANUMERIC-EDITED";
    "ALSO";
    "ALTER";
    "ALTERNATE";
    "AND";
    "ANY";
    "ANYCASE";
    "ANUM";
    "APPLY";
    "ARE";
    "AREA";
    "AREAS";
    "ARGUMENT-NUMBER";
    "ARGUMENT-VALUE";
    "ARITHMETIC";
    "AS";
    "ASCENDING";
    "ASCII";
    "ASSIGN";
    "AT";
    "ATTRIBUTE";
    "ATTRIBUTES";
    "AUTHOR";
    "AUTO";
    "AUTO-DECIMAL";
    "AUTO-SPIN";
    "AUTOMATIC";
    "AWAY-FROM-ZERO";
    "B-AND";
    "B-NOT";
    "B-OR";
    "B-XOR";
    "B-SHIFT-L";
    "B-SHIFT-LC";
    "B-SHIFT-R";
    "B-SHIFT-RC";
    "BACKGROUND-COLOR";
    "BACKGROUND-HIGH";
    "BACKGROUND-LOW";
    "BACKGROUND-STANDARD";
    "BACKWARD";
    "BAR";
    "BASED";
    "BEFORE";
    "BELL";
    "BINARY";
    "BINARY-C-LONG";
    "BINARY-CHAR";
    "BINARY-DOUBLE";
    "BINARY-LONG";
    "BINARY-SEQUENTIAL";
    "BINARY-SHORT";
    "BIT";
    "BITMAP";
    "BITMAP-END";
    "BITMAP-HANDLE";
    "BITMAP-NUMBER";
    "BITMAP-START";
    "BITMAP-TIMER";
    "BITMAP-TRAILING";
    "BITMAP-TRANSPARENT-COLOR";
    "BITMAP-WIDTH";
    "BLANK";
    "BLINK";
    "BLOCK";
    "BOOLEAN";
    "BOTTOM";
    "BOX";
    "BOXED";
    "BULK-ADDITION";
    "BUSY";
    "BUTTONS";
    "BY";
    "BYTE";
    "BYTES";
    "BYTE-LENGTH";
    "C";
    "CALENDAR-FONT";
    "CALL";
    "CANCEL";
    "CANCEL-BUTTON";
    "CAPACITY";
    "CARD-PUNCH";
    "CARD-READER";
    "CASSETTE";
    "CCOL";
    "CD";
    "CELL";
    "CELL-COLOR";
    "CELL-DATA";
    "CELL-FONT";
    "CELL-PROTECTION";
    "CENTER";
    "CENTERED";
    "CENTERED-HEADINGS";
    "CENTURY-DATE";
    "CF";
    "CH";
    "CHAIN";
    "CHAINING";
    "CHANGED";
    "CHARACTER";
    "CHARACTERS";
    "CHECK-BOX";
    "CLASS";
    "CLASS-ID";
    "CLASSIFICATION";
    "CLEAR-SELECTION";
    "CLINE";
    "CLINES";
    "CLOSE";
    "COBOL";
    "CODE";
    "CODE-SET";
    "COL";
    "COLLATING";
    "COLOR";
    "COLORS";
    "COLS";
    "COLUMN";
    "COLUMN-COLOR";
    "COLUMN-DIVIDERS";
    "COLUMN-FONT";
    "COLUMN-HEADINGS";
    "COLUMN-PROTECTION";
    "COLUMNS";
    "COMBO-BOX";
    "COMMA";
    "COMMAND-LINE";
    "COMMIT";
    "COMMON";
    "COMMUNICATION";
    "COMP";
    "COMP-0";
    "COMP-1";
    "COMP-2";
    "COMP-3";
    "COMP-4";
    "COMP-5";
    "COMP-6";
    "COMP-N";
    "COMP-X";
    "COMP-9";
    "COMP-10";
    "COMP-15";
    "COMPUTATIONAL";
    "COMPUTATIONAL-0";
    "COMPUTATIONAL-1";
    "COMPUTATIONAL-2";
    "COMPUTATIONAL-3";
    "COMPUTATIONAL-4";
    "COMPUTATIONAL-5";
    "COMPUTATIONAL-6";
    "COMPUTATIONAL-N";
    "COMPUTATIONAL-X";
    "COMPUTE";
    "CONDITION";
    "CONFIGURATION";
    "CONSTANT";
    "CONTAINS";
    "CONTENT";
    "CONTINUE";
    "CONTROL";
    "CONTROLS";
    "CONVERSION";
    "CONVERTING";
    "COPY";
    "COPY-SELECTION";
    "CORE-INDEX";
    "CORR";
    "CORRESPONDING";
    "COUNT";
    "CRT";
    "CRT-UNDER";
    "CSIZE";
    "CURRENCY";
    "CURRENT";
    "CURSOR";
    "CURSOR-COL";
    "CURSOR-COLOR";
    "CURSOR-FRAME-WIDTH";
    "CURSOR-ROW";
    "CURSOR-X";
    "CURSOR-Y";
    "CUSTOM-PRINT-TEMPLATE";
    "CYCLE";
    "CYL-INDEX";
    "CYL-OVERFLOW";
    "DASHED";
    "DATA";
    "DATA-COLUMNS";
    "DATA-POINTER";
    "DATA-TYPES";
    "DATE";
    "DATE-COMPILED";
    "DATE-ENTRY";
    "DATE-MODIFIED";
    "DATE-WRITTEN";
    "DAY";
    "DAY-OF-WEEK";
    "DE";
    "DEBUGGING";
    "DECIMAL-POINT";
    "DECLARATIVES";
    "DEFAULT";
    "DEFAULT-BUTTON";
    "DEFAULT-FONT";
    "DELETE";
    "DELIMITED";
    "DELIMITER";
    "DEPENDING";
    "DESCENDING";
    "DESTINATION";
    "DESTROY";
    "DETAIL";
    "DISABLE";
    "DISC";
    "DISK";
    "DISP";
    "DISPLAY";
    "DISPLAY-1";
    "DISPLAY-COLUMNS";
    "DISPLAY-FORMAT";
    "DIVIDE";
    "DIVIDER-COLOR";
    "DIVIDERS";
    "DIVISION";
    "DOTDASH";
    "DOTTED";
    "DOUBLE";
    "DOWN";
    "DRAG-COLOR";
    "DROP-DOWN";
    "DROP-LIST";
    "DUPLICATES";
    "DYNAMIC";
    "EBCDIC";
    "EC";
    "ECHO";
    "EDITING";
    "EGI";
    "ELEMENT";
    "ELSE";
    "EMI";
    "ENABLE";
    "ENCODING";
    "ENCRYPTION";
    "END";
    "END-ACCEPT";
    "END-ADD";
    "END-CALL";
    "END-CHAIN";
    "END-COLOR";
    "END-COMPUTE";
    "END-DELETE";
    "END-DISPLAY";
    "END-DIVIDE";
    "END-EVALUATE";
    "END-IF";
    "END-JSON";
    "END-MODIFY";
    "END-MULTIPLY";
    "END-OF-PAGE";
    "END-PERFORM";
    "END-READ";
    "END-RECEIVE";
    "END-RETURN";
    "END-REWRITE";
    "END-SEARCH";
    "END-SEND";
    "END-START";
    "END-STRING";
    "END-SUBTRACT";
    "END-UNSTRING";
    "END-WRITE";
    "END-XML";
    "ENGRAVED";
    "ENSURE-VISIBLE";
    "ENTRY";
    "ENTRY-CONVENTION";
    "ENTRY-FIELD";
    "ENTRY-REASON";
    "ENVIRONMENT";
    "ENVIRONMENT-NAME";
    "ENVIRONMENT-VALUE";
    "EO";
    "EOL";
    "EOP";
    "EOS";
    "EQUAL";
    "ERASE";
    "ERROR";
    "ESCAPE";
    "ESCAPE-BUTTON";
    "ESI";
    "EVALUATE";
    "EVENT";
    "EVENT-LIST";
    "EVERY";
    "EXAMINE";
    "EXCEPTION";
    "EXCEPTION-OBJECT";
    "EXCEPTION-VALUE";
    "EXCLUSIVE";
    "EXCLUSIVE-OR";
    "EXHIBIT";
    "EXIT";
    "EXPAND";
    "EXPANDS";
    "EXTEND";
    "EXTENDED-SEARCH";
    "EXTERN";
    "EXTERNAL";
    "EXTERNAL-FORM";
    "F";
    "FACTORY";
    "FALSE";
    "FD";
    "FH--FCD";
    "FH--KEYDEF";
    "FILE";
    "FILE-CONTROL";
    "FILE-ID";
    "FILE-LIMIT";
    "FILE-LIMITS";
    "FILE-NAME";
    "FILE-POS";
    "FILL-COLOR";
    "FILL-COLOR2";
    "FILL-PERCENT";
    "FILLER";
    "FINAL";
    "FINALLY";
    "FINISH-REASON";
    "FIRST";
    "FIXED";
    "FIXED-FONT";
    "FIXED-WIDTH";
    "FLAT";
    "FLAT-BUTTONS";
    "FLOAT";
    "FLOAT-BINARY-128";
    "FLOAT-BINARY-32";
    "FLOAT-BINARY-64";
    "FLOAT-DECIMAL-16";
    "FLOAT-DECIMAL-34";
    "FLOAT-EXTENDED";
    "FLOAT-INFINITY";
    "FLOAT-LONG";
    "FLOAT-NOT-A-NUMBER";
    "FLOAT-SHORT";
    "FLOATING";
    "FONT";
    "FOOTING";
    "FOR";
    "FOREGROUND-COLOR";
    "FOREVER";
    "FORMAT";
    "FRAME";
    "FRAMED";
    "FREE";
    "FROM";
    "FULL";
    "FULL-HEIGHT";
    "FUNCTION";
    "FUNCTION-ID";
    "FUNCTION-POINTER";
    "GENERATE";
    "GET";
    "GIVING";
    "GLOBAL";
    "GO";
    "GO-BACK";
    "GO-FORWARD";
    "GO-HOME";
    "GO-SEARCH";
    "GOBACK";
    "GRAPHICAL";
    "GREATER";
    "GRID";
    "GROUP";
    "GROUP-USAGE";
    "GROUP-VALUE";
    "HANDLE";
    "HAS-CHILDREN";
    "HEADING";
    "HEADING-COLOR";
    "HEADING-DIVIDER-COLOR";
    "HEADING-FONT";
    "HEAVY";
    "HEIGHT-IN-CELLS";
    "HEX";
    "HIDDEN-DATA";
    "HIGH-COLOR";
    "HIGH-VALUE";
    "HIGHLIGHT";
    "HOT-TRACK";
    "HSCROLL";
    "HSCROLL-POS";
    "I-O";
    "I-O-CONTROL";
    "ICON";
    "ID";
    "IDENTIFICATION";
    "IDENTIFIED";
    "IF";
    "IGNORE";
    "IGNORING";
    "IMPLEMENTS";
    "IN";
    "INDEPENDENT";
    "INDEX";
    "INDEXED";
    "INDICATE";
    "INHERITS";
    "INITIAL";
    "INITIALIZE";
    "INITIALIZED";
    "INITIATE";
    "INPUT";
    "INPUT-OUTPUT";
    "INQUIRE";
    "INSERTION-INDEX";
    "INSERT-ROWS";
    "INSPECT";
    "INSTALLATION";
    "INTERFACE";
    "INTERFACE-ID";
    "INTERMEDIATE";
    "INTO";
    "INTRINSIC";
    "INVALID";
    "INVOKE";
    "IS";
    "ITEM";
    "ITEM-TEXT";
    "ITEM-TO-ADD";
    "ITEM-TO-DELETE";
    "ITEM-TO-EMPTY";
    "ITEM-VALUE";
    "JSON";
    "JUST";
    "JUSTIFIED";
    "KEPT";
    "KEY";
    "KEYBOARD";
    "LABEL";
    "LABEL-OFFSET";
    "LARGE-FONT";
    "LARGE-OFFSET";
    "LAST";
    "LAST-ROW";
    "LAYOUT-DATA";
    "LAYOUT-MANAGER";
    "LC_ALL";
    "LC_COLLATE";
    "LC_CTYPE";
    "LC_MESSAGES";
    "LC_MONETARY";
    "LC_NUMERIC";
    "LC_TIME";
    "LEADING";
    "LEADING-SHIFT";
    "LEAVE";
    "LEFT";
    "LEFT-JUSTIFY";
    "LEFT-TEXT";
    "LEFTLINE";
    "LENGTH";
    "LESS";
    "LIKE";
    "LIMIT";
    "LIMITS";
    "LINAGE";
    "LINAGE-COUNTER";
    "LINE";
    "LINE-COUNTER";
    "LINE-SEQUENTIAL";
    "LINES";
    "LINES-AT-ROOT";
    "LINKAGE";
    "LIST-BOX";
    "LM-RESIZE";
    "LOC";
    "LOCAL-STORAGE";
    "LOCALE";
    "LOCATION";
    "LOCK";
    "LOCK-HOLDING";
    "LONG-DATE";
    "LOW-COLOR";
    "LOW-VALUE";
    "LOWER";
    "LOWERED";
    "LOWLIGHT";
    "MAGNETIC-TAPE";
    "MANUAL";
    "MASS-UPDATE";
    "MASTER-INDEX";
    "MAX-LINES";
    "MAX-PROGRESS";
    "MAX-TEXT";
    "MAX-VAL";
    "MEDIUM-FONT";
    "MEMORY";
    "MENU";
    "MERGE";
    "MESSAGE";
    "MESSAGE-TAG";
    "METHOD";
    "METHOD-ID";
    "MICROSECOND-TIME";
    "MIN-VAL";
    "MINUS";
    "MODE";
    "MODIFY";
    "MODULES";
    "MOVE";
    "MULTILINE";
    "MULTIPLE";
    "MULTIPLY";
    "NAME";
    "NAMED";
    "NAMESPACE";
    "NAMESPACE-PREFIX";
    "NAT";
    "NATIONAL";
    "NATIONAL-EDITED";
    "NATIVE";
    "NAVIGATE-URL";
    "NEAREST-AWAY-FROM-ZERO";
    "NEAREST-EVEN";
    "NEAREST-TOWARD-ZERO";
    "NEGATIVE";
    "NESTED";
    "NEW";
    "NEXT";
    "NEXT-ITEM";
    "NO";
    "NO-AUTOSEL";
    "NO-AUTO-DEFAULT";
    "NO-BOX";
    "NO-DIVIDERS";
    "NO-ECHO";
    "NO-F4";
    "NO-FOCUS";
    "NO-GROUP-TAB";
    "NO-KEY-LETTER";
    "NOMINAL";
    "NO-SEARCH";
    "NO-UPDOWN";
    "NONE";
    "NONNUMERIC";
    "NORMAL";
    "NOT";
    "NOTAB";
    "NOTHING";
    "NOTIFY";
    "NOTIFY-CHANGE";
    "NOTIFY-DBLCLICK";
    "NOTIFY-SELCHANGE";
    "NULL";
    "NULLS";
    "NUM-COL-HEADINGS";
    "NUM-ROWS";
    "NUMBER";
    "NUMBERS";
    "NUMERIC";
    "NUMERIC-EDITED";
    "OBJECT";
    "OBJECT-COMPUTER";
    "OBJECT-REFERENCE";
    "OCCURS";
    "OF";
    "OFF";
    "OK-BUTTON";
    "OMITTED";
    "ON";
    "ONLY";
    "OPEN";
    "OPTIONAL";
    "OPTIONS";
    "OR";
    "ORDER";
    "ORGANIZATION";
    "OTHER";
    "OTHERS";
    "OUTPUT";
    "OVERFLOW";
    "OVERLAP-LEFT";
    "OVERLAP-TOP";
    "OVERLINE";
    "OVERRIDE";
    "PACKED-DECIMAL";
    "PADDING";
    "PAGE";
    "PAGE-COUNTER";
    "PAGE-SETUP";
    "PAGED";
    "PARAGRAPH";
    "PARENT";
    "PARSE";
    "PASCAL";
    "PASSWORD";
    "PERFORM";
    "PERMANENT";
    "PF";
    "PH";
    "PHYSICAL";
    "PIC";
    "PICTURE";
    "PIXEL";
    "PLACEMENT";
    "PLUS";
    "POINTER";
    "POP-UP";
    "POS";
    "POSITION";
    "POSITION-SHIFT";
    "POSITIVE";
    "PREFIXED";
    "PRESENT";
    "PREVIOUS";
    "PRINT";
    "PRINT-NO-PROMPT";
    "PRINT-PREVIEW";
    "PRINTER";
    "PRINTER-1";
    "PRINTING";
    "PRIORITY";
    "PROCEDURE";
    "PROCEDURE-POINTER";
    "PROCEDURES";
    "PROCEED";
    "PROCESSING";
    "PROGRAM";
    "PROGRAM-ID";
    "PROGRAM-POINTER";
    "PROGRESS";
    "PROHIBITED";
    "PROMPT";
    "PROPERTIES";
    "PROPERTY";
    "PROTECTED";
    "PROTOTYPE";
    "PURGE";
    "PUSH-BUTTON";
    "QUERY-INDEX";
    "QUEUE";
    "QUOTE";
    "QUOTES";
    "RADIO-BUTTON";
    "RAISE";
    "RAISED";
    "RAISING";
    "RANDOM";
    "RD";
    "READ";
    "READ-ONLY";
    "READERS";
    "RECEIVE";
    "RECEIVED";
    "RECORD";
    "RECORD-DATA";
    "RECORD-OVERFLOW";
    "RECORD-TO-ADD";
    "RECORD-TO-DELETE";
    "RECORDING";
    "RECORDS";
    "RECURSIVE";
    "REDEFINES";
    "REEL";
    "REFERENCE";
    "REFERENCES";
    "REFRESH";
    "REGION-COLOR";
    "RELATION";
    "RELATIVE";
    "RELEASE";
    "REMAINDER";
    "REMARKS";
    "REMOVAL";
    "RENAMES";
    "REORG-CRITERIA";
    "REPEATED";
    "REPLACE";
    "REPLACING";
    "REPORT";
    "REPORTING";
    "REPORTS";
    "REPOSITORY";
    "REQUIRED";
    "REREAD";
    "RERUN";
    "RESERVE";
    "RESET";
    "RESET-GRID";
    "RESET-LIST";
    "RESET-TABS";
    "RESUME";
    "RETRY";
    "RETURN";
    "RETURNING";
    "REVERSE";
    "REVERSE-VIDEO";
    "REVERSED";
    "REWIND";
    "REWRITE";
    "RF";
    "RH";
    "RIGHT";
    "RIGHT-ALIGN";
    "RIGHT-JUSTIFY";
    "RIMMED";
    "ROLLBACK";
    "ROUNDED";
    "ROUNDING";
    "ROW-COLOR";
    "ROW-COLOR-PATTERN";
    "ROW-DIVIDERS";
    "ROW-FONT";
    "ROW-HEADINGS";
    "ROW-PROTECTION";
    "RUN";
    "S";
    "SAME";
    "SAVE-AS";
    "SAVE-AS-NO-PROMPT";
    "SCREEN";
    "SCROLL";
    "SCROLL-BAR";
    "SD";
    "SEARCH";
    "SEARCH-OPTIONS";
    "SEARCH-TEXT";
    "SECONDS";
    "SECTION";
    "SECURE";
    "SECURITY";
    "SEGMENT";
    "SEGMENT-LIMIT";
    "SELECT";
    "SELECT-ALL";
    "SELECTION-INDEX";
    "SELECTION-TEXT";
    "SELF";
    "SELF-ACT";
    "SEND";
    "SENTENCE";
    "SEPARATE";
    "SEPARATION";
    "SEQUENCE";
    "SEQUENTIAL";
    "SET";
    "SHADING";
    "SHADOW";
    "SHARING";
    "SHORT-DATE";
    "SHOW-LINES";
    "SHOW-NONE";
    "SHOW-SEL-ALWAYS";
    "SIGN";
    "SIGNED";
    "SIGNED-INT";
    "SIGNED-LONG";
    "SIGNED-SHORT";
    "SIZE";
    "SMALL-FONT";
    "SORT";
    "SORT-MERGE";
    "SORT-ORDER";
    "SOURCE";
    "SOURCE-COMPUTER";
    "SOURCES";
    "SPACE";
    "SPACE-FILL";
    "SPACES";
    "SPECIAL-NAMES";
    "SPINNER";
    "SQUARE";
    "STACK";
    "STANDARD";
    "STANDARD-1";
    "STANDARD-2";
    "STANDARD-BINARY";
    "STANDARD-DECIMAL";
    "START";
    "START-X";
    "START-Y";
    "STATEMENT";
    "STATIC";
    "STATIC-LIST";
    "STATUS";
    "STATUS-BAR";
    "STATUS-TEXT";
    "STDCALL";
    "STEP";
    "STOP";
    "STRING";
    "STRONG";
    "STYLE";
    "SUB-QUEUE-1";
    "SUB-QUEUE-2";
    "SUB-QUEUE-3";
    "SUBTRACT";
    "SUBWINDOW";
    "SUM";
    "SUPER";
    "SUPPRESS";
    "SYMBOL";
    "SYMBOLIC";
    "SYNC";
    "SYNCHRONIZED";
    "SYSTEM-DEFAULT";
    "SYSTEM-INFO";
    "SYSTEM-OFFSET";
    "TAB";
    "TAB-TO-ADD";
    "TAB-TO-DELETE";
    "TABLE";
    "TALLYING";
    "TAPE";
    "TEMPORARY";
    "TERMINAL";
    "TERMINAL-INFO";
    "TERMINATE";
    "TERMINATION-VALUE";
    "TEST";
    "TEXT";
    "THAN";
    "THEN";
    "THREAD";
    "THREADS";
    "THROUGH";
    "THRU";
    "THUMB-POSITION";
    "TILED-HEADINGS";
    "TIME";
    "TIME-OUT";
    "TIMES";
    "TITLE";
    "TITLE-POSITION";
    "TO";
    "TOP";
    "TOP-LEVEL";
    "TOWARD-GREATER";
    "TOWARD-LESSER";
    "TRACK";
    "TRACKS";
    "TRACK-AREA";
    "TRACK-LIMIT";
    "TRADITIONAL-FONT";
    "TRAILING";
    "TRAILING-SHIFT";
    "TRAILING-SIGN";
    "TRANSFORM";
    "TRANSPARENT";
    "TREE-VIEW";
    "TRUE";
    "TRUNCATION";
    "TYPE";
    "TYPEDEF";
    "U";
    "UCS-4";
    "UNBOUNDED";
    "UNDERLINE";
    "UNFRAMED";
    "UNIT";
    "UNIVERSAL";
    "UNLOCK";
    "UNSIGNED";
    "UNSIGNED-INT";
    "UNSIGNED-LONG";
    "UNSIGNED-SHORT";
    "UNSORTED";
    "UNSTRING";
    "UNTIL";
    "UP";
    "UPDATE";
    "UPDATERS";
    "UPON";
    "UPPER";
    "USAGE";
    "USE";
    "USE-ALT";
    "USE-RETURN";
    "USE-TAB";
    "USER";
    "USER-DEFAULT";
    "USING";
    "UTF-16";
    "UTF-8";
    "V";
    "VAL-STATUS";
    "VALID";
    "VALIDATE";
    "VALIDATE-STATUS";
    "VALIDATING";
    "VALUE";
    "VALUES";
    "VALUE-FORMAT";
    "VARIABLE";
    "VARIANT";
    "VARYING";
    "VERTICAL";
    "VERY-HEAVY";
    "VIRTUAL-WIDTH";
    "VOLATILE";
    "VPADDING";
    "VSCROLL";
    "VSCROLL-BAR";
    "VSCROLL-POS";
    "VTOP";
    "WAIT";
    "WEB-BROWSER";
    "WHEN";
    "WIDTH";
    "WIDTH-IN-CELLS";
    "WINDOW";
    "WITH";
    "WORDS";
    "WORKING-STORAGE";
    "WRAP";
    "WRITE";
    "WRITE-ONLY";
    "WRITE-VERIFY";
    "WRITERS";
    "X";
    "XML";
    "XML-DECLARATION";
    "XML-SCHEMA";
    "XOR";
    "Y";
    "YYYYDDD";
    "YYYYMMDD";
    "ZERO";
    "ZERO-FILL"; ]

let words =
  let reserve w = w, Types.ReserveWord { preserve_context_sensitivity = true } in
  List.rev @@ List.rev_map reserve reserved_words

(** The set of all available intrinsic functions *)
let intrinsic_functions =
  StringSet.of_list @@
  [ "ABS";
    "ABSOLUTE-VALUE";
    "ACOS";
    "ANNUITY";
    "ASIN";
    "ATAN";
    "BASECONVERT";
    "BIT-OF";
    "BIT-TO-CHAR";
    "BOOLEAN-OF-INTEGER";
    "BYTE-LENGTH";
    "CHAR";
    "CHAR-NATIONAL";
    "COMBINED-DATETIME";
    "CONCAT";
    "CONCATENATE";
    "CONTENT-LENGTH";
    "CONTENT-OF";
    "CONVERT";
    "COS";
    "CURRENCY-SYMBOL";
    "CURRENT-DATE";
    "DATE-OF-INTEGER";
    "DATE-TO-YYYYMMDD";
    "DAY-OF-INTEGER";
    "DAY-TO-YYYYDDD";
    "DISPLAY-OF";
    "E";
    "EXCEPTION-FILE";
    "EXCEPTION-FILE-N";
    "EXCEPTION-LOCATION";
    "EXCEPTION-LOCATION-N";
    "EXCEPTION-STATEMENT";
    "EXCEPTION-STATUS";
    "EXP";
    "EXP10";
    "FACTORIAL";
    "FIND-STRING";
    "FORMATTED-CURRENT-DATE";
    "FORMATTED-DATE";
    "FORMATTED-DATETIME";
    "FORMATTED-TIME";
    "FRACTION-PART";
    "HEX-OF";
    "HEX-TO-CHAR";
    "HIGHEST-ALGEBRAIC";
    "INTEGER";
    "INTEGER-OF-BOOLEAN";
    "INTEGER-OF-DATE";
    "INTEGER-OF-DAY";
    "INTEGER-OF-FORMATTED-DATE";
    "INTEGER-PART";
    "LENGTH";
    "LENGTH-AN";
    "LOCALE-COMPARE";
    "LOCALE-DATE";
    "LOCALE-TIME";
    "LOCALE-TIME-FROM-SECONDS";
    "LOG";
    "LOG10";
    "LOWER-CASE";
    "LOWEST-ALGEBRAIC";
    "MAX";
    "MEAN";
    "MEDIAN";
    "MIDRANGE";
    "MIN";
    "MOD";
    "MODULE-CALLER-ID";
    "MODULE-DATE";
    "MODULE-FORMATTED-DATE";
    "MODULE-ID";
    "MODULE-NAME";
    "MODULE-PATH";
    "MODULE-SOURCE";
    "MODULE-TIME";
    "MONETARY-DECIMAL-POINT";
    "MONETARY-THOUSANDS-SEPARATOR";
    "NATIONAL-OF";
    "NUMERIC-DECIMAL-POINT";
    "NUMERIC-THOUSANDS-SEPARATOR";
    "NUMVAL";
    "NUMVAL-C";
    "NUMVAL-F";
    "ORD";
    "ORD-MAX";
    "ORD-MIN";
    "PI";
    "PRESENT-VALUE";
    "RANDOM";
    "RANGE";
    "REM";
    "REVERSE";
    "SECONDS-FROM-FORMATTED-TIME";
    "SECONDS-PAST-MIDNIGHT";
    "SIGN";
    "SIN";
    "SQRT";
    "STANDARD-COMPARE";
    "STANDARD-DEVIATION";
    "STORED-CHAR-LENGTH";
    "SUBSTITUTE";
    "SUBSTITUTE-CASE";
    "SUM";
    "TAN";
    "TEST-DATE-YYYYMMDD";
    "TEST-DAY-YYYYDDD";
    "TEST-FORMATTED-DATETIME";
    "TEST-NUMVAL";
    "TEST-NUMVAL-C";
    "TEST-NUMVAL-F";
    "TRIM";
    "UPPER-CASE";
    "VARIANCE";
    "WHEN-COMPILED";
    "YEAR-TO-YYYY"; ]

(** Disabled or unimplemented intrinsic functions *)
let disabled_intrinsic =
  StringSet.of_list @@
  [ (*disabled*)
    "ABSOLUTE-VALUE";
    (*not implemented*)
    "BASECONVERT";
    "BOOLEAN-OF-INTEGER";
    "CHAR-NATIONAL";
    "CONVERT";
    "DISPLAY-OF";
    "EXCEPTION-FILE-N";
    "EXCEPTION-LOCATION-N";
    "FIND-STRING";
    "INTEGER-OF-BOOLEAN";
    "MODULE-NAME";
    "NATIONAL-OF";
    "STANDARD-COMPARE"; ]

(** Defautls intrinsic functions *)
let default_intrinsics =
  StringSet.diff intrinsic_functions disabled_intrinsic

(** Set of available system names *)
let system_names =
  StringSet.of_list @@
  [ "SYSIN";
    "SYSIPT";
    "STDIN";
    "SYSOUT";
    "SYSLIST";
    "SYSLST";
    "SYSPCH";
    "SYSPUNCH";
    "STDOUT";
    "PRINT";
    "PRINTER";
    "PRINTER-1";
    "SYSERR";
    "STDERR";
    "CONSOLE";
    "ALTERNATE-CONSOLE";
    "ALTERNATE CONSOLE";
    "TERMINAL";
    "C01";
    "C02";
    "C03";
    "C04";
    "C05";
    "C06";
    "C07";
    "C08";
    "C09";
    "C10";
    "C11";
    "C12";
    "S01";
    "S02";
    "S03";
    "S04";
    "S05";
    "CSP";
    "FORMFEED";
    "TOP";
    "CALL-CONVENTION";
    "SWITCH-0";
    "SWITCH-1";
    "SWITCH-2";
    "SWITCH-3";
    "SWITCH-4";
    "SWITCH-5";
    "SWITCH-6";
    "SWITCH-7";
    "SWITCH-8";
    "SWITCH-9";
    "SWITCH-10";
    "SWITCH-11";
    "SWITCH-12";
    "SWITCH-13";
    "SWITCH-14";
    "SWITCH-15";
    "SWITCH-16";
    "SWITCH-17";
    "SWITCH-18";
    "SWITCH-19";
    "SWITCH-20";
    "SWITCH-21";
    "SWITCH-22";
    "SWITCH-23";
    "SWITCH-24";
    "SWITCH-25";
    "SWITCH-26";
    "SWITCH-27";
    "SWITCH-28";
    "SWITCH-29";
    "SWITCH-30";
    "SWITCH-31";
    "SWITCH-32";
    "SWITCH-33";
    "SWITCH-34";
    "SWITCH-35";
    "SWITCH-36";
    "SW0";
    "SW1";
    "SW2";
    "SW3";
    "SW4";
    "SW5";
    "SW6";
    "SW7";
    "SW8";
    "SW9";
    "SW10";
    "SW11";
    "SW12";
    "SW13";
    "SW14";
    "SW15";
    "SWITCH 0";
    "SWITCH 1";
    "SWITCH 2";
    "SWITCH 3";
    "SWITCH 4";
    "SWITCH 5";
    "SWITCH 6";
    "SWITCH 7";
    "SWITCH 8";
    "SWITCH 9";
    "SWITCH 10";
    "SWITCH 11";
    "SWITCH 12";
    "SWITCH 13";
    "SWITCH 14";
    "SWITCH 15";
    "SWITCH 16";
    "SWITCH 17";
    "SWITCH 18";
    "SWITCH 19";
    "SWITCH 20";
    "SWITCH 21";
    "SWITCH 22";
    "SWITCH 23";
    "SWITCH 24";
    "SWITCH 25";
    "SWITCH 26";
    "SWITCH A";
    "SWITCH B";
    "SWITCH C";
    "SWITCH D";
    "SWITCH E";
    "SWITCH F";
    "SWITCH G";
    "SWITCH H";
    "SWITCH I";
    "SWITCH J";
    "SWITCH K";
    "SWITCH L";
    "SWITCH M";
    "SWITCH N";
    "SWITCH O";
    "SWITCH P";
    "SWITCH Q";
    "SWITCH R";
    "SWITCH S";
    "SWITCH T";
    "SWITCH U";
    "SWITCH V";
    "SWITCH W";
    "SWITCH X";
    "SWITCH Y";
    "SWITCH Z";
    "UPSI-0";
    "UPSI-1";
    "UPSI-2";
    "UPSI-3";
    "UPSI-4";
    "UPSI-5";
    "UPSI-6";
    "UPSI-7";
    "UPSI-8";
    "USW-0";
    "USW-1";
    "USW-2";
    "USW-3";
    "USW-4";
    "USW-5";
    "USW-6";
    "USW-7";
    "USW-8";
    "USW-9";
    "USW-10";
    "USW-11";
    "USW-12";
    "USW-13";
    "USW-14";
    "USW-15";
    "USW-16";
    "USW-17";
    "USW-18";
    "USW-19";
    "USW-20";
    "USW-21";
    "USW-22";
    "USW-23";
    "USW-24";
    "USW-25";
    "USW-26";
    "USW-27";
    "USW-28";
    "USW-29";
    "USW-30";
    "USW-31"; ]

(** Disabled system names by default *)
let disabled_system_names =
  StringSet.of_list @@
  [ "SW0";
    "SW1";
    "SW2";
    "SW3";
    "SW4";
    "SW5";
    "SW6";
    "SW7";
    "SW8";
    "SW9";
    "SW10";
    "SW11";
    "SW12";
    "SW13";
    "SW14";
    "SW15";
    "SWITCH 0";
    "SWITCH 1";
    "SWITCH 2";
    "SWITCH 3";
    "SWITCH 4";
    "SWITCH 5";
    "SWITCH 6";
    "SWITCH 7";
    "SWITCH 8";
    "SWITCH 9";
    "SWITCH 10";
    "SWITCH 11";
    "SWITCH 12";
    "SWITCH 13";
    "SWITCH 14";
    "SWITCH 15";
    "SWITCH 16";
    "SWITCH 17";
    "SWITCH 18";
    "SWITCH 19";
    "SWITCH 20";
    "SWITCH 21";
    "SWITCH 22";
    "SWITCH 23";
    "SWITCH 24";
    "SWITCH 25";
    "SWITCH 26";
    "SWITCH A";
    "SWITCH B";
    "SWITCH C";
    "SWITCH D";
    "SWITCH E";
    "SWITCH F";
    "SWITCH G";
    "SWITCH H";
    "SWITCH I";
    "SWITCH J";
    "SWITCH K";
    "SWITCH L";
    "SWITCH M";
    "SWITCH N";
    "SWITCH O";
    "SWITCH P";
    "SWITCH Q";
    "SWITCH R";
    "SWITCH S";
    "SWITCH T";
    "SWITCH U";
    "SWITCH V";
    "SWITCH W";
    "SWITCH X";
    "SWITCH Y";
    "SWITCH Z";
    "UPSI-0";
    "UPSI-1";
    "UPSI-2";
    "UPSI-3";
    "UPSI-4";
    "UPSI-5";
    "UPSI-6";
    "UPSI-7";
    "UPSI-8";
    "USW-0";
    "USW-1";
    "USW-2";
    "USW-3";
    "USW-4";
    "USW-5";
    "USW-6";
    "USW-7";
    "USW-8";
    "USW-9";
    "USW-10";
    "USW-11";
    "USW-12";
    "USW-13";
    "USW-14";
    "USW-15";
    "USW-16";
    "USW-17";
    "USW-18";
    "USW-19";
    "USW-20";
    "USW-21";
    "USW-22";
    "USW-23";
    "USW-24";
    "USW-25";
    "USW-26";
    "USW-27";
    "USW-28";
    "USW-29";
    "USW-30";
    "USW-31"; ]

(** Default system names *)
let default_system_names =
  StringSet.diff system_names disabled_system_names

(** DIALECT-ALL-DEVICES system names *)
let device_system_names =
  StringSet.of_list @@
  [ "SYSIN";
    "SYSIPT";
    "STDIN";
    "SYSOUT";
    "SYSLIST";
    "SYSLST";
    "SYSPCH";
    "SYSPUNCH";
    "STDOUT";
    "PRINT";
    "PRINTER";
    "PRINTER-1";
    "SYSERR";
    "STDERR";
    "CONSOLE";
    "ALTERNATE-CONSOLE";
    "ALTERNATE CONSOLE";
    "TERMINAL"; ]

(** DIALECT-ALL-FEATURES system names *)
let feature_system_names =
  StringSet.of_list @@
  [ "C01";
    "C02";
    "C03";
    "C04";
    "C05";
    "C06";
    "C07";
    "C08";
    "C09";
    "C10";
    "C11";
    "C12";
    "S01";
    "S02";
    "S03";
    "S04";
    "S05";
    "CSP";
    "FORMFEED";
    "TOP";
    "CALL-CONVENTION"; ]

(** DIALECT-ALL-SWITCHES system names *)
let switch_system_names =
  StringSet.of_list @@
  [ "SWITCH-0";
    "SWITCH-1";
    "SWITCH-2";
    "SWITCH-3";
    "SWITCH-4";
    "SWITCH-5";
    "SWITCH-6";
    "SWITCH-7";
    "SWITCH-8";
    "SWITCH-9";
    "SWITCH-10";
    "SWITCH-11";
    "SWITCH-12";
    "SWITCH-13";
    "SWITCH-14";
    "SWITCH-15";
    "SWITCH-16";
    "SWITCH-17";
    "SWITCH-18";
    "SWITCH-19";
    "SWITCH-20";
    "SWITCH-21";
    "SWITCH-22";
    "SWITCH-23";
    "SWITCH-24";
    "SWITCH-25";
    "SWITCH-26";
    "SWITCH-27";
    "SWITCH-28";
    "SWITCH-29";
    "SWITCH-30";
    "SWITCH-31";
    "SWITCH-32";
    "SWITCH-33";
    "SWITCH-34";
    "SWITCH-35";
    "SWITCH-36";
    "SW0";
    "SW1";
    "SW2";
    "SW3";
    "SW4";
    "SW5";
    "SW6";
    "SW7";
    "SW8";
    "SW9";
    "SW10";
    "SW11";
    "SW12";
    "SW13";
    "SW14";
    "SW15";
    "SWITCH 0";
    "SWITCH 1";
    "SWITCH 2";
    "SWITCH 3";
    "SWITCH 4";
    "SWITCH 5";
    "SWITCH 6";
    "SWITCH 7";
    "SWITCH 8";
    "SWITCH 9";
    "SWITCH 10";
    "SWITCH 11";
    "SWITCH 12";
    "SWITCH 13";
    "SWITCH 14";
    "SWITCH 15";
    "SWITCH 16";
    "SWITCH 17";
    "SWITCH 18";
    "SWITCH 19";
    "SWITCH 20";
    "SWITCH 21";
    "SWITCH 22";
    "SWITCH 23";
    "SWITCH 24";
    "SWITCH 25";
    "SWITCH 26";
    "SWITCH A";
    "SWITCH B";
    "SWITCH C";
    "SWITCH D";
    "SWITCH E";
    "SWITCH F";
    "SWITCH G";
    "SWITCH H";
    "SWITCH I";
    "SWITCH J";
    "SWITCH K";
    "SWITCH L";
    "SWITCH M";
    "SWITCH N";
    "SWITCH O";
    "SWITCH P";
    "SWITCH Q";
    "SWITCH R";
    "SWITCH S";
    "SWITCH T";
    "SWITCH U";
    "SWITCH V";
    "SWITCH W";
    "SWITCH X";
    "SWITCH Y";
    "SWITCH Z";
    "UPSI-0";
    "UPSI-1";
    "UPSI-2";
    "UPSI-3";
    "UPSI-4";
    "UPSI-5";
    "UPSI-6";
    "UPSI-7";
    "UPSI-8";
    "USW-0";
    "USW-1";
    "USW-2";
    "USW-3";
    "USW-4";
    "USW-5";
    "USW-6";
    "USW-7";
    "USW-8";
    "USW-9";
    "USW-10";
    "USW-11";
    "USW-12";
    "USW-13";
    "USW-14";
    "USW-15";
    "USW-16";
    "USW-17";
    "USW-18";
    "USW-19";
    "USW-20";
    "USW-21";
    "USW-22";
    "USW-23";
    "USW-24";
    "USW-25";
    "USW-26";
    "USW-27";
    "USW-28";
    "USW-29";
    "USW-30";
    "USW-31"; ]

(** Set of available registers *)
let registers =
  StringSet.of_list @@
  [ "ADDRESS OF";
    "COB-CRT-STATUS";
    "DEBUG-ITEM";
    "LENGTH OF";
    "NUMBER-OF-CALL-PARAMETERS";
    "RETURN-CODE";
    "SORT-RETURN";
    "TALLY";
    "COL";
    "LIN";
    "WHEN-COMPILED";
    "XML-CODE";
    "XML-EVENT";
    "XML-INFORMATION";
    "XML-NAMESPACE";
    "XML-NAMESPACE-PREFIX";
    "XML-NNAMESPACE";
    "XML-NNAMESPACE-PREFIX";
    "XML-NTEXT";
    "XML-TEXT";
    "JSON-CODE";
    "JSON-STATUS"; ]

(** Disabled by default registers *)
let must_be_enabled_registers =
  StringSet.of_list @@
  [ "COL";
    "LIN"; ]

(** Default registers *)
let default_registers =
  StringSet.diff registers must_be_enabled_registers
