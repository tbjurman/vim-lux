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
syn keyword luxTodo contained TODO FIXME XXX NOTE
syn region rcomment start='#' end='$' contains=luxTodo

" strings
syn region luxString start=+"+ skip=+\\\\\|\\"+ end=+"+
syn region luxString start=+'+ skip=+\\\\\|\\'+ end=+'+

" numbers
syn match luxNumber /\<[+-]\=\d\+\>/

" send
syn region luxSend start="^\s*[!~]" end="$"

" match
syn region luxMatch start="^\s*?" end="$"
syn region luxMatch start=+^\s*"""?+ end=+"""+

" slow sync to handle multi line matches
syn sync minlines=1000

" highlighting

hi def link kkeyword Statement
hi def link kmetacmd Identifier
hi def link rcomment Comment
hi def link luxTodo Todo
hi def link luxString String
hi def link luxNumber Number
hi def link luxSend ModeMsg
hi def link luxMatch Question

let b:current_syntax = "lux"
