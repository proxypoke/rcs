" Name:		KOS-MOS vim colorscheme
" Author:	slowpoke <mail at slowpoke dot io>
" License:	WTFPLv2
" Version:	0.1 (Work in Progress)
" About:	A colorscheme inspired by and in dedication to the lovely female
" 			android from the Xenosaga series.

" some boilerplate
set background=dark
highlight clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "kosmos"

" Text
hi Normal		ctermfg=Blue
hi Identifier	ctermfg=Darkblue
hi Statement	ctermfg=Darkblue
hi Comment		ctermfg=Cyan
hi Type			ctermfg=White
hi Constant		ctermfg=Yellow
hi Number		ctermfg=Red
hi PreProc		ctermfg=190


" Highlights
hi Visual		cterm=reverse

" Interface
hi LineNr		ctermfg=Lightblue
hi CursorLineNr	ctermfg=Red
hi Colorcolumn	ctermbg=Yellow

" Folding
hi Folded		cterm=bold,underline ctermfg=Red ctermbg=None 
