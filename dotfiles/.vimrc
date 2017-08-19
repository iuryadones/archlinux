"""""""""""""""""""" 0) Definição de funções auxiliares """"""""""""""""""""
"
" Retorna verdadeiro se o modo de copiar e colar estiver ativado
function! HasPaste()
        if &paste
                return 'PASTE MODE ON'
        en
                return 'PASTE MODE OFF'
        return ''
endfunction
"
"""""""""""""""""""" 0) Definição de funções auxiliares """"""""""""""""""""
"""""""""""""""""""" 1) Configurações gerais """"""""""""""""""""
"
" Usa as definições do vim, não as do vi
set nocompatible
" Define o tamanho do histórico de comandos do vim:
set history=10000
"
" Habilita o reconhecimento de arquivos
filetype plugin on
filetype indent on
"
" Recarrega o arquivo caso ele seja editado por um programa externo enquanto aberto
set autoread
"
" Habilita o uso do mouse no vim para cliques e coisas do tipo
set mouse=a
"
"""""""""""""""""""" 1) Configurações gerais """"""""""""""""""""

"""""""""""""""""""" 2) Interface do vim """""""""""""""""""""
"
" Ativa o menu WiLd (entre outras coisas, ativa <Ctrl>n e <Ctrl>p para navegar entre as correspondências da busca
set wildmenu
"
" Sempre mostra a posição atual do cursor
set ruler
"
" Altura da barra de comandos
set cmdheight=2
"
" Configurando a tecla <Backspace> para o que ela tem que fazer
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
"
" Destaca os resultados da busca
set hlsearch
"
" Habilita expressões regulares
set magic
"
" Destaca pares de colchetes ao passar o cursor, e configura o tempo do destaque em décimos de segundo
set showmatch
set mat=10
"
"""""""""""""""""""" 2) Interface do vim """""""""""""""""""""

"""""""""""""""""""" 3) Cores e fontes """"""""""""""""""""
"
" Ativa a numeração das linhas
set number
"
" Habilita o destaque de sintaxe
syntax enable
"
" Esquema de cores do vim
colorscheme desert
set background=light
"
" Desativa a quebra de linha automática (comentado por padrão)
set nolinebreak
"
" Permite a navegação dentro de uma mesma linha longa com j e k
set wrap
"
"""""""""""""""""""" 3) Cores e fontes """"""""""""""""""""

"""""""""""""""""""" 4) Texto e tabulações """"""""""""""""""""
"
" Insere espaços no lugar de caracteres de tabulação
set expandtab
"
" Uso inteligente de tabulações
set smarttab
"
" Define uma tabulação como sendo oito espaços
set shiftwidth=4
set tabstop=4
"
"""""""""""""""""""" 4) Texto e tabulações """"""""""""""""""""

""""""""""""""""""" 5) Linha de status """"""""""""""""""""
"
" Sempre mostra a linha de status
set laststatus=2
"
" Formato da linha de status
set statusline=\ %{HasPaste()}\ Arquivo:\ %F%m%r%h\ %w\ \ Diretório\ de\ trabalho:\ %r%{getcwd()}%h\ -\ Linha:\ %l\ -\ Coluna:\ %c
"
"""""""""""""""""""" 5) Linha de status """"""""""""""""""""

"""""""""""""""""""" 6) Desfazer persistente """"""""""""""""""""
"
" Preserva o histórico do desfazer após o fim da sessão atual salvando-o em um arquivo
set undodir=~/.vim/undobackups
set undofile
"
"""""""""""""""""""" 6) Desfazer persistente """"""""""""""""""""

set clipboard+=unnamed  " use the clipboards of vim and win
set paste               " Paste from a windows or from vim
set go+=a               " Visual selection automatically copied to the clipboard
