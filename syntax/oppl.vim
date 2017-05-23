" Vim syntax file
" Language: OpenPPL
" Maintainer: Kenneth Chen
" Latest Revision: 28 Aug 2014

syn keyword pplConditional WHEN when AND and OR or NOT not
syn keyword pplOperator Sitout SITOUT Return RETURN Force FORCE Others OTHERS set
syn keyword pplFixedActions BetMax RaiseMax RAISEMAX Allin BetPot RaisePot BetThreeFourthPot RaiseThreeFourthPot BetTwoThirdPot RaiseTwoThirdPot BetHalfPot RaiseHalfPot BetThirdPot RaiseThirdPot BetFourthPot RaiseFourthPot Bet Raise RAISE BetMin RaiseMin Call CALL Check Fold Beep RaiseTo RAISETO RaiseBy RAISEBY True False
syn match   pplComment '//.*'
syn match   pplNumber '\<\d\+\>'

syn match   pplHandlist 'list[a-zA-Z0-9_]*'
syn match   pplHandlist2 'hand\$[a-zA-Z0-9_]*'
syn match   pplUser 'user\$[a-zA-Z0-9_]*'

syn keyword pplFunction CUSTOM LISTS SYMBOLS PREFLOP FLOP TURN RIVER
syn match pplFunction2 "##.*$"
syn match   pplFuncMy 'f\$[a-zA-Z0-9_]*'

hi def link  pplOperator	Operator
hi def link  pplConditional	Conditional

hi def link  pplFixedActions NonText

hi def link  pplHandlist	Define
hi def link  pplHandlist2	Define
hi def link  pplUser	Define

hi def link  pplComment	    Comment
hi def link  pplNumber	    Number

hi def link  pplFunction2 Function
hi def link  pplFunction	Function
hi def link  pplFuncMy Function
