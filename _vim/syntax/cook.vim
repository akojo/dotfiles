" Vim syntax file
" Language:	Cook
" Maintainer:	Meikel Brandmeyer <mb at kotka.de>
" Last Change:	2007 Feb 18

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn match	cookPreproc	"#\(include\(-cooked\(-nowarn\)\?\)\?\)"
syn match	cookPreproc	"#\(if\|endif\|pragma\|include\)"

syn keyword	cookConditional	if then else

syn keyword	cookRepeat	loop

syn keyword	cookPreDefVars	__FILE__ __LINE__ __FUNCTION__
syn keyword	cookPreDefVars	arg command-line-goals graph_leaf_file
syn keyword	cookPreDefVars	graph_exterior_file graph_interior_file
syn keyword	cookPreDefVars	graph_leaf_pattern graph_exterior_pattern
syn keyword	cookPreDefVars	graph_interior_file need parallel_hosts
syn keyword	cookPreDefVars	parallel_jobs parallel_rsh search_list
syn keyword	cookPreDefVars	self target targets thread-id younger
syn keyword	cookPreDefVars	version
syn match	cookPreDefVars	"@\d"

" Builtin functions
syn keyword	cookFunction	addprefix addsuffix and basename cando
syn keyword	cookFunction	catenate collect_lines collect cook count
syn keyword	cookFunction	dirname dir dos-path downcase
syn keyword	cookFunction	entryname execute exists exists-symlink
syn keyword	cookFunction	expr filter_out filter find_command
syn keyword	cookFunction	findstring firstword fromto getenv glob
syn keyword	cookFunction	head home in interior_files join leaf_files
syn keyword	cookFunction	matches match_mask mtime mtime-seconds
syn keyword	cookFunction	notdir not operating_system options
syn keyword	cookFunction	pathname patsubst prepost print quote
syn keyword	cookFunction	read_lines readlink read relative_dirname
syn keyword	cookFunction	resolve shell sort_newest sort split stringset
syn keyword	cookFunction	stripdot strip substr subst suffix tail
syn keyword	cookFunction	un-dos-path unsplit upcase uptodate wildcard
syn keyword	cookFunction	word words write

" Library functions
" FIXME: Why do we have to move "or" and "defined" here?
syn match	cookFunction	"\<\(defined-or-\(default\|null\)\|or\|defined\)"
syn keyword	cookFunction	variable_by_path

syn match	cookVariable	"\(\_^\|\<\)\w\+\s*\ze="

syn match	cookPattern	"%\d\?"

syn match	cookRecipe	"^\S\+:" contains=cookPattern

syn keyword	cookOption	clearstat mkdir unlink fingerprint
syn keyword	cookOption	noclearstat nomkdir nounlink nofingerprint
syn keyword	cookOption	time-adjust cascade
syn keyword	cookOption	notime-adjust nocascade

syn keyword	cookTodo	TODO FIXME XXX Note
syn region	cookComment	start=+/\*+ end=+\*/+ contains=cookTodo

syn region	cookString	start=+\(\_^\|[^\\]\)\zs"+ end=+"+ skip=+\\"+ contains=cookPattern
syn region	cookString	start=+\(\_^\|[^\\]\)\zs'+ end=+'+ skip=+\\'+ contains=cookPattern
" Escaped strings
syn region      cookString      start=+\\"+ end=+\\"+ skip=+[^\\]"+ contains=cookPattern
syn region      cookString      start=+\\'+ end=+\\'+ skip=+[^\\]'+ contains=cookPattern

syn keyword	cookStatement	return loopstop set setenv cascade
syn keyword	cookStatement	fail function local

syn cluster	cookFCGroup	contains=cookFunCall,cookStatement,cookString,cookPreDefVars,cookComment,cookFunction,cookPattern
syn region	cookFunCall	matchgroup=Delimiter start=+\[+ end=+\]+ contains=@cookFCGroup matchgroup=NONE

syn cluster	cookCommentGroup contains=cookTodo

syn sync fromstart

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link	cookPreproc	Preproc
hi def link	cookPreDefVars	Constant
hi def link	cookFunction	Function
hi def link	cookPattern	Type
hi def link	cookStatement	Statement
hi def link	cookConditional	Conditional
hi def link	cookRepeat	Repeat
hi def link	cookRecipe	Function
hi def link	cookComment	Comment
hi def link	cookTodo	Todo
hi def link	cookString	String
hi def link	cookVariable	Identifier
hi def link	cookOption	Structure

let b:current_syntax = "cook"
