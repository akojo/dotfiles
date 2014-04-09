"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File: "/home/caciano/.vim/dante.vim"
" Created: "Thu, 23 May 2002 00:12:20 -0300 (caciano)"
" Updated: "Sat, 24 Aug 2002 14:04:21 -0300 (caciano)"
" Copyright (C) 2002, Caciano Machado <caciano@inf.ufrgs.br>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorscheme Option:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi clear
if exists("syntax on")
	syntax reset
endif
let g:colors_name = "dante"

" General colors
hi Cursor	guifg=bg guibg=fg
hi CursorColumn ctermbg=lightgray ctermfg=darkgray
hi DiffAdd	term=bold ctermbg=17 guibg=navyblue
hi DiffChange	term=bold ctermbg=235 guibg=cyan4
hi DiffDelete	term=bold ctermbg=233 ctermfg=124 gui=bold guifg=lightblue guibg=firebrick4
hi DiffText	term=reverse ctermbg=052 gui=bold guifg=lightred guibg=red3
hi Directory	cterm=NONE ctermfg=darkmagenta guifg=royalblue
hi ErrorMsg	term=standout ctermfg=white ctermbg=red guifg=white guibg=red3
hi FoldColumn	term=standout cterm=underline ctermfg=darkblue ctermbg=black guifg=royalblue3 guibg=white
hi Folded	term=standout cterm=underline ctermfg=180 ctermbg=024 guifg=peachpuff3 guibg=gray20
hi IncSearch	term=reverse cterm=reverse gui=reverse,bold guifg=darkgoldenrod2
hi lCursor	guifg=bg guibg=fg
hi LineNr	term=underline ctermfg=darkgray guifg=ivory4 guibg=gray4
hi MatchParen   ctermbg=darkblue ctermfg=lightgray
hi ModeMsg	term=bold cterm=bold gui=bold
hi MoreMsg	term=bold ctermfg=green gui=bold guifg=olivedrab1
hi NonText	term=bold ctermfg=darkgray guibg=gray3 guifg=gray20
hi Normal	ctermfg=180 guifg=peachpuff3 guibg=black
hi Pmenu        ctermbg=darkmagenta ctermfg=white
hi PmenuSel     ctermbg=magenta ctermfg=white
hi Question	term=standout ctermfg=green gui=bold guifg=olivedrab1
hi Search	ctermfg=232 ctermbg=yellow guifg=gray10 guibg=darkgoldenrod2
hi SpecialKey	term=bold ctermfg=darkgray guifg=gray30
hi SpellBad     ctermbg=088
hi SpellCap     ctermbg=darkcyan
hi SpellRare    ctermbg=089
hi SpellLocal   ctermbg=cyan
hi StatusLineNC	term=reverse cterm=reverse gui=reverse guifg=gray40
hi StatusLine	term=reverse cterm=reverse gui=reverse guifg=gray60
hi Title	term=bold ctermfg=126 gui=bold guifg=aquamarine
hi VertSplit	term=reverse cterm=reverse gui=bold,reverse guifg=gray40
hi VisualNOS	term=bold,underline cterm=bold,underline gui=bold,underline
hi Visual	term=bold,reverse ctermbg=gray ctermfg=black gui=bold guibg=gray40 guifg=black
hi WarningMsg	term=standout ctermfg=red gui=bold guifg=red3
hi WildMenu	term=standout ctermfg=black ctermbg=yellow guifg=black guibg=gold2

" syntax hi colors
hi Comment	term=bold ctermfg=238 guifg=gray30
hi PreProc	term=underline ctermfg=24 guifg=steelblue4
hi Constant	term=underline ctermfg=124 guifg=firebrick3
hi Type		term=underline ctermfg=70 gui=none guifg=chartreuse3
hi Statement	term=bold ctermfg=178 gui=none guifg=gold3
hi Identifier	term=underline ctermfg=64 guifg=darkolivegreen4
hi Ignore	term=bold ctermfg=darkgray guifg=gray45
hi Special	term=underline ctermfg=130 guifg=sienna
hi Error	term=reverse ctermfg=gray ctermbg=red guifg=gray guibg=red3
hi Todo		term=standout ctermfg=black ctermbg=yellow gui=bold guifg=gray10 guibg=yellow4
hi Underlined	term=underline cterm=underline ctermfg=darkblue gui=underline guifg=slateblue
hi Number	term=underline ctermfg=160 guifg=red2
" syntax hi links
hi link String		Constant
hi link Character	Constant
hi link Number		Constant
hi link Boolean		Constant
hi link Float		Number
hi link Function	Identifier
hi link Number		Constant
hi link Conditional	Statement
hi link Repeat		Statement
hi link Label		Statement
hi link Keyword		Statement
hi link Exception	Statement
hi link Operator	Statement
hi link Include		PreProc
hi link Define		PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef		Type
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment	Special
hi link Debug		Special
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
