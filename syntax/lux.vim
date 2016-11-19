"
" Vim syntax file for lux files
"
if exists("b:current_syntax")
	finish
endif

syn keyword kkeyword cleanup timeout sleep say
syn keyword kkeyword doc doc0 doc1 doc2 doc3 doc4 doc5
syn keyword kkeyword loop endloop
syn keyword kkeyword macro endmacro
syn keyword kkeyword invoke progress
syn keyword kkeyword shell endshell

syn keyword kmetacmd my local global config include

" comments
syn region rcomment start='#' end='$'

hi def link kkeyword Statement
hi def link kmetacmd Identifier
hi def link rcomment Comment

let b:current_syntax = "lux"
