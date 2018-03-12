" Vim color file
" Maintainer:  Iury Xavier <iuryadones@gmail.com>
" Last Change: 2018 Mar 11
" Version:     2.2.0


let g:colors_name="iaxs-i3wm-vim-monokai"

highlight clear

syntax clear

set t_Co=256

if has('termguicolors')
    set termguicolors
endif

if exists("syntax_on")
  syntax reset
else
  syntax on
  syntax enable
endif

set background=dark

" main
hi Normal cterm=none ctermbg=none ctermfg=none gui=none guibg=#272822 guifg=#F8F8F2 term=none

" visual editor
hi WildMenu     ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow gui=none term=none cterm=none
hi SpellLocal   ctermbg=14 gui=undercurl guisp=Cyan term=undercurl cterm=undercurl
hi ColorColumn  guibg=#3E3D32 gui=none term=none cterm=none
hi Conceal      guibg=fg guifg=bg gui=none term=none cterm=none
hi Cursor       guibg=fg gui=none term=none cterm=none
hi CursorColumn guibg=#232728 gui=none term=none cterm=none
hi CursorLine   cterm=none guibg=#3E3D32 term=none
hi CursorLineNr cterm=bold gui=bold guifg=#E6DB74 term=bold
hi DiffAdd      guifg=bg guibg=#A6E22E gui=none term=none cterm=none
hi DiffChange   guifg=bg guibg=#E6DB74 gui=none term=none cterm=none
hi DiffDelete   guifg=bg guibg=#F92672 gui=none term=none cterm=none
hi DiffText     guifg=bg guibg=#E6DB74 gui=none term=none cterm=none
hi Directory    guifg=#66D9EF gui=none term=none cterm=none
hi ErrorMsg     guifg=#F92672 guibg=bg gui=none term=none cterm=none
hi FoldColumn   guifg=#75715E guibg=#3E3D32 gui=none term=none cterm=none
hi Folded       guifg=#75715E guibg=bg gui=none term=none cterm=none
hi IncSearch    guifg=bg guibg=#E6DB74 gui=none term=none cterm=none
hi LineNr       guifg=#75715E guibg=#3E3D32 gui=none term=none cterm=none
hi MatchParen   guifg=#FD971F guibg=bg gui=bold term=bold cterm=bold
hi ModeMsg      gui=none term=none cterm=none
hi MoreMsg      guifg=#66D9EF gui=none term=none cterm=none
hi NonText      guifg=#75715E gui=none term=none cterm=none
hi Pmenu        guifg=fg guibg=#3E3D32 gui=none term=none cterm=none
hi PmenuSbar    guibg=bg gui=none term=none cterm=none
hi PmenuSel     guifg=fg guibg=bg gui=none term=none cterm=none
hi PmenuThumb   guifg=fg gui=none term=none cterm=none
hi Question     guifg=#A6E22E gui=none term=none cterm=none
hi Search       guifg=bg guibg=#E6DB74 gui=none term=none cterm=none
hi SignColum    guifg=#75715E guibg=#3E3D32 gui=none term=none cterm=none
hi SignColumn   guifg=#75715E guibg=#3E3D32 gui=none term=none cterm=none
hi SpecialKey   guifg=#75715E gui=none term=none cterm=none
hi SpellBad     guisp=#F92672 gui=underline term=underline cterm=underline
hi SpellCap     guisp=#65D9EF gui=underline term=underline cterm=underline
hi SpellRare    guisp=#AE81FF gui=underline term=underline cterm=underline
hi StatusLine   guifg=fg guibg=#3E3D32 gui=none term=none cterm=none
hi StatusLineNC guifg=#75715E guibg=#3E3D32 gui=none term=none cterm=none
hi TabLine      guifg=#75715E guibg=#3E3D32 gui=none term=none cterm=none
hi TabLineFill  guifg=fg guibg=#3E3D32 gui=none term=none cterm=none
hi TabLineSel   guifg=fg guibg=#3E3D32 gui=none term=none cterm=none
hi Title        guifg=#F92672 gui=none term=none cterm=none
hi VertSplit    guifg=#3B3A32 guibg=bg gui=none term=none cterm=none
hi Visual       guibg=#49483E gui=none term=none cterm=none
hi WarningMsg   guifg=#F92672 gui=none term=none cterm=none

" Plugin specific highlight groups
hi MyTagListFileName guifg=#FD971F guibg=bg gui=none term=none cterm=none

" Color groups
hi Blue    guifg=#66D9EF gui=none term=none cterm=none
hi BlueB   guifg=#66D9EF gui=bold term=bold cterm=bold
hi BlueU   guifg=#66D9EF gui=underline term=underline cterm=underline
hi BlueR   guifg=bg guibg=#66D9EF gui=bold term=bold cterm=bold
hi Green   guifg=#A6E22E gui=none term=none cterm=none
hi GreenB  guifg=#A6E22E gui=bold term=bold cterm=bold
hi GreenU  guifg=#A6E22E gui=underline term=underline cterm=underline
hi GreenR  guifg=bg guibg=#A6E22E gui=bold term=bold cterm=bold
hi Gray    guifg=#75715E gui=none term=none cterm=none
hi GrayB   guifg=#75715E gui=bold term=bold cterm=bold
hi GrayU   guifg=#75715E gui=underline term=underline cterm=underline
hi GrayR   guifg=bg guibg=#75715E gui=bold term=bold cterm=bold
hi Orange  guifg=#FD971F gui=none term=none cterm=none
hi OrangeB guifg=#FD971F gui=bold term=bold cterm=bold
hi OrangeU guifg=#FD971F gui=underline term=underline cterm=underline
hi OrangeR guifg=bg guibg=#FD971F gui=bold term=bold cterm=bold
hi Purple  guifg=#AE81FF gui=none term=none cterm=none
hi PurpleB guifg=#AE81FF gui=bold term=bold cterm=bold
hi PurpleU guifg=#AE81FF gui=underline term=underline cterm=underline
hi Red     guifg=#F92672 gui=none term=none cterm=none
hi RedB    guifg=#F92672 gui=bold term=bold cterm=bold
hi RedR    guifg=bg guibg=#F92672 gui=bold term=bold cterm=bold
hi White   guifg=#F8F8F2 gui=none term=none cterm=none
hi WhiteB  guifg=#F8F8F2 gui=bold term=bold cterm=bold
hi WhiteU  guifg=#F8F8F2 gui=underline term=underline cterm=underline
hi WhiteR  guifg=bg guibg=#F8F8F2 gui=bold term=bold cterm=bold
hi Yellow  guifg=#E6DB74 gui=none term=none cterm=none
hi YellowB guifg=#E6DB74 gui=bold term=bold cterm=bold
hi YellowU guifg=#E6DB74 gui=underline term=underline cterm=underline
hi YellowR guifg=bg guibg=#E6DB74 gui=bold term=bold cterm=bold

" Syntax highligh groups
" Main
hi! link Boolean        PurpleB
hi! link Comment        Gray
hi! link Conditional    RedB
hi! link Constant       Blue
hi! link Define         Blue
hi! link Error          RedR
hi! link Exception      Green
hi! link Float          PurpleB
hi! link Function       GreenB
hi! link Identifier     RedB
hi! link Include        RedB
hi! link Number         PurpleB
hi! link Operator       BlueB
hi! link Repeat         GreenB
hi! link Special        OrangeB
hi! link Statement      RedB
hi! link String         YellowB
hi! link Structure      Blue
hi! link Todo           OrangeR


" Others
hi! link Delimiter      WhiteB
hi! link Keyword        GreenB
hi! link PreProc        PurpleB
hi! link Type           BlueB
hi! link Typedef        OrangeB
hi! link SpecialChar    OrangeU

" FIXME
hi! link Ignore         WhiteU
hi! link Builtin        WhiteU
hi! link Character      WhiteU
hi! link Debug          WhiteU
hi! link Label          WhiteU
hi! link Macro          WhiteU
hi! link PreCondit      WhiteU
hi! link SpecialComment WhiteU
hi! link StorageClass   WhiteU
hi! link Tag            WhiteU
hi! link Underlined     WhiteU

