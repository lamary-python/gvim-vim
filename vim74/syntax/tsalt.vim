" Vim syntax file
" Language:	Telix (Modem Comm Program) SALT Script
" Maintainer:	Sean M. McKee <mckee@misslink.net>
" Last Change:	2012 Feb 03 by Thilo Six
" Version Info: @(#)tsalt.vim	1.5	97/12/16 08:11:15

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

" turn case matching off
syn case ignore

"FUNCTIONS
" Character Handling Functions
syn keyword tsaltFunction	IsAscii IsAlNum IsAlpha IsCntrl IsDigit
syn keyword tsaltFunction	IsLower IsUpper ToLower ToUpper

" Connect Device Operations
syn keyword tsaltFunction	Carrier cInp_Cnt cGetC cGetCT cPutC cPutN
syn keyword tsaltFunction	cPutS cPutS_TR FlushBuf Get_Baud
syn keyword tsaltFunction	Get_DataB Get_Port Get_StopB Hangup
syn keyword tsaltFunction	KillConnectDevice MakeConnectDevice
syn keyword tsaltFunction	Send_Brk Set_ConnectDevice Set_Port

" File Input/Output Operations
syn keyword tsaltFunction	fClearErr fClose fDelete fError fEOF fFlush
syn keyword tsaltFunction	fGetC fGetS FileAttr FileFind FileSize
syn keyword tsaltFunction	FileTime fnStrip fOpen fPutC fPutS fRead
syn keyword tsaltFunction	fRename fSeek fTell fWrite

" File Transfers and Logs
syn keyword tsaltFunction	Capture Capture_Stat Printer Receive Send
syn keyword tsaltFunction	Set_DefProt UsageLog Usage_Stat UStamp

" Input String Matching
syn keyword tsaltFunction	Track Track_AddChr Track_Free Track_Hit
syn keyword tsaltFunction	WaitFor

" Keyboard Operations
syn keyword tsaltFunction	InKey InKeyW KeyGet KeyLoad KeySave KeySet

" Miscellaneous Functions
syn keyword tsaltFunction	ChatMode Dos Dial DosFunction ExitTelix
syn keyword tsaltFunction	GetEnv GetFon HelpScreen LoadFon NewDir
syn keyword tsaltFunction	Randon Redial RedirectDOS Run
syn keyword tsaltFunction	Set_Terminal Show_Directory TelixVersion
syn keyword tsaltFunction	Terminal TransTab Update_Term

" Script Management
syn keyword tsaltFunction	ArgCount Call CallD CompileScript GetRunPath
syn keyword tsaltFunction	Is_Loaded Load_Scr ScriptVersion
syn keyword tsaltFunction	TelixForWindows Unload_Scr

" Sound Functions
syn keyword tsaltFunction	Alarm PlayWave Tone

" String Handling
syn keyword tsaltFunction	CopyChrs CopyStr DelChrs GetS GetSXY
syn keyword tsaltFunction	InputBox InsChrs ItoS SetChr StoI StrCat
syn keyword tsaltFunction	StrChr StrCompI StrLen StrLower StrMaxLen
syn keyword tsaltFunction	StrPos StrPosI StrUpper SubChr SubChrs
syn keyword tsaltFunction	SubStr

" Time, Date, and Timer Operations
syn keyword tsaltFunction	CurTime Date Delay Delay_Scr Get_OnlineTime
syn keyword tsaltFunction	tDay tHour tMin tMonth tSec tYear Time
syn keyword tsaltFunction	Time_Up Timer_Free Time_Restart
syn keyword tsaltFunction	Time_Start Time_Total

" Video Operations
syn keyword tsaltFunction	Box CNewLine Cursor_OnOff Clear_Scr
syn keyword tsaltFunction	GetTermHeight GetTermWidth GetX GetY
syn keyword tsaltFunction	GotoXY MsgBox NewLine PrintC PrintC_Trm
syn keyword tsaltFunction	PrintN PrintN_Trm PrintS PrintS_Trm
syn keyword tsaltFunction	PrintSC PRintSC_Trm
syn keyword tsaltFunction	PStrA PStrAXY Scroll Status_Wind vGetChr
syn keyword tsaltFunction	vGetChrs vGetChrsA  vPutChr vPutChrs
syn keyword tsaltFunction	vPutChrsA vRstrArea vSaveArea

" Dynamic Data Exchange (DDE) Operations
syn keyword tsaltFunction	DDEExecute DDEInitate DDEPoke DDERequest
syn keyword tsaltFunction	DDETerminate DDETerminateAll
"END FUNCTIONS

"PREDEFINED VARAIABLES
syn keyword tsaltSysVar	_add_lf _alarm_on _answerback_str _asc_rcrtrans
syn keyword tsaltSysVar	_asc_remabort _asc_rlftrans _asc_scpacing
syn keyword tsaltSysVar	_asc_scrtrans _asc_secho _asc_slpacing
syn keyword tsaltSysVar	_asc_spacechr _asc_striph _back_color
syn keyword tsaltSysVar	_capture_fname _connect_str _dest_bs
syn keyword tsaltSysVar	_dial_pause _dial_time _dial_post
syn keyword tsaltSysVar	_dial_pref1 _dial_pref2 _dial_pref3
syn keyword tsaltSysVar	_dial_pref4 _dir_prog _down_dir
syn keyword tsaltSysVar	_entry_bbstype _entry_comment _entry_enum
syn keyword tsaltSysVar	_entry_name _entry_num _entry_logonname
syn keyword tsaltSysVar	_entry_pass _fore_color _image_file
syn keyword tsaltSysVar	_local_echo _mdm_hang_str _mdm_init_str
syn keyword tsaltSysVar	_no_connect1 _no_connect2 _no_connect3
syn keyword tsaltSysVar	_no_connect4 _no_connect5 _redial_stop
syn keyword tsaltSysVar	_scr_chk_key _script_dir _sound_on
syn keyword tsaltSysVar	_strip_high _swap_bs _telix_dir _up_dir
syn keyword tsaltSysVar	_usage_fname _zmodauto _zmod_rcrash
syn keyword tsaltSysVar	_zmod_scrash
"END PREDEFINED VARAIABLES

"TYPE
syn keyword tsaltType	str int
"END TYPE

"KEYWORDS
syn keyword tsaltStatement	goto break return continue
syn keyword tsaltConditional	if then else
syn keyword tsaltRepeat		while for do
"END KEYWORDS

syn keyword tsaltTodo contained	TODO

" the rest is pretty close to C -----------------------------------------

" String and Character constants
" Highlight special characters (those which have a backslash) differently
syn match tsaltSpecial		contained "\^\d\d\d\|\^."
syn region tsaltString		start=+"+  skip=+\\\\\|\\"+  end=+"+  contains=tsaltSpecial
syn match tsaltCharacter	"'[^\\]'"
syn match tsaltSpecialCharacter	"'\\.'"

"catch errors caused by wrong parenthesis
syn region tsaltParen		transparent start='(' end=')' contains=ALLBUT,tsaltParenError,tsaltIncluded,tsaltSpecial,tsaltTodo
syn match tsaltParenError		")"
syn match tsaltInParen		contained "[{}]"

hi link tsaltParenError		tsaltError
hi link tsaltInParen		tsaltError

"integer number, or floating point number without a dot and with "f".
syn match  tsaltNumber		"\<\d\+\(u\=l\=\|lu\|f\)\>"
"floating point number, with dot, optional exponent
syn match  tsaltFloat		"\<\d\+\.\d*\(e[-+]\=\d\+\)\=[fl]\=\>"
"floating point number, starting with a dot, optional exponent
syn match  tsaltFloat		"\.\d\+\(e[-+]\=\d\+\)\=[fl]\=\>"
"floating point number, without dot, with exponent
syn match  tsaltFloat		"\<\d\+e[-+]\=\d\+[fl]\=\>"
"hex number
syn match  tsaltNumber		"0x[0-9a-f]\+\(u\=l\=\|lu\)\>"
"syn match  cIdentifier	"\<[a-z_][a-z0-9_]*\>"

syn region tsaltComment		start="/\*"  end="\*/" contains=cTodo
syn match  tsaltComment		"//.*" contains=cTodo
syn match  tsaltCommentError	"\*/"

syn region tsaltPreCondit	start="^[ \t]*#[ \t]*\(if\>\|ifdef\>\|ifndef\>\|elif\>\|else\>\|endif\>\)"  skip="\\$"  end="$" contains=tsaltComment,tsaltString,tsaltCharacter,tsaltNumber,tsaltCommentError
syn region tsaltIncluded	contained start=+"+  skip=+\\\\\|\\"+  end=+"+
syn match  tsaltIncluded	contained "<[^>]*>"
syn match  tsaltInclude		"^[ \t]*#[ \t]*include\>[ \t]*["<]" contains=tsaltIncluded
"syn match  TelixSalyLineSkip	"\\$"
syn region tsaltDefine		start="^[ \t]*#[ \t]*\(define\>\|undef\>\)" skip="\\$" end="$" contains=ALLBUT,tsaltPreCondit,tsaltIncluded,tsaltInclude,tsaltDefine,tsaltInParen
syn region tsaltPreProc		start="^[ \t]*#[ \t]*\(pragma\>\|line\>\|warning\>\|warn\>\|error\>\)" skip="\\$" end="$" contains=ALLBUT,tsaltPreCondit,tsaltIncluded,tsaltInclude,tsaltDefine,tsaltInParen

" Highlight User Labels
syn region tsaltMulti	transparent start='?' end=':' contains=ALLBUT,tsaltIncluded,tsaltSpecial,tsaltTodo

syn sync ccomment tsaltComment


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_tsalt_syntax_inits")
  if version < 508
    let did_tsalt_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

	HiLink tsaltFunction		Statement
	HiLink tsaltSysVar		Type
	"HiLink tsaltLibFunc		UserDefFunc
	"HiLink tsaltConstants		Type
	"HiLink tsaltFuncArg		Type
	"HiLink tsaltOperator		Operator
	"HiLink tsaltLabel		Label
	"HiLink tsaltUserLabel		Label
	HiLink tsaltConditional		Conditional
	HiLink tsaltRepeat		Repeat
	HiLink tsaltCharacter		SpecialChar
	HiLink tsaltSpecialCharacter	SpecialChar
	HiLink tsaltNumber		Number
	HiLink tsaltFloat		Float
	HiLink tsaltCommentError	tsaltError
	HiLink tsaltInclude		Include
	HiLink tsaltPreProc		PreProc
	HiLink tsaltDefine		Macro
	HiLink tsaltIncluded		tsaltString
	HiLink tsaltError		Error
	HiLink tsaltStatement		Statement
	HiLink tsaltPreCondit		PreCondit
	HiLink tsaltType		Type
	HiLink tsaltString		String
	HiLink tsaltComment		Comment
	HiLink tsaltSpecial		Special
	HiLink tsaltTodo		Todo

  delcommand HiLink
endif

let b:current_syntax = "tsalt"

let &cpo = s:cpo_save
unlet s:cpo_save
" vim: ts=8
