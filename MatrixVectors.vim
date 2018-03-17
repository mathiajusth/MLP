let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <expr> <Down> pumvisible() ? "\" : "\<Down>"
inoremap <expr> <S-Tab> pumvisible() ? "\" : "\<S-Tab>"
inoremap <expr> <Up> pumvisible() ? "\" : "\<Up>"
imap <Nul> <C-Space>
inoremap <silent> <Plug>NERDCommenterInsert  <BS>:call NERDComment('i', "insert")
nnoremap  :noh 
map  <Plug>(ctrlp)
nnoremap  d :YcmShowDetailedDiagnostic
nmap  hp <Plug>GitGutterPreviewHunk
nmap  hr <Plug>GitGutterUndoHunk:echomsg ' hr is deprecated. Use  hu'
nmap  hu <Plug>GitGutterUndoHunk
nmap  ca <Plug>NERDCommenterAltDelims
xmap  cu <Plug>NERDCommenterUncomment
nmap  cu <Plug>NERDCommenterUncomment
xmap  cb <Plug>NERDCommenterAlignBoth
nmap  cb <Plug>NERDCommenterAlignBoth
xmap  cl <Plug>NERDCommenterAlignLeft
nmap  cl <Plug>NERDCommenterAlignLeft
nmap  cA <Plug>NERDCommenterAppend
xmap  cy <Plug>NERDCommenterYank
nmap  cy <Plug>NERDCommenterYank
xmap  cs <Plug>NERDCommenterSexy
nmap  cs <Plug>NERDCommenterSexy
xmap  ci <Plug>NERDCommenterInvert
nmap  ci <Plug>NERDCommenterInvert
nmap  c$ <Plug>NERDCommenterToEOL
xmap  cn <Plug>NERDCommenterNested
nmap  cn <Plug>NERDCommenterNested
xmap  cm <Plug>NERDCommenterMinimal
nmap  cm <Plug>NERDCommenterMinimal
xmap  c  <Plug>NERDCommenterToggle
nmap  c  <Plug>NERDCommenterToggle
xmap  cc <Plug>NERDCommenterComment
nmap  cc <Plug>NERDCommenterComment
noremap  g :Ack! ''<Left>
nnoremap  s :CtrlP
nmap  f :NERDTree 
vmap  '  c 
nmap  '  c 
nmap  vk <Plug>(submode-before-entering:resize:with: vk)<Plug>(submode-before-entering:resize)<Plug>(submode-enter:resize)
nmap  vj <Plug>(submode-before-entering:resize:with: vj)<Plug>(submode-before-entering:resize)<Plug>(submode-enter:resize)
nmap  	 <Plug>(submode-before-entering:tab-switching:with: 	)<Plug>(submode-before-entering:tab-switching)<Plug>(submode-enter:tab-switching)
nnoremap  vs :vsp
nnoremap  hs :sp
nnoremap  P "+P
vnoremap  P "+P
nnoremap  Y "+Y
vnoremap  Y "+Y
nnoremap  p "+p
vnoremap  p "+p
nnoremap  y "+y
vnoremap  y "+y
nnoremap  qq :qa
nnoremap  q :q
nnoremap  w :w
nnoremap , 
map <Shift>v V
nmap [c <Plug>GitGutterPrevHunk
nmap ]c <Plug>GitGutterNextHunk
xmap ac <Plug>GitGutterTextObjectOuterVisual
omap ac <Plug>GitGutterTextObjectOuterPending
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nnoremap giw "xyiw:Ack! ''<Left>x
nnoremap gi" "xyi":Ack! ''<Left>x
nnoremap gi' "xyi':Ack! ''<Left>x
xmap ic <Plug>GitGutterTextObjectInnerVisual
omap ic <Plug>GitGutterTextObjectInnerPending
nnoremap riw "xyiw:%s/x//gc<Left><Left><Left>
nnoremap siw "+yiw:CtrlP<Insert>
nnoremap si" "+yi":CtrlP<Insert>
nnoremap si' "+yi':CtrlP<Insert>
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nnoremap <silent> <Plug>GitGutterPreviewHunk :GitGutterPreviewHunk
nnoremap <silent> <Plug>GitGutterUndoHunk :GitGutterUndoHunk
nnoremap <silent> <Plug>GitGutterStageHunk :GitGutterStageHunk
nnoremap <silent> <expr> <Plug>GitGutterPrevHunk &diff ? '[c' : ":\execute v:count1 . 'GitGutterPrevHunk'\"
nnoremap <silent> <expr> <Plug>GitGutterNextHunk &diff ? ']c' : ":\execute v:count1 . 'GitGutterNextHunk'\"
xnoremap <silent> <Plug>GitGutterTextObjectOuterVisual :call gitgutter#hunk#text_object(0)
xnoremap <silent> <Plug>GitGutterTextObjectInnerVisual :call gitgutter#hunk#text_object(1)
onoremap <silent> <Plug>GitGutterTextObjectOuterPending :call gitgutter#hunk#text_object(0)
onoremap <silent> <Plug>GitGutterTextObjectInnerPending :call gitgutter#hunk#text_object(1)
nnoremap <silent> <Plug>(ale_go_to_definition_in_tab) :ALEGoToDefinitionInTab
nnoremap <silent> <Plug>(ale_go_to_definition) :ALEGoToDefinition
nnoremap <silent> <Plug>(ale_fix) :ALEFix
nnoremap <silent> <Plug>(ale_detail) :ALEDetail
nnoremap <silent> <Plug>(ale_lint) :ALELint
nnoremap <silent> <Plug>(ale_reset_buffer) :ALEResetBuffer
nnoremap <silent> <Plug>(ale_disable_buffer) :ALEDisableBuffer
nnoremap <silent> <Plug>(ale_enable_buffer) :ALEEnableBuffer
nnoremap <silent> <Plug>(ale_toggle_buffer) :ALEToggleBuffer
nnoremap <silent> <Plug>(ale_reset) :ALEReset
nnoremap <silent> <Plug>(ale_disable) :ALEDisable
nnoremap <silent> <Plug>(ale_enable) :ALEEnable
nnoremap <silent> <Plug>(ale_toggle) :ALEToggle
nnoremap <silent> <Plug>(ale_last) :ALELast
nnoremap <silent> <Plug>(ale_first) :ALEFirst
nnoremap <silent> <Plug>(ale_next_wrap) :ALENextWrap
nnoremap <silent> <Plug>(ale_next) :ALENext
nnoremap <silent> <Plug>(ale_previous_wrap) :ALEPreviousWrap
nnoremap <silent> <Plug>(ale_previous) :ALEPrevious
nnoremap <silent> <Plug>(ctrlp) :CtrlP
xnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("x", "Uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("n", "Uncomment")
xnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("x", "AlignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("n", "AlignBoth")
xnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("x", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("n", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAppend :call NERDComment("n", "Append")
xnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("x", "Yank")
nnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("n", "Yank")
xnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("x", "Sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("n", "Sexy")
xnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("x", "Invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("n", "Invert")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment("n", "ToEOL")
xnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("x", "Nested")
nnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("n", "Nested")
xnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("x", "Minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("n", "Minimal")
xnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("x", "Toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("n", "Toggle")
xnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("x", "Comment")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("n", "Comment")
nnoremap <Plug>(submode-rhs:resize:for:k) >
nmap <Plug>(submode-prefix:resize)     k <Plug>(submode-rhs:resize:for:k)<Plug>(submode-enter:resize)
nnoremap <Plug>(submode-before-entering:resize:with: vk) >
nnoremap <Plug>(submode-rhs:resize:for:j) <
nmap <Plug>(submode-prefix:resize)     j <Plug>(submode-rhs:resize:for:j)<Plug>(submode-enter:resize)
nmap <Plug>(submode-prefix:resize)      <Plug>(submode-leave:resize)
nmap <Plug>(submode-enter:resize) <Plug>(submode-before-action:resize)<Plug>(submode-prefix:resize)     
nnoremap <Plug>(submode-before-entering:resize:with: vj) <
nnoremap <Plug>(submode-rhs:resize:for:) <Nop>
nmap <Plug>(submode-prefix:resize)      <Plug>(submode-rhs:resize:for:)<Plug>(submode-leave:resize)
nnoremap <Plug>(submode-rhs:tab-switching:for:	) gt
nmap <Plug>(submode-prefix:tab-switching)     	 <Plug>(submode-rhs:tab-switching:for:	)<Plug>(submode-enter:tab-switching)
nmap <Plug>(submode-prefix:tab-switching)      <Plug>(submode-leave:tab-switching)
nmap <Plug>(submode-enter:tab-switching) <Plug>(submode-before-action:tab-switching)<Plug>(submode-prefix:tab-switching)     
nnoremap <Plug>(submode-before-entering:tab-switching:with: 	) gt
nnoremap <Plug>(submode-rhs:tab-switching:for:) <Nop>
nmap <Plug>(submode-prefix:tab-switching)      <Plug>(submode-rhs:tab-switching:for:)<Plug>(submode-leave:tab-switching)
inoremap <expr> 	 pumvisible() ? "\" : "\	"
inoremap (;	 ();<Left><Left>
inoremap (	 ()<Left>
inoremap (; (0i);O
inoremap ( (0i)O
inoremap ;ar ->
inoremap [;	 [];<Left><Left>
inoremap [	 []<Left>
inoremap [; [0i];O
inoremap [ [0i]O
inoremap {;	 {};<Left><Left>
inoremap {	 {}<Left>
inoremap {; {0i};O
inoremap { {0i}O
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set balloonexpr=ale#balloon#Expr()
set completefunc=youcompleteme#CompleteFunc
set completeopt=preview,menuone
set cpoptions=aAceFsB
set fileencodings=ucs-bom,utf-8,default,latin1
set grepprg=ag\ --nogroup\ --nocolor
set helplang=en
set hlsearch
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,~/.vim/bundle/Vundle.vim,~/.vim/bundle/YouCompleteMe,~/.vim/bundle/nerdcommenter,~/.vim/bundle/idris-vim,~/.vim/bundle/vim-flow,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/ale,~/.vim/bundle/the_silver_searcher,~/.vim/bundle/ack.vim,~/.vim/bundle/vim-submode,~/.vim/bundle/vim-gitgutter,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after,~/.vim/bundle/Vundle.vim,~/.vim/bundle/Vundle.vim/after,~/.vim/bundle/YouCompleteMe/after,~/.vim/bundle/nerdcommenter/after,~/.vim/bundle/idris-vim/after,~/.vim/bundle/vim-flow/after,~/.vim/bundle/ctrlp.vim/after,~/.vim/bundle/ale/after,~/.vim/bundle/the_silver_searcher/after,~/.vim/bundle/ack.vim/after,~/.vim/bundle/vim-submode/after,~/.vim/bundle/vim-gitgutter/after
set shiftwidth=2
set shortmess=filnxtToOc
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=2
set updatetime=250
set wildignore=*.ibc
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/programming/idris/MLP
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 DataMatrixVectors.idr
badd +1 DataMatrices.idr
badd +1 DataVectors.idr
badd +5 DataFin.idr
badd +0 DataIndexes.idr
badd +0 temVect
badd +1 tempVect.idr
argglobal
silent! argdel *
$argadd DataMatrixVectors.idr
set stal=2
edit DataMatrixVectors.idr
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
nnoremap <buffer> <silent> \h :call IdrisShowDoc()
nnoremap <buffer> <silent> \i 0:call IdrisResponseWin()
nnoremap <buffer> <silent> \mc :call IdrisMakeCase()
nnoremap <buffer> <silent> \w 0:call IdrisMakeWith()
nnoremap <buffer> <silent> \e :call IdrisEval()
nnoremap <buffer> <silent> \l :call IdrisMakeLemma()
nnoremap <buffer> <silent> \p :call IdrisProofSearch(1)
nnoremap <buffer> <silent> \o :call IdrisProofSearch(0)
nnoremap <buffer> <silent> \f :call IdrisRefine()
nnoremap <buffer> <silent> \md 0:call search(":")b:call IdrisAddClause(1)w
nnoremap <buffer> <silent> \m :call IdrisAddMissing()
nnoremap <buffer> <silent> \b 0:call IdrisAddClause(0)
nnoremap <buffer> <silent> \d 0:call search(":")b:call IdrisAddClause(0)w
nnoremap <buffer> <silent> \c :call IdrisCaseSplit()
nnoremap <buffer> <silent> \r :call IdrisReload(0)
nnoremap <buffer> <silent> \t :call IdrisShowType()
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:{-,mb:-,ex:-},:|||,:--
setlocal commentstring=--%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'idris'
setlocal filetype=idris
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=IdrisFold(v:lnum)
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetIdrisIndent()
setlocal indentkeys=!^F,o,O,}
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,?,'
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'idris'
setlocal syntax=idris
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 4 - ((3 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 08|
tabedit DataMatrices.idr
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
nnoremap <buffer> <silent> \h :call IdrisShowDoc()
nnoremap <buffer> <silent> \i 0:call IdrisResponseWin()
nnoremap <buffer> <silent> \mc :call IdrisMakeCase()
nnoremap <buffer> <silent> \w 0:call IdrisMakeWith()
nnoremap <buffer> <silent> \e :call IdrisEval()
nnoremap <buffer> <silent> \l :call IdrisMakeLemma()
nnoremap <buffer> <silent> \p :call IdrisProofSearch(1)
nnoremap <buffer> <silent> \o :call IdrisProofSearch(0)
nnoremap <buffer> <silent> \f :call IdrisRefine()
nnoremap <buffer> <silent> \md 0:call search(":")b:call IdrisAddClause(1)w
nnoremap <buffer> <silent> \m :call IdrisAddMissing()
nnoremap <buffer> <silent> \b 0:call IdrisAddClause(0)
nnoremap <buffer> <silent> \d 0:call search(":")b:call IdrisAddClause(0)w
nnoremap <buffer> <silent> \c :call IdrisCaseSplit()
nnoremap <buffer> <silent> \r :call IdrisReload(0)
nnoremap <buffer> <silent> \t :call IdrisShowType()
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:{-,mb:-,ex:-},:|||,:--
setlocal commentstring=--%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'idris'
setlocal filetype=idris
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=IdrisFold(v:lnum)
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetIdrisIndent()
setlocal indentkeys=!^F,o,O,}
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,?,'
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'idris'
setlocal syntax=idris
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 16 - ((15 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 0
tabedit DataVectors.idr
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
nnoremap <buffer> <silent> \h :call IdrisShowDoc()
nnoremap <buffer> <silent> \i 0:call IdrisResponseWin()
nnoremap <buffer> <silent> \mc :call IdrisMakeCase()
nnoremap <buffer> <silent> \w 0:call IdrisMakeWith()
nnoremap <buffer> <silent> \e :call IdrisEval()
nnoremap <buffer> <silent> \l :call IdrisMakeLemma()
nnoremap <buffer> <silent> \p :call IdrisProofSearch(1)
nnoremap <buffer> <silent> \o :call IdrisProofSearch(0)
nnoremap <buffer> <silent> \f :call IdrisRefine()
nnoremap <buffer> <silent> \md 0:call search(":")b:call IdrisAddClause(1)w
nnoremap <buffer> <silent> \m :call IdrisAddMissing()
nnoremap <buffer> <silent> \b 0:call IdrisAddClause(0)
nnoremap <buffer> <silent> \d 0:call search(":")b:call IdrisAddClause(0)w
nnoremap <buffer> <silent> \c :call IdrisCaseSplit()
nnoremap <buffer> <silent> \r :call IdrisReload(0)
nnoremap <buffer> <silent> \t :call IdrisShowType()
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:{-,mb:-,ex:-},:|||,:--
setlocal commentstring=--%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'idris'
setlocal filetype=idris
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=IdrisFold(v:lnum)
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetIdrisIndent()
setlocal indentkeys=!^F,o,O,}
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,?,'
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'idris'
setlocal syntax=idris
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 14 - ((13 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 04|
tabedit DataIndexes.idr
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
nnoremap <buffer> <silent> \h :call IdrisShowDoc()
nnoremap <buffer> <silent> \i 0:call IdrisResponseWin()
nnoremap <buffer> <silent> \mc :call IdrisMakeCase()
nnoremap <buffer> <silent> \w 0:call IdrisMakeWith()
nnoremap <buffer> <silent> \e :call IdrisEval()
nnoremap <buffer> <silent> \l :call IdrisMakeLemma()
nnoremap <buffer> <silent> \p :call IdrisProofSearch(1)
nnoremap <buffer> <silent> \o :call IdrisProofSearch(0)
nnoremap <buffer> <silent> \f :call IdrisRefine()
nnoremap <buffer> <silent> \md 0:call search(":")b:call IdrisAddClause(1)w
nnoremap <buffer> <silent> \m :call IdrisAddMissing()
nnoremap <buffer> <silent> \b 0:call IdrisAddClause(0)
nnoremap <buffer> <silent> \d 0:call search(":")b:call IdrisAddClause(0)w
nnoremap <buffer> <silent> \c :call IdrisCaseSplit()
nnoremap <buffer> <silent> \r :call IdrisReload(0)
nnoremap <buffer> <silent> \t :call IdrisShowType()
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:{-,mb:-,ex:-},:|||,:--
setlocal commentstring=--%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'idris'
setlocal filetype=idris
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=IdrisFold(v:lnum)
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetIdrisIndent()
setlocal indentkeys=!^F,o,O,}
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,?,'
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'idris'
setlocal syntax=idris
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 2 - ((1 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
tabedit tempVect.idr
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
nnoremap <buffer> <silent> \h :call IdrisShowDoc()
nnoremap <buffer> <silent> \i 0:call IdrisResponseWin()
nnoremap <buffer> <silent> \mc :call IdrisMakeCase()
nnoremap <buffer> <silent> \w 0:call IdrisMakeWith()
nnoremap <buffer> <silent> \e :call IdrisEval()
nnoremap <buffer> <silent> \l :call IdrisMakeLemma()
nnoremap <buffer> <silent> \p :call IdrisProofSearch(1)
nnoremap <buffer> <silent> \o :call IdrisProofSearch(0)
nnoremap <buffer> <silent> \f :call IdrisRefine()
nnoremap <buffer> <silent> \md 0:call search(":")b:call IdrisAddClause(1)w
nnoremap <buffer> <silent> \m :call IdrisAddMissing()
nnoremap <buffer> <silent> \b 0:call IdrisAddClause(0)
nnoremap <buffer> <silent> \d 0:call search(":")b:call IdrisAddClause(0)w
nnoremap <buffer> <silent> \c :call IdrisCaseSplit()
nnoremap <buffer> <silent> \r :call IdrisReload(0)
nnoremap <buffer> <silent> \t :call IdrisShowType()
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:{-,mb:-,ex:-},:|||,:--
setlocal commentstring=--%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'idris'
setlocal filetype=idris
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=IdrisFold(v:lnum)
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetIdrisIndent()
setlocal indentkeys=!^F,o,O,}
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,?,'
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'idris'
setlocal syntax=idris
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 11 - ((10 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 0
tabnext 3
set stal=1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOc
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
