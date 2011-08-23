" Vim syntax file
" Language: hints
" Maintainer: jwm
" Latest Revision: 26 January 2010

" I'm pretty certain some of these matches could be done better, but they seem
" to work alright for now.
"
" If you wanted some sort of autodetect of quix files, the easiest way I've
" found to do that is to name your quix files ending in .quix and then add the
" following line in ~/.vim/ftdetect/quix.vim:
"
"     au BufRead,BufNewFile *.quix set ft=quix
"
" But I think it's better and simpler to just add a modeline at the end of
" your quix files, like so:
"
"     > vim:ft=quix:
"

if exists("b:current_syntax")
  finish
endif

syn keyword     hintTodo      TODO contained
syn match hintCommentL '^/////[^$]*$' contains=hintTodo
syn match hintDescription ' (.*)$'


hi def link hintCommentL    Comment
"hi def link hintDescription String     "red
"hi def link hintDescription Statement  "green
hi def link hintDescription Type
hi def link hintTodo        Todo

let b:current_syntax = "hint"

