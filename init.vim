":::instalacion de plugins:::

call plug#begin('~/AppData/Local/nvim/pluggins') 	"directorio donde se van a instalar los plugins

"plugins
Plug 'joshdick/onedark.vim'      	"tema
Plug 'Yggdroot/indentLine' 		"indentacion
Plug 'mattn/emmet-vim' 			"emmet para diseño web
Plug 'vim-airline/vim-airline'		"diseño de la barra en la cual se muestran los modos, la linea, etc.
Plug 'vim-airline/vim-airline-themes'	"temas para el vim-airline
Plug 'scrooloose/nerdtree'		"gestor de archivos en forma de arbol.
Plug 'christoomey/vim-tmux-navigator'	"poder navegar entre archivos abiertos
Plug 'jiangmiao/auto-pairs'		"autocompletado de llaves, corchetes, etc.
Plug 'easymotion/vim-easymotion'        "Navegacion rapida en el editor
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'benmills/vimux'
Plug 'christoomey/vim/tmux-navigator'
Plug 'sirver/ultisnips'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'mhinz/vim-signify'

call plug#end() 			"cerramos el llamado de los plugins

"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

"CONFIGURACIONES BASICAS 
set number 				"muestra los numeros de cada linea en la parte izquierda 
set relativenumber                      "la distribucion de los numeros en lineas de manera relativa
set numberwidth=1                       "Setear ancho de los números"
set showcmd                             "Me permite mostrar los comandos que estoy utilizando"
set mouse=a 				"permite la interaccion con el mouse
set noshowmode				"me deja de mostrar el modo en el que estamos 'normal, insert, visual, etc'
syntax enable 				"activa el coloreado de sintaxis en algunos tipos de archivos como html, c, c++
set encoding=utf-8 			"permite setear la codificación de archivos para aceptar caracteres especiales
set showmatch                           "permiete mostrar inicio y final de llaves y parentesis"
set sw=2 				"la indentación genera 4 espacios
set nowrap				"el texto en una linea no baja a la siguiente, solo continua en la misma hasta el infinito.
"set noswapfile				"para evitar el mensaje que sale al abrir algunos archivos sobre swap.
set clipboard=unnamed			"para poder utilizar el portapapeles del sistema operativo 'esto permite poder copiar y pegar desde cualquier parte a nvim y viceversa.	


"configuracion del tema
set termguicolors 			"activa el true color en la terminal
colorscheme onedark 			"activar el tema onedark

":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"configuracion de emmet-vim
let g:user_emmet_leader_key=',' 	                   "mapeando la tecla lider por una coma, con esto se completa los tag con doble coma.


"configuracion de vim-airline
let g:airline#extensions#tabline#enabled = 1	           "muestra la linea de pestaña en la que estamos buffer
let g:airline#extensions#tabline#formatter = 'unique_tail' "muestra solo el nombre del archivo que estamos modificando
let g:airline_theme='onedark'	"el tema de airline

"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"Configuracion de nerdtree
let mapleader=" "                       "Configuramos la tecla principal para ejecutar comandos
let NERDTreeQuitOnOpen=1                "Configuramos para cerrar ventana NERD

nmap <Leader>+ :NERDTreeToggle<CR>
nmap <Leader>s :<Plug>(easymotion-s2)
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>wq :wq<CR>
nmap <Leader>; $a;<Esc>
nmap <Leader>b :NERDTreeFind<CR>

nmap <silent> <Leader><C-h> :TmuxNavigateLeft<CR>
nmap <silent> <Leader><C-j> :TmuxNavigateDown<CR>
nmap <silent> <Leader><C-k> :TmuxNavigateUp<CR>
nmap <silent> <Leader><C-l> ;TmuxNavigateRight<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-reference)

nmap <Leader>ob :Buffers<CR>
nmap <C-j> 10<C-e>
nmap <C-k> 10<C-y>

