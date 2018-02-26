" Vim color file
" Maintainer:  Iury Xavier <iuryadones@gmail.com>
" Last Change: 2017 Ago 20
" Version:     1.2.0

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="iaxs-i3wm-vim-monokai"

hi Normal      guifg=#F8F8F2 guibg=#272822

" Main highlight groups
"hi CursorIM
"hi Menu
"hi ScrollBar
"hi SpellLocal
"hi Tooltip
"hi VisualNOS
"hi WildMenu
hi ColorColumn  guibg=#3E3D32
hi Conceal      guibg=bg
hi Cursor       guibg=fg
hi CursorColumn guibg=#232728
hi CursorLine   guibg=#3E3D32
hi DiffAdd      guifg=bg guibg=#A6E22E
hi DiffChange   guifg=bg guibg=#E6DB74
hi DiffDelete   guifg=bg guibg=#F92672
hi DiffText     guifg=bg guibg=#E6DB74
hi Directory    guifg=#66D9EF gui=none
hi ErrorMsg     guifg=#F92672 guibg=bg gui=none
hi FoldColumn   guifg=#75715E guibg=#3E3D32 gui=none
hi Folded       guifg=#75715E guibg=bg gui=none
hi IncSearch    guifg=bg guibg=#E6DB74 gui=none
hi LineNr       guifg=#75715E guibg=#3E3D32 gui=none
hi MatchParen   guifg=fg guibg=bg gui=bold
hi ModeMsg      gui=none
hi MoreMsg      guifg=#66D9EF gui=none
hi NonText      guifg=#75715E gui=none
hi Pmenu        guifg=fg guibg=#3E3D32
hi PmenuSbar    guibg=bg
hi PmenuSel     guifg=fg guibg=bg
hi PmenuThumb   guifg=fg
hi Question     guifg=#A6E22E gui=none
hi Search       guifg=bg guibg=#E6DB74 gui=none
hi SignColum    guifg=#75715E guibg=#3E3D32 gui=none
hi SignColumn   guifg=#75715E guibg=#3E3D32 gui=none
hi SpecialKey   guifg=#75715E gui=none
hi SpellBad     guisp=#F92672
hi SpellCap     guisp=#65D9EF
hi SpellRare    guisp=#AE81FF
hi StatusLine   guifg=fg guibg=#3E3D32 gui=none
hi StatusLineNC guifg=#75715E guibg=#3E3D32 gui=none
hi TabLine      guifg=#75715E guibg=#3E3D32 gui=none
hi TabLineFill  guifg=fg guibg=#3E3D32 gui=none
hi TabLineSel   guifg=fg guibg=#3E3D32 gui=none
hi Title        guifg=#F92672 gui=none
hi VertSplit    guifg=#3B3A32 guibg=bg gui=none
hi Visual       guibg=#49483E gui=none
hi WarningMsg   guifg=#F92672 gui=none

" Plugin specific highlight groups
hi MyTagListFileName guifg=#FD971F guibg=bg gui=none

" Color groups
hi Blue    guifg=#66D9EF gui=none
hi BlueB   guifg=#66D9EF gui=bold
hi BlueU   guifg=#66D9EF gui=underline
hi Green   guifg=#A6E22E gui=none
hi GreenB  guifg=#A6E22E gui=bold
hi GreenU  guifg=#A6E22E gui=underline
hi Grey    guifg=#75715E gui=none
hi GreyB   guifg=#75715E gui=bold
hi GreyU   guifg=#75715E gui=underline
hi Orange  guifg=#FD971F gui=none
hi OrangeB guifg=#FD971F gui=bold
hi OrangeU guifg=#FD971F gui=underline
hi Purple  guifg=#AE81FF gui=none
hi PurpleB guifg=#AE81FF gui=bold
hi PurpleU guifg=#AE81FF gui=underline
hi Red     guifg=#F92672 gui=none
hi RedB    guifg=#F92672 gui=bold
hi RedR    guifg=fg guibg=#F92672 gui=bold
hi White   guifg=#F8F8F2 gui=none
hi WhiteB  guifg=#F8F8F2 gui=bold
hi WhiteU  guifg=#F8F8F2 gui=underline
hi Yellow  guifg=#E6DB74 gui=none
hi YellowB guifg=#E6DB74 gui=bold
hi YellowR guifg=bg guibg=#FD971F gui=bold

" Syntax highligh groups
"hi Debug
"hi Delimiter
"hi Ignore
"hi Include
"hi Keyword
"hi Label
"hi Macro
"hi PreCondit
"hi Repeat
"hi SpecialChar
"hi SpecialComment
"hi Structure
"hi Typedef
hi! link Boolean      PurpleB
hi! link Builtin      PurpleB
hi! link Character    YellowB
hi! link Comment      Grey
hi! link Conditional  RedB
hi! link Constant     PurpleB
hi! link Define       Blue
hi! link Error        RedR
hi! link Exception    Green
hi! link Float        PurpleB
hi! link Function     GreenB 
hi! link Identifier   Blue
hi! link Number       PurpleB
hi! link Operator     BlueB
hi! link PreCondit    GreenB
hi! link PreProc      OrangeB
hi! link Special      Grey
hi! link Statement    RedB
hi! link StorageClass Red
hi! link String       YellowB
hi! link Tag          Green
hi! link Todo         YellowR
hi! link Type         Blue
hi! link Underlined   BlueU

" Language specific highligh groups
" C
hi link cStatement              Green

" C++
hi link cppStatement            Green

" CSS
hi link cssAuralProp            White
hi link cssBoxProp              White
hi link cssBraces               White
hi link cssColorProp            White
hi link cssFontDescriptorProp   White
hi link cssFontProp             White
hi link cssGeneratedContentProp White
hi link cssPagingProp           White
hi link cssRenderProp           White
hi link cssTableProp            White
hi link cssTextProp             White
hi link cssUIProp               White

" Java
hi link javaStatement           Green

" Ruby
hi link rubyClassVariable       White
hi link rubyControl             Green
hi link rubyGlobalVariable      White
hi link rubyInstanceVariable    White

" javascript
hi link javaScriptBraces        White
hi link javaScriptEndColons     White
hi link javaScriptFuncArg       Orange
hi link javaScriptFuncComma     Orange
hi link javaScriptFuncEq        Red
hi link javaScriptFuncExp       Green
hi link javaScriptFunction      Blue
hi link javaScriptGlobalObjects White
hi link javaScriptHtmlElemProperties  Blue
hi link javaScriptLogicSymbols  Red
hi link javaScriptNull          Purple
hi link javaScriptOpSymbols     Red
hi link javaScriptOperator      Red
hi link javaScriptParens        White

" typescript
hi link typeScriptBraces        White
hi link typeScriptEndColons     White
hi link typeScriptFuncArg       Orange
hi link typeScriptFuncComma     Orange
hi link typeScriptFuncEq        Red
hi link typeScriptFuncExp       Green
hi link typeScriptFunction      Blue
hi link typeScriptGlobalObjects White
hi link typeScriptLogicSymbols  Red
hi link typeScriptNull          Purple
hi link typeScriptOpSymbols     Red
hi link typeScriptOperator      Red
hi link typeScriptParens        White

" html
hi link htmlArg        Green
hi link htmlEndTag     White
hi link htmlH1         White
hi link htmlTag        White
hi link htmlTagN       White
hi link htmlTitle      White

" csharp
hi link csClass        White
hi link csGeneric      Blue
hi link csIface        White
hi link csXlmComment   Grey
hi link xmlEndTag      Grey
hi link xmlTag         Grey

" ruby
hi link rubyBlock             White
hi link rubyBlockParameter    White
hi link rubyClassDeclaration  Green
hi link rubyConstant          Blue
hi link rubyControl           Red
hi link rubyDefine            Red
hi link rubyDoBlock           White
hi link rubyFunction          Green
hi link rubyInclude           Red
hi link rubyMethodDeclaration Green

"yaml
hi link yamlAlias             Red
hi link yamlAnchor            White
hi link yamlBlockMappingKey   Red
hi link yamlBlockMappingMerge Red
hi link yamlInteger           Purple
hi link yamlKeyValueDelimiter Red
hi link yamlPlainScalar       Yellow

"sql
hi link sqlKeyword Red

"xml
hi link xmlAttrib Green
hi link xmlProcessing Red
hi link xmlProcessingdelim White
hi link xmlTag Red
hi link xmlTagName Red

