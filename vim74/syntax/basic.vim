" Vim syntax file
" Language:	BASIC
" Maintainer:	Allan Kelly <allan@fruitloaf.co.uk>
" Last Change:  2011 Dec 25 by Thilo Six

" First version based on Micro$soft QBASIC circa 1989, as documented in
" 'Learn BASIC Now' by Halvorson&Rygmyr. Microsoft Press 1989.
" This syntax file not a complete implementation yet.  Send suggestions to the
" maintainer.

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

" A bunch of useful BASIC keywords
syn keyword basicStatement	BEEP beep Beep BLOAD bload Bload BSAVE bsave Bsave
syn keyword basicStatement	CALL call Call ABSOLUTE absolute Absolute
syn keyword basicStatement	CHAIN chain Chain CHDIR chdir Chdir
syn keyword basicStatement	CIRCLE circle Circle CLEAR clear Clear
syn keyword basicStatement	CLOSE close Close CLS cls Cls COLOR color Color
syn keyword basicStatement	COM com Com COMMON common Common
syn keyword basicStatement	CONST const Const DATA data Data
syn keyword basicStatement	DECLARE declare Declare DEF def Def
syn keyword basicStatement	DEFDBL defdbl Defdbl DEFINT defint Defint
syn keyword basicStatement	DEFLNG deflng Deflng DEFSNG defsng Defsng
syn keyword basicStatement	DEFSTR defstr Defstr DIM dim Dim
syn keyword basicStatement	DO do Do LOOP loop Loop
syn keyword basicStatement	DRAW draw Draw END end End
syn keyword basicStatement	ENVIRON environ Environ ERASE erase Erase
syn keyword basicStatement	ERROR error Error EXIT exit Exit
syn keyword basicStatement	FIELD field Field FILES files Files
syn keyword basicStatement	FOR for For NEXT next Next
syn keyword basicStatement	FUNCTION function Function GET get Get
syn keyword basicStatement	GOSUB gosub Gosub GOTO goto Goto
syn keyword basicStatement	IF if If THEN then Then ELSE else Else
syn keyword basicStatement	INPUT input Input INPUT# input# Input#
syn keyword basicStatement	IOCTL ioctl Ioctl KEY key Key
syn keyword basicStatement	KILL kill Kill LET let Let
syn keyword basicStatement	LINE line Line LOCATE locate Locate
syn keyword basicStatement	LOCK lock Lock UNLOCK unlock Unlock
syn keyword basicStatement	LPRINT lprint Lprint USING using Using
syn keyword basicStatement	LSET lset Lset MKDIR mkdir Mkdir
syn keyword basicStatement	NAME name Name ON on On
syn keyword basicStatement	ERROR error Error OPEN open Open
syn keyword basicStatement	OPTION option Option BASE base Base
syn keyword basicStatement	OUT out Out PAINT paint Paint
syn keyword basicStatement	PALETTE palette Palette PCOPY pcopy Pcopy
syn keyword basicStatement	PEN pen Pen PLAY play Play
syn keyword basicStatement	PMAP pmap Pmap POKE poke Poke
syn keyword basicStatement	PRESET preset Preset PRINT print Print
syn keyword basicStatement	PRINT# print# Print# USING using Using
syn keyword basicStatement	PSET pset Pset PUT put Put
syn keyword basicStatement	RANDOMIZE randomize Randomize READ read Read
syn keyword basicStatement	REDIM redim Redim RESET reset Reset
syn keyword basicStatement	RESTORE restore Restore RESUME resume Resume
syn keyword basicStatement	RETURN return Return RMDIR rmdir Rmdir
syn keyword basicStatement	RSET rset Rset RUN run Run
syn keyword basicStatement	SEEK seek Seek SELECT select Select
syn keyword basicStatement	CASE case Case SHARED shared Shared
syn keyword basicStatement	SHELL shell Shell SLEEP sleep Sleep
syn keyword basicStatement	SOUND sound Sound STATIC static Static
syn keyword basicStatement	STOP stop Stop STRIG strig Strig
syn keyword basicStatement	SUB sub Sub SWAP swap Swap
syn keyword basicStatement	SYSTEM system System TIMER timer Timer
syn keyword basicStatement	TROFF troff Troff TRON tron Tron
syn keyword basicStatement	TYPE type Type UNLOCK unlock Unlock
syn keyword basicStatement	VIEW view View WAIT wait Wait
syn keyword basicStatement	WHILE while While WEND wend Wend
syn keyword basicStatement	WIDTH width Width WINDOW window Window
syn keyword basicStatement	WRITE write Write DATE$ date$ Date$
syn keyword basicStatement	MID$ mid$ Mid$ TIME$ time$ Time$

syn keyword basicFunction	ABS abs Abs ASC asc Asc
syn keyword basicFunction	ATN atn Atn CDBL cdbl Cdbl
syn keyword basicFunction	CINT cint Cint CLNG clng Clng
syn keyword basicFunction	COS cos Cos CSNG csng Csng
syn keyword basicFunction	CSRLIN csrlin Csrlin CVD cvd Cvd
syn keyword basicFunction	CVDMBF cvdmbf Cvdmbf CVI cvi Cvi
syn keyword basicFunction	CVL cvl Cvl CVS cvs Cvs
syn keyword basicFunction	CVSMBF cvsmbf Cvsmbf EOF eof Eof
syn keyword basicFunction	ERDEV erdev Erdev ERL erl Erl
syn keyword basicFunction	ERR err Err EXP exp Exp
syn keyword basicFunction	FILEATTR fileattr Fileattr FIX fix Fix
syn keyword basicFunction	FRE fre Fre FREEFILE freefile Freefile
syn keyword basicFunction	INP inp Inp INSTR instr Instr
syn keyword basicFunction	INT int Int LBOUND lbound Lbound
syn keyword basicFunction	LEN len Len LOC loc Loc
syn keyword basicFunction	LOF lof Lof LOG log Log
syn keyword basicFunction	LPOS lpos Lpos PEEK peek Peek
syn keyword basicFunction	PEN pen Pen POINT point Point
syn keyword basicFunction	POS pos Pos RND rnd Rnd
syn keyword basicFunction	SADD sadd Sadd SCREEN screen Screen
syn keyword basicFunction	SEEK seek Seek SETMEM setmem Setmem
syn keyword basicFunction	SGN sgn Sgn SIN sin Sin
syn keyword basicFunction	SPC spc Spc SQR sqr Sqr
syn keyword basicFunction	STICK stick Stick STRIG strig Strig
syn keyword basicFunction	TAB tab Tab TAN tan Tan
syn keyword basicFunction	UBOUND ubound Ubound VAL val Val
syn keyword basicFunction	VALPTR valptr Valptr VALSEG valseg Valseg
syn keyword basicFunction	VARPTR varptr Varptr VARSEG varseg Varseg
syn keyword basicFunction	CHR$ Chr$ chr$ COMMAND$ command$ Command$
syn keyword basicFunction	DATE$ date$ Date$ ENVIRON$ environ$ Environ$
syn keyword basicFunction	ERDEV$ erdev$ Erdev$ HEX$ hex$ Hex$
syn keyword basicFunction	INKEY$ inkey$ Inkey$ INPUT$ input$ Input$
syn keyword basicFunction	IOCTL$ ioctl$ Ioctl$ LCASES$ lcases$ Lcases$
syn keyword basicFunction	LAFT$ laft$ Laft$ LTRIM$ ltrim$ Ltrim$
syn keyword basicFunction	MID$ mid$ Mid$ MKDMBF$ mkdmbf$ Mkdmbf$
syn keyword basicFunction	MKD$ mkd$ Mkd$ MKI$ mki$ Mki$
syn keyword basicFunction	MKL$ mkl$ Mkl$ MKSMBF$ mksmbf$ Mksmbf$
syn keyword basicFunction	MKS$ mks$ Mks$ OCT$ oct$ Oct$
syn keyword basicFunction	RIGHT$ right$ Right$ RTRIM$ rtrim$ Rtrim$
syn keyword basicFunction	SPACE$ space$ Space$ STR$ str$ Str$
syn keyword basicFunction	STRING$ string$ String$ TIME$ time$ Time$
syn keyword basicFunction	UCASE$ ucase$ Ucase$ VARPTR$ varptr$ Varptr$
syn keyword basicTodo contained	TODO

"integer number, or floating point number without a dot.
syn match  basicNumber		"\<\d\+\>"
"floating point number, with dot
syn match  basicNumber		"\<\d\+\.\d*\>"
"floating point number, starting with a dot
syn match  basicNumber		"\.\d\+\>"

" String and Character contstants
syn match   basicSpecial contained "\\\d\d\d\|\\."
syn region  basicString		  start=+"+  skip=+\\\\\|\\"+  end=+"+  contains=basicSpecial

syn region  basicComment	start="REM" end="$" contains=basicTodo
syn region  basicComment	start="^[ \t]*'" end="$" contains=basicTodo
syn region  basicLineNumber	start="^\d" end="\s"
syn match   basicTypeSpecifier  "[a-zA-Z0-9][\$%&!#]"ms=s+1
" Used with OPEN statement
syn match   basicFilenumber  "#\d\+"
"syn sync ccomment basicComment
" syn match   basicMathsOperator "[<>+\*^/\\=-]"
syn match   basicMathsOperator   "-\|=\|[:<>+\*^/\\]\|AND\|OR"

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_basic_syntax_inits")
  if version < 508
    let did_basic_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink basicLabel		Label
  HiLink basicConditional	Conditional
  HiLink basicRepeat		Repeat
  HiLink basicLineNumber	Comment
  HiLink basicNumber		Number
  HiLink basicError		Error
  HiLink basicStatement	Statement
  HiLink basicString		String
  HiLink basicComment		Comment
  HiLink basicSpecial		Special
  HiLink basicTodo		Todo
  HiLink basicFunction		Identifier
  HiLink basicTypeSpecifier Type
  HiLink basicFilenumber basicTypeSpecifier
  "hi basicMathsOperator term=bold cterm=bold gui=bold

  delcommand HiLink
endif

let b:current_syntax = "basic"

let &cpo = s:cpo_save
unlet s:cpo_save
" vim: ts=8
