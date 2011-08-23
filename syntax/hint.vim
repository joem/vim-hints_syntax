" Vim syntax file
" Language: hints
" Maintainer: jwm
" Latest Revision: 26 January 2010

" I'm pretty certain some of these matches could be done better, but they seem
" to work alright for now.

if exists("b:current_syntax")
  finish
endif

syn keyword     hintTodo      TODO contained
syn match hintCommentL '^/////[^$]*$' contains=hintTodo
syn match hintDescription ' (.*)$'


hi def link hintCommentL    Comment
hi def link hintDescription Type
hi def link hintTodo        Todo

let b:current_syntax = "hint"

