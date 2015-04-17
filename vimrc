set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


Plugin 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'powerline/powerline'

Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Plugin 'SirVer/ultisnips'
Bundle "honza/vim-snippets"
Bundle "Valloric/YouCompleteMe"
Bundle "derekwyatt/vim-protodef"
Bundle "derekwyatt/vim-fswitch"
Bundle 'https://github.com/freeo/vim-kalisi'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
set tabstop=4
set shiftwidth=4
set expandtab
set number

map <c-n> :NERDTreeTabsToggle<CR>
imap <c-n> <ESC>:NERDTreeTabsToggle<CR>
nmap <c-n> :NERDTreeTabsToggle<CR>

no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

"============== Custom Mappings ===============
" general mapping
nmap <C-l> :tabnext<CR>
nmap <C-h> :tabprevious<CR>
nmap <C-t> :tabnew<CR>
map <C-h> :tabprevious<CR>
map <C-l> :tabnext<CR>
map <C-t> :tabnew<CR>
imap <C-h> <ESC>:tabprevious<CR>
imap <C-l> <ESC>:tabnext<CR>
imap <C-t> <ESC>:tabnew<CR>


" delete surrounding characters
noremap ds{ F{xf}x
noremap cs{ F{xf}xi
noremap ds" F"x,x
noremap cs" F"x,xi
noremap ds' F'x,x
noremap cs' F'x,xi
noremap ds( F(xf)x
noremap cs( F(xf)xi
noremap ds) F(xf)x
noremap cs) F(xf)xi

" surround sellected charracters
" upper or lowercase the current word
nmap g^ gUiW
nmap gv guiW

" gO to create a new line below cursor in normal mode
nmap g<C-O> o<ESC>k
" g<Ctrl+o> to create a new line above cursor (Ctrl to prevent collision with 'go' command)
nmap gO O<ESC>j

"I really hate that things don't auto-center
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

"quick pairs
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i
imap <leader><CR> <CR><leader>{<CR><ESC>O

" Easy motion ==========================================
map <Leader> <Plug>(easymotion-prefix)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" Powerline ============================================
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

" Color ================================================
syntax enable
colorscheme kalisi
set background=dark

" UltiSnip =============================================
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" YouCompleteMe ========================================
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_key_invoke_completion = '<c-j>'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_confirm_extra_conf = 0

" Copy function declaration from a header file into the implementation file.
nmap <F5> "lYml<nowiki>[[</nowiki>kw"cye'l
nmap <F6> ma:let @n=@/<CR>"lp==:s/\<virtual\>/\/\*&\*\//e<CR>:s/\<static\>/\/\*&\*\//e<CR>:s/\s*=\s*0\s*//e<CR>:s/(.\{-}\zs=\s*[^,)]\{-1,}\>\ze\(\*\/\)\@!.*)/\/\*&\*\//e<CR>:s/(.\{-}\zs=\s*[^,)]\{-1,}\>\ze\(\*\/\)\@!.*)/\/\*&\*\//e<CR>:s/(.\{-}\zs=\s*[^,)]\{-1,}\>\ze\(\*\/\)\@!.*)/\/\*&\*\//e<CR>:let @/=@n<CR>'ajf(b"cPa::<Esc>f;s<CR>{<CR>}<CR><Esc>kk
