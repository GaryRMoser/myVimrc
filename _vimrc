"My REAL .vimrc
"
"       ____/\__              ____   ____.__                       
"      /   / /_/ _____ ___.__.\   \ /   /|__| ____________   ____  
"      \__/ / \ /     <   |  | \   Y   / |  |/     \_  __ \_/ ___\ 
"      / / /   \  Y Y  \___  |  \     /  |  |  Y Y  \  | \/\  \___ 
"     /_/ /__  /__|_|  / ____|   \___/   |__|__|_|  /__|    \___  >
"       \/   \/      \/\/                         \/            \/ 
"
" Notes"{{{  
"
" Global Marks:
" `P = myprj.md
" `S = erss.r
" `D = ersd.r
" `A = ersa.r
" `F = ersfa.r*
" `V = vim_ref.md
" `B = apdb.r
" `R = .Rprofile
"
" :map to view all key mappings
" :marks to view all marks
" :version to view all features & settings
"
" Consider remapping normal mode keys: <bs>, H
"
" for remappings, can use <leader> to refer to whatever
" key I have leader set to --increased flexibility
"
" Statusline Settings from: http://archive09.linux.com/feature/120126
"
" Disable keys using no operation
" inoremap <esc> <nop>
"
"Default .vimrc content:set nocompatible
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin
"
"set diffexpr=MyDiff()
"function MyDiff()
"  let opt = '-a --binary '
"  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"  let arg1 = v:fname_in
"  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"  let arg2 = v:fname_new
"  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
"  let arg3 = v:fname_out
"  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
"  let eq = ''
"  if $VIMRUNTIME =~ ' '
"    if &sh =~ '\<cmd'
"      let cmd = '"' . $VIMRUNTIME . '\diff"'
"      let eq = '""'
"    else
"      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"    endif
"  else
"    let cmd = $VIMRUNTIME . '\diff'
"  endif
"  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
"endfunction

"
"
"
"
"}}}
" Vundle  "{{{
set nocompatible
" Turn off for Vundle
filetype plugin on
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=c:/Program\ Files/Vim/vimfiles/bundle/Vundle.vim

"call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
call vundle#begin('C:/Program\ Files/Vim/vimfiles/bundle/')

" let Vundle manage Vundle (required)
"
" ------------------- plugin on GitHub repo -----------------------
Plugin 'gmarik/Vundle.vim'

" quick open web pages
" Plugin 'waiting-for-dev/vim-www'

Plugin 'bling/vim-airline'


" Vim-LaTeX
" -----------
Plugin 'vim-latex/vim-latex'

" Latex Suite
" --------------
"

" Nvim-R Plugin
" -----------------
"Plugin 'jalvesaq/Nvim-R'

" Old Vim-R-Plugin
" --------------------
""""don't use with 1.2-8: Plugin 'jcfaria/Vim-R-plugin'
""""don't use with 1.2-8: Plugin 'jalvesaq/R-Vim-runtime'
"""" Plugin 'https://github.com/jcfaria/Vim-R-plugin.git'

" NOTE: To revert to Vim-R-Plugin 1.2-8, do not use R-Vim-runtime
Plugin 'file:///C:/Users/gmoser/Documents/MyGits/Vim-R-plugin/'

" Surround Plugin
" -----------------
Plugin 'tpope/vim-surround'

" Pandoc - causes issues...?
" --------------------------
"Plugin 'vim-pandoc/vim-pandoc'
"Plugin 'vim-pandoc/vim-pandoc-syntax'

" RMarkdown
" ------------
Plugin 'vim-pandoc/vim-rmarkdown'

" Other Stuff
" --------------
" Plugin 'chrisbra/csv.vim'
" Plugin 'junegunn/vim-peekaboo'
" Plugin 'dietsche/vim-lastplace'
" Plugin 'junegunn/limelight.vim'
" Plugin 'tomasr/molokai'
" Plugin 'powerline/powerline'
" Plugin 'Shougo/unite.vim'
" Plugin 'junegunn/goyo.vim'
" Plugin 'cosminadrianpopescu/vim-sql-workbench'
" Plugin 'ervandew/supertab'
" Plugin 'jakedouglas/exuberant-ctags'
" Plugin 'kien/ctrlp.vim'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.;h
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Git Notes:"{{{

" set user name/email (should only have to do once after install):
"git config --global user.name "Gary Moser"
"git config --global user.email garyrmoser@gmail.com

" configure default text editor:
"git config --global core.editor vim

" configure diff tool:
" git config --global merge.tool vimdiff

" check settings:
" git config --list

" check specific key value:
"git config user.name

" get help:
" git help <verb>
" man git

" initialize a new Git project from directory of interest:
" git init

" start version-controlling existing files:
" git add _vimrc

" make initial commit:
" git commit -m 'initial version'

" clone an existing repositiory:
" git clone git://github.com/jcfaria/Vim-R-plugin

" check the status of files:
" git status

" add file to tracked files (e.g. README):
" git add README

" stage files in a dir:
" git add

" skip the staging step:
" git commit -a

" rename file:
" git mv file_from file_to

" view commit history - last 2:
" git log -2

" view commit history diffs:
" git log -p

" re-do a commit (overwrites previous commit):
" git commit --ammend

" unmodify a modified file:
" git status (for message)
" git checkout --<file>


"}}}

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Vundle should update helptags upon install/clean
" helptags c:/program\ files\ (x86)/vim/vimfiles/doc"}}}
" General Settings, Mappings, Abbrev "{{{

" Marks (how to set marks in VimScript?)
"  set mZ C:/Temp/test.txt

" Easier movement between tabs
" ----------------------------
" map <Leader>1 :bp<CR> ...doesn't load on startup...?
" map <Leader>2 :bn<CR>

" Backspace deletes backwards
" ---------------------------
" set bs=2

" Try Reducing Linespace to Improve Airline Appearance (def=1)
set linespace=0

" Highlight Color Column as Suggested Wrap Length (80)
" ----------------------------------------------------
":set colorcolumn=+1        " highlight column after 'textwidth'
":set colorcolumn=+1,+2,+3  " highlight three columns after 'textwidth'
"highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
set colorcolumn=75

" View Hidden Characters
" ----------------------
set list
set matchtime=2

" Show Whitespace (Insert Before Color Scheme)
" --------------------------------------------
"autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
"au InsertLeave * match ExtraWhitespace /\s\+$/

" Colorscheme
" -------------------
"colorscheme sift
"colorscheme lanox
colorscheme paintbox
"colorscheme neopro
"colorscheme mayansmoke
"colorscheme orangeocean256
"colorscheme synic
"colorscheme colorful256
"colorscheme oh-la-la
"colorscheme molokai
"colorscheme koehler
"colorscheme torte
"colorscheme pablo
"colorscheme zellner
"colorscheme ron
"colorscheme darkblue
"colorscheme murphy
"colorscheme slate
"colorscheme blue
"colorscheme default
"colorscheme delek
"colorscheme evening
"colorscheme peachpuff
"colorscheme elflord
"colorscheme desert
"colorscheme morning
"colorscheme shine

" Fold Indicator (+, -)
" ---------------------
"set foldcolumn=4

" Add System Clipboard to Unnamed Register Yanked Content
" -------------------------------------------------------
set clipboard+=unnamed

" Numbering & Relative Numbering
" ------------------------------
set nu
set relativenumber

" Set Encoding to UTF-8
" ---------------------
set encoding=utf-8

" Set Font
" --------
"set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI
"set guifont=Consolas_for_Powerline_FixedD:h11:cANSI
"set guifont=Ubuntu_Mono_derivative_Powerlin:h12:cAN
set guifont=Ubuntu_Mono_derivative_Powerlin:h12:cANSI

" Syntax Highlighting On
" ----------------------
syntax enable

" Enable Filetype Detection
" -------------------------
filetype indent on

set smartcase

" Set Spell Check On
" ------------------
" set spell

" Highlight Search Hits
" ---------------------
set hlsearch

" Indicate Folds Using Marker 
" ---------------------------
set foldmethod=marker

" Nbr Screen Lines to Use for Command Line (def=1)
" ------------------------------------------------
set cmdheight=1

" Do Not Unload Hidden Buffers
" ----------------------------
set hidden

" Always Have Status Line No Matter How Many Buffer Open
" ------------------------------------------------------
set laststatus=2

" Manual Status Line (Off -- Using Airline Instead)
" -------------------------------------------------
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" ?
set shiftwidth=3

" Nbr Spaces That Tab Represents
" ------------------------------
set softtabstop=3

" In Insert Mode Add Spaces for Tab
" ---------------------------------
set expandtab

" Show Menu With One or More Matches in Insert Mode
" -------------------------------------------------
set completeopt="menu,menuone,preview"

" Show Where Search Pattern Matches Are While Typing
" --------------------------------------------------
set incsearch

" Reload File if Changes Outside of Vim Detected
" ----------------------------------------------
set autoread

" Wild Menu Mode Command Line Menu Completion
" -------------------------------------------
set wildmenu

" Completion Mode Used with Wildchar
" ----------------------------------
"set wildmode=longest:full,full
set wildmode=longest:full,full

" Turns Off Wrap - Controls Formatting Behavior
" Remove Option to Auto-Wrap Using Textwidth
" ------------------------------------------
set formatoptions-=t
"set formatoptions+=t

" Increments Numbers or Letters Forward <C-a> or Backward <C-x>
" (only works for numeric)
" -------------------------------------------------------------
set nrformats="octal,hex,alpha"

" Persistent Undo On to 500 Levels
" --------------------------------
if exists("&undodir")
    set undofile
    let &undodir=&directory
    set undolevels=500
    set undoreload=500
endif

" Initialize Starting Dir
" -----------------------
cd C:/Users/gmoser/Documents/

" Auto Change Dir to Opened File's
" --------------------------------
set autochdir

" Add Path to Work Docs
" ---------------------
set path+=.,c:/users/gmoser/documents/csum/**

" Comma separated list of suffixes, which are used when searching for a file
" --------------------------------------------------------------------------
set suffixesadd=.R,.r,.py,.Rmd,.rmd,.md,.txt

" Map : to ; in Normal Mode
" -------------------------
nnoremap ; :

" Map ' to ; in Normal Mode
" -------------------------
nnoremap ' ;

" Set Map Leader <Leader> to ,
" ----------------------------
let mapleader = ","
"let mapleader = "\<space>"

" Set Map Local Leader <LocalLeader> to , (Mapping Local to Buffer)
" -----------------------------------------------------------------
let maplocalleader = ","

" Improve zz - Center and Scroll Up A Little
" ------------------------------------------
nnoremap zz zz15<C-E>

" Write File Shortcut
" -------------------
nnoremap <Leader>we :w<CR>

" Line Bubbling
" -------------
nnoremap <silent> <M-k> :m-2<CR>
nnoremap <silent> <M-j> :m+<CR>
xnoremap <silent> <M-k> :m-2<CR>gv=gv
xnoremap <silent> <M-j> :m'>+<CR>gv=gv

" Center Next Match
map n nzz
map N Nzz
" -----------------

" When Yanking in Insert Mode, Go to Last Character in Selection
" --------------------------------------------------------------
vnoremap <silent> y y`]

" When Putting in Normal, Vis Mode, Go to Final Put Character
" -----------------------------------------------------------
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" Ctrl-F2 to toggle menu
" ----------------------
map <silent> <C-F2> :if &guioptions =~# 'T' <Bar>
                         \set guioptions-=T <Bar>
                         \set guioptions-=m <bar>
                    \else <Bar>
                         \set guioptions+=T <Bar>
                         \set guioptions+=m <Bar>
                    \endif<CR> 

" Map F5 to Insert Current Timestamp in Normal & Insert Modes
" -----------------------------------------------------------
nnoremap <F5> "=strftime("%c")<CR>P
inoremap <F5> <C-R>=strftime("%c")<CR>

" Redraw Screen & Remove Highlighting
" -----------------------------------
nnoremap <silent> <C-l> :nohl<CR>:redrawstatus<CR><C-l>

" Edit, Source .vimrc
" -------------------
nnoremap <leader>ev :edit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Exit Insert Mode (aka "The Smash Escape!")...not sure I like this...
" ------------------------------------------
" inoremap jk <esc>
" inoremap kj <esc>

" Set Abbreviation for Email
" --------------------------
iabbrev @@ gmoser@csum.edu

" Map F3 to ROT13 Encoding for Current Buffer
" (!!!This slows down the computer enormously!!!)
" (...seems to bloat the undo file)
" -------------------------------------------
" map <F3> :% normal g??<CR>

" Map Sort Visual Selection to <Leader>s
" --------------------------------------
vnoremap <Leader>s :sort<CR>

" Increase/Decrease Indentation While Maintaining Selection
" ---------------------------------------------------------
vnoremap < <gv
vnoremap > >gv


"}}}
"Custom Functions  "{{{

"augroup customs
"   autocmd!
"   "autocmd FileType vim set keywordprg=:help
"   autocmd FileType vim nnoremap <buffer> <localleader>c I"<esc>
"augroup end

" TODO: make fn to clear all registers; e.g. qaq to clear reg a

" }}}
" Plugin-Specific Settings  "{{{ 

" Goyo  "{{{
"
" Width
" Goyo 120

" Height
" Goyo x30

" Both
" Goyo 120x30

" In percentage
" Goyo 120x50%

" With offsets
" Goyo 50%+25%x50%-25%

" }}}    
" vim-www  "{{{

" dictionary for urls
let g:www_urls = {
         \ 'vimcom'  : 'http://www.vim.org/communit\y.php',
         \ 'stratpl' : 'www.csum.edu/web/strategicplan',
         \ 'g?'      : 'https://www.google.com/search?q=',
         \ 'ggplot'  : 'http://docs.ggplot2.org/current/',
         \ 'r'       : 'http://www.r-project.org',
         \ 'task'    : 'https://cran.rstudio.com/',
         \ 'irsp'    : 'https://csyou.calstate.edu/groups/IRleaders/SitePages/Home.aspx',
         \ 'vsa'     : 'http://www.collegeportraits.org/admin/login',
         \ 'nsch'    : 'http://www.studentclearinghouse.org',
         \ 'ers'     : 'https://ds.calstate.edu/?svc=csyou.calstate.edu&re=%2fTools%2facademic-affairs%2fers%2fPages%2fdefault.aspx',
         \ 'csudb'   : 'www.calstate.edu/dashboard',
         \ 'csum'    : 'www.csum.edu',
         \ 'wasc'    : 'https://www.wascsenior.org/annualreport',
         \ 'ascii'   : 'http://www.patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something',
         \ 'csu'     : 'http://www.calstate.edu/',
         \ 'cm'      : 'http://www.calstate.edu/AcadAff/codedMemos/index.shtml',
         \ 'as'      : 'http://www.calstate.edu/as/',
         \ 'ipeds'   : 'http://nces.ed.gov/ipeds/',
         \ 'nsse'    : 'http://nsse.indiana.edu/',
         \ 'ded'     : 'http://asd.calstate.edu/ded/index.asp?aid=1',
         \ 'ded.chg' : 'http://asd.calstate.edu/ded/index.asp?ded=7',
         \ 'gm'      : 'http://gmail.com',
         \ 'base'    : 'https://csum.campuslabs.com',
         \ 'air'     : 'https://airweb.org',
         \ 'w3'      : 'http://www.w3schools.com/',
         \ 'airline' : 'https://github.com/bling/vim-airline',
         \ 'su'      : 'http://superuser.com/questions/tagged/vim',
         \ 'csrde'   : 'http://csrde.ou.edu',
         \ 'pandoc'  : 'http://pandoc.org/README.html',
         \ 'sam'     : 'www.studentachievementmeasure.org',
         \ 'learn'   : 'http://learnvimscriptthehardway.stevelosh.com/chapters/27.html',
         \ 'li'      : 'www.lichess.org',
         \ 'vim'     : 'http://vim.org/',
         \ 'knitr'   : 'www.yihui.name/knitr/'
         \ }

let g:www_map_key=0
 
"}}}
" Pafdoc  "{{{

"""" nnoremap <leader>gq :%!pandoc -f html -t markdown <bar> pandoc -f markdown -t html<CR>
"""" vnoremap <leader>gq :!pandoc -f html -t markdown <bar> pandoc -f markdown -t html<CR>

" The mode can be changed on the fly using the *:PandocFolding* command.

" If you write a bang ('!') after the command, vim-pandoc will try to open
" the created file in its associated program. This behavior can be customized

" For example, some people prefer not to use folds, so they would want to
" disable the `folding` module, which creates folds for headers and some special
" cases. To disable the module they should put
"
"let g:pandoc#modules#disabled = ["folding"]
"
"}}}
" Limelight  "{{{
" Color name (:help cterm-colors) or ANSI code
"""" let g:limelight_conceal_ctermfg = 'gray'
"""" let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
"""" let g:limelight_conceal_guifg = 'DarkGray'
"""" let g:limelight_conceal_guifg = '#777777'

" Default\: 0.5
"""" let g:limelight_default_coefficient = 0.8

" Limelight\: Number of preceding/following paragraphs to include (default: 0)
"let g:limelight_paragraph_span = 1

" Limelight\: Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
"let g:limelight_bop = '^\s'
"let g:limelight_eop = '\ze\n^\s'

" Limelight\: Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
"let g:limelight_priority = -1

" Limelight\: call package limelight
" Limelight0.8
"
"
" Limelight Plugin Use 
"
"        Turn Limelight on
"    Limelight [0.0 ~ 1.0]
"        Turn Limelight off
"    Limelight!
"        Toggle Limelight
"    Limelight!! [0.0 ~ 1.0]
"
"}}}
" vim-r-plugin  "{{{
" 
" Vim-R-Plugin: https://github.com/jcfaria/Vim-R-plugin
"
" Vimcom package type in R: devtools::install_github("jalvesaq/VimCom")
"
" vim-r-plugin shortcuts  "{{{
"Menu entry                                Default shortcut
"Start/Close
"  . Start R (default)                                  \rf
"  . Start R (custom)                                   \rc
"  --------------------------------------------------------
"  . Close R (no save)                                  \rq
"  . Stop R                                          :RStop
"  --------------------------------------------------------
"
"Send
"  . File                                               \aa
"  . File (echo)                                        \ae
"  . File (open .Rout)                                  \ao
"  --------------------------------------------------------
"  . Block (cur)                                        \bb
"  . Block (cur, echo)                                  \be
"  . Block (cur, down)                                  \bd
"  . Block (cur, echo and down)                         \ba
"  --------------------------------------------------------
"  . Chunk (cur)                                        \cc
"  . Chunk (cur, echo)                                  \ce
"  . Chunk (cur, down)                                  \cd
"  . Chunk (cur, echo and down)                         \ca
"  . Chunk (from first to here)                         \ch
"  --------------------------------------------------------
"  . Function (cur)                                     \ff
"  . Function (cur, echo)                               \fe
"  . Function (cur and down)                            \fd
"  . Function (cur, echo and down)                      \fa
"  --------------------------------------------------------
"  . Selection                                          \ss
"  . Selection (echo)                                   \se
"  . Selection (and down)                               \sd
"  . Selection (echo and down)                          \sa
"  . Selection (evaluate and insert output in new tab)  \so
"  --------------------------------------------------------
"  . Paragraph                                          \pp
"  . Paragraph (echo)                                   \pe
"  . Paragraph (and down)                               \pd
"  . Paragraph (echo and down)                          \pa
"  --------------------------------------------------------
"  . Line                                                \l
"  . Line (and down)                                     \d
"  . Line (and new one)                                  \q
"  . Left part of line (cur)                       \r<Left>
"  . Right part of line (cur)                     \r<Right>
"  . Line (evaluate and insert the output as comment)    \o
"  --------------------------------------------------------
"
"Command
"  . List space                                         \rl
"  . Clear console                                      \rr
"  . Clear all                                          \rm
"  --------------------------------------------------------
"  . Print (cur)                                        \rp
"  . Names (cur)                                        \rn
"  . Structure (cur)                                    \rt
"  . View data.frame (cur)                              \rv
"  --------------------------------------------------------
"  . Arguments (cur)                                    \ra
"  . Example (cur)                                      \re
"  . Help (cur)                                         \rh
"  --------------------------------------------------------
"  . Summary (cur)                                      \rs
"  . Plot (cur)                                         \rg
"  . Plot and summary (cur)                             \rb
"  --------------------------------------------------------
"  . Set working directory (cur file path)              \rd
"  --------------------------------------------------------
"  . Sweave (cur file)                                  \sw
"  . Sweave and PDF (cur file)                          \sp
"  . Sweave, BibTeX and PDF (cur file) (Linux/Unix)     \sb
"  --------------------------------------------------------
"  . Knit (cur file)                                    \kn
"  . Knit and PDF (cur file)                            \kp
"  . Knit, BibTeX and PDF (cur file) (Linux/Unix)       \kb
"  . Knit and Beamer PDF (cur file) (only .Rmd)         \kl
"  . Knit and HTML (cur file, verbose) (only .Rmd)      \kh
"  . Spin (cur file) (only .R)                          \ks
"  --------------------------------------------------------
"  . Open PDF (cur file)                                \op
"  . Search forward (SyncTeX)                           \gp
"  . Go to LaTeX (SyncTeX)                              \gt
"  --------------------------------------------------------
"  . Build tags file (cur dir)                  :RBuildTags
"  --------------------------------------------------------
"
"Edit
"  . Insert "<-"                                          _
"  . Complete object name                              ^X^O
"  . Complete function arguments                       ^X^A
"  --------------------------------------------------------
"  . Indent (line)                                       ==
"  . Indent (selected lines)                              =
"  . Indent (whole buffer)                             gg=G
"  --------------------------------------------------------
"  . Toggle comment (line, sel)                         \xx
"  . Comment (line, sel)                                \xc
"  . Uncomment (line, sel)                              \xu
"  . Add/Align right comment (line, sel)                 \;
"  --------------------------------------------------------
"  . Go (next R chunk)                                  \gn
"  . Go (previous R chunk)                              \gN
"  --------------------------------------------------------
"
"Object Browser
"  . Show/Update                                        \ro
"  . Expand (all lists)                                 \r=
"  . Collapse (all lists)                               \r-
"  . Toggle (cur)                                     Enter
"  --------------------------------------------------------
"
"Help (plugin)
"Help (R)                                            :Rhelp
"  --------------------------------------------------------"}}}

" show args in omni-complete
let vimrplugin_show_args = 1

" change assignment mapping from _ to (Alt -)
let vimrplugin_assign_map = "<M-->"

" see if this enables showing fn args:
" NOTE: this makes \",ra" very lengthy, so don't enable
" let vimrplugin_listmethods = 1

" add args to be passed to R's source() function. For example:
" let vimrplugin_source_args = \"max.deparse.length = 300, echo = TRUE"

" show args in status line (!!!)
" preview win only shown if \"preview" also included in 'completeopt'
let vimrplugin_args_in_stline = 1

" time to wait for vimcom loading (5000 milliseconds=default)
" let vimrplugin_vimcom_wait = 10000

" hit space bar to send lines and selection to R (!!!)
vmap <Space> <Plug>REDSendSelection
nmap <Space> <Plug>RDSendLine

" Use Ctrl+Space to do omnicompletion:
   if has("gui_running")
       inoremap <C-Space> <C-x><C-o>
   else
       inoremap <Nul> <C-x><C-o>
   endif

" see if this improves indentation
let r_indent_align_args = 0

" colourise .Rout file
"qet Rout_more_colors = 1

"}}}
" vim-airline  "{{{

"let g:Powerline_symbols="fancy"

" turn on top statusline for buffers
let g:airline#extensions#tabline#enabled = 1

" turn off whitespace error checking
let g:airline#extensions#whitespace#enabled = 0

" from airline web documentation (fine-tuned configurability)
function! AirlineInit()
   let g:airline_section_a = airline#section#create(['mode',' ', '%F',])
   let g:airline_section_b = airline#section#create_left(['%b'])
   let g:airline_section_c = airline#section#create(['hex:', '%B'])
   "let g:airline_section_x = airline#section#create(['%P'])
   "let g:airline_section_y = airline#section#create(['%B'])
   "let g:airline_section_z = airline#section#create_right(['%l','%c'])
endfunction
autocmd VimEnter * call AirlineInit()
"
"* the separator used on the left side >
""let g:airline_left_sep='>'

"* the separator used on the right side >
""let g:airline_right_sep='<'

"* enable modified detection >  
let g:airline_detect_modified=1

"* enable paste detection >
""let g:airline_detect_paste=1

"* enable crypt detection >
"let g:airline_detect_crypt=1

"* enable iminsert detection >
" let g:airline_detect_iminsert=0

"* determine whether inactive windows should have the left section collapsed to only the filename of that buffer.
let g:airline_inactive_collapse=1

"* themes are automatically selected based on the matching colorscheme. this
"  can be overridden by defining a value. >
"  let g:airline_theme=

" if you want to patch the airline theme before it gets applied, you can
"  supply the name of a function where you can modify the palette. >
"  let g:airline_theme_patch_func = 'AirlineThemePatch'
"  function! AirlineThemePatch(palette)
"    if g:airline_theme == 'badwolf'
"      for colors in values(a:palette.inactive)
"        let colors[3] = 245
"      endfor
"    endif
"  endfunction

"* enable/disable automatic population of the `g:airline_symbols` dictionary with powerline symbols. >
let g:airline_powerline_fonts=1

" turn off whitespace section
"AirlineToggleWhitespace

"* define the set of text to display for each mode.  >
"let g:airline_mode_map = {} " see source for the defaults

"* define the set of filename match queries which excludes a window from having its statusline modified >
"let g:airline_exclude_filenames = [] " see source for current list

"* define the set of filetypes which are excluded from having its window statusline modified >
"  let g:airline_exclude_filetypes = [] " see source for current list

"* defines whether the preview window should be excluded from have its window
"  statusline modified (may help with plugins which use the preview window heavily) >
""let g:airline_exclude_preview = 0

"* disable the airline customization for selective windows (this is a
"  window-local variable so you can disable it for only some windows) >
"  let w:airline_disabled = 1
"
"}}}
"}}}
