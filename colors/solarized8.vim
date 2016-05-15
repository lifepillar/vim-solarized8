" Name:     Solarized vim colorscheme for Vim 8
" Author:   Lifepillar <lifepillar@lifepillar.me>
" License:  OSI approved MIT license (see end of this file)

hi clear
if exists("syntax_on")
  syntax reset
endif
let colors_name = "solarized8"

let g:solarized_contrast    = get(g:, 'solarized_contrast', 'normal')    " low, normal, lifepillar, high
let g:solarized_visibility  = get(g:, 'solarized_visibility', 'normal')  " low, normal, high
let g:solarized_diffmode    = get(g:, 'solarized_diffmode', 'normal')    " low, normal, high
let g:solarized_statusline  = get(g:, 'solarized_statusline', 'normal')  " low, normal

let s:base03      = ["8" , "#002b36"]
let s:base02      = ["0" , "#073642"]
let s:base01      = ["10", "#586e75"]
let s:base00      = ["11", "#657b83"]
let s:base0       = ["12", "#839496"]
let s:base1       = ["14", "#93a1a1"]
let s:base2       = ["7" , "#eee8d5"]
let s:base3       = ["15", "#fdf6e3"]
let s:yellow      = ["3" , "#b58900"]
let s:orange      = ["9" , "#cb4b16"]
let s:red         = ["1" , "#dc322f"]
let s:magenta     = ["5" , "#d33682"]
let s:violet      = ["13", "#6c71c4"]
let s:blue        = ["4" , "#268bd2"]
let s:cyan        = ["6" , "#2aa198"]
"let s:green      = ["2" , "#859900"] " original
let s:green       = ["2" , "#719e07"] " experimental
let s:c           = ",undercurl"
let s:r           = ",reverse"
let s:s           = ",standout"
let s:ou          = ""
let s:ob          = ""
let s:back        = s:base03
let s:b           = ",bold"
let s:i           = ",italic"
let s:u           = ""

if &background == "light"
  let s:temp03      = s:base03
  let s:temp02      = s:base02
  let s:temp01      = s:base01
  let s:temp00      = s:base00
  let s:base03      = s:base3
  let s:base02      = s:base2
  let s:base01      = s:base1
  let s:base00      = s:base0
  let s:base0       = s:temp00
  let s:base1       = s:temp01
  let s:base2       = s:temp02
  let s:base3       = s:temp03
  let s:back        = s:base03
endif

if g:solarized_contrast == "high"
  let s:base01      = s:base00
  let s:base00      = s:base0
  let s:base0       = s:base1
  let s:base1       = s:base2
  let s:base2       = s:base3
endif
if g:solarized_contrast == "low"
  let s:back        = s:base02
  let s:ou          = ",underline"
endif
if g:solarized_contrast == "lifepillar"
  let s:ou          = ",underline"
endif
exe "let s:bg_none      = ' ctermbg=NONE             guibg=NONE'"
exe "let s:bg_back      = ' ctermbg=".s:back[0]     "guibg=".s:back[1]    "'"
exe "let s:bg_base03    = ' ctermbg=".s:base03[0]   "guibg=".s:base03[1]  "'"
exe "let s:bg_base02    = ' ctermbg=".s:base02[0]   "guibg=".s:base02[1]  "'"
exe "let s:bg_base01    = ' ctermbg=".s:base01[0]   "guibg=".s:base01[1]  "'"
exe "let s:bg_base00    = ' ctermbg=".s:base00[0]   "guibg=".s:base00[1]  "'"
exe "let s:bg_base0     = ' ctermbg=".s:base0[0]    "guibg=".s:base0[1]   "'"
exe "let s:bg_base1     = ' ctermbg=".s:base1[0]    "guibg=".s:base1[1]   "'"
exe "let s:bg_base2     = ' ctermbg=".s:base2[0]    "guibg=".s:base2[1]   "'"
exe "let s:bg_base3     = ' ctermbg=".s:base3[0]    "guibg=".s:base3[1]   "'"
exe "let s:bg_green     = ' ctermbg=".s:green[0]    "guibg=".s:green[1]   "'"
exe "let s:bg_yellow    = ' ctermbg=".s:yellow[0]   "guibg=".s:yellow[1]  "'"
exe "let s:bg_orange    = ' ctermbg=".s:orange[0]   "guibg=".s:orange[1]  "'"
exe "let s:bg_red       = ' ctermbg=".s:red[0]      "guibg=".s:red[1]     "'"
exe "let s:bg_magenta   = ' ctermbg=".s:magenta[0]  "guibg=".s:magenta[1] "'"
exe "let s:bg_violet    = ' ctermbg=".s:violet[0]   "guibg=".s:violet[1]  "'"
exe "let s:bg_blue      = ' ctermbg=".s:blue[0]     "guibg=".s:blue[1]    "'"
exe "let s:bg_cyan      = ' ctermbg=".s:cyan[0]     "guibg=".s:cyan[1]    "'"

exe "let s:fg_none      = ' ctermfg=NONE             guifg=NONE'"
exe "let s:fg_back      = ' ctermfg=".s:back[0]     "guifg=".s:back[1]    "'"
exe "let s:fg_base03    = ' ctermfg=".s:base03[0]   "guifg=".s:base03[1]  "'"
exe "let s:fg_base02    = ' ctermfg=".s:base02[0]   "guifg=".s:base02[1]  "'"
exe "let s:fg_base01    = ' ctermfg=".s:base01[0]   "guifg=".s:base01[1]  "'"
exe "let s:fg_base00    = ' ctermfg=".s:base00[0]   "guifg=".s:base00[1]  "'"
exe "let s:fg_base0     = ' ctermfg=".s:base0[0]    "guifg=".s:base0[1]   "'"
exe "let s:fg_base1     = ' ctermfg=".s:base1[0]    "guifg=".s:base1[1]   "'"
exe "let s:fg_base2     = ' ctermfg=".s:base2[0]    "guifg=".s:base2[1]   "'"
exe "let s:fg_base3     = ' ctermfg=".s:base3[0]    "guifg=".s:base3[1]   "'"
exe "let s:fg_green     = ' ctermfg=".s:green[0]    "guifg=".s:green[1]   "'"
exe "let s:fg_yellow    = ' ctermfg=".s:yellow[0]   "guifg=".s:yellow[1]  "'"
exe "let s:fg_orange    = ' ctermfg=".s:orange[0]   "guifg=".s:orange[1]  "'"
exe "let s:fg_red       = ' ctermfg=".s:red[0]      "guifg=".s:red[1]     "'"
exe "let s:fg_magenta   = ' ctermfg=".s:magenta[0]  "guifg=".s:magenta[1] "'"
exe "let s:fg_violet    = ' ctermfg=".s:violet[0]   "guifg=".s:violet[1]  "'"
exe "let s:fg_blue      = ' ctermfg=".s:blue[0]     "guifg=".s:blue[1]    "'"
exe "let s:fg_cyan      = ' ctermfg=".s:cyan[0]     "guifg=".s:cyan[1]    "'"

exe "let s:fmt_none     = ' cterm=NONE               gui=NONE"            "'"
exe "let s:fmt_bold     = ' cterm=NONE".s:b         "gui=NONE".s:b        "'"
exe "let s:fmt_bldi     = ' cterm=NONE".s:b         "gui=NONE".s:b        "'"
exe "let s:fmt_undr     = ' cterm=NONE".s:u         "gui=NONE".s:u        "'"
exe "let s:fmt_undb     = ' cterm=NONE".s:u.s:b     "gui=NONE".s:u.s:b    "'"
exe "let s:fmt_undi     = ' cterm=NONE".s:u         "gui=NONE".s:u        "'"
exe "let s:fmt_uopt     = ' cterm=NONE".s:ou        "gui=NONE".s:ou       "'"
exe "let s:fmt_curl     = ' cterm=NONE".s:c         "gui=NONE".s:c        "'"
exe "let s:fmt_ital     = ' cterm=NONE"             "gui=NONE".s:i        "'"
exe "let s:fmt_stnd     = ' cterm=NONE".s:s         "gui=NONE".s:s        "'"
exe "let s:fmt_revr     = ' cterm=NONE".s:r         "gui=NONE".s:r        "'"
exe "let s:fmt_revb     = ' cterm=NONE".s:r.s:b     "gui=NONE".s:r.s:b    "'"
" revbb (reverse bold for bright colors) is only set to actual bold in low
" color terminals (t_co=8, such as OS X Terminal.app) and should only be used
" with colors 8-15.
exe "let s:fmt_revbb    = ' cterm=NONE".s:r         "gui=NONE".s:r        "'"
exe "let s:fmt_revbbu   = ' cterm=NONE".s:r.s:u     "gui=NONE".s:r.s:u    "'"

exe "let s:sp_none      = ' guisp=NONE'"
exe "let s:sp_back      = ' guisp=".s:back[1]    "'"
exe "let s:sp_base03    = ' guisp=".s:base03[1]  "'"
exe "let s:sp_base02    = ' guisp=".s:base02[1]  "'"
exe "let s:sp_base01    = ' guisp=".s:base01[1]  "'"
exe "let s:sp_base00    = ' guisp=".s:base00[1]  "'"
exe "let s:sp_base0     = ' guisp=".s:base0[1]   "'"
exe "let s:sp_base1     = ' guisp=".s:base1[1]   "'"
exe "let s:sp_base2     = ' guisp=".s:base2[1]   "'"
exe "let s:sp_base3     = ' guisp=".s:base3[1]   "'"
exe "let s:sp_green     = ' guisp=".s:green[1]   "'"
exe "let s:sp_yellow    = ' guisp=".s:yellow[1]  "'"
exe "let s:sp_orange    = ' guisp=".s:orange[1]  "'"
exe "let s:sp_red       = ' guisp=".s:red[1]     "'"
exe "let s:sp_magenta   = ' guisp=".s:magenta[1] "'"
exe "let s:sp_violet    = ' guisp=".s:violet[1]  "'"
exe "let s:sp_blue      = ' guisp=".s:blue[1]    "'"
exe "let s:sp_cyan      = ' guisp=".s:cyan[1]    "'"

"}}}
" Lifepillar's mode highlighting {{{
if &background == "dark"
  exe "hi! NormalMode"   s:fmt_none s:fg_base0   s:bg_base3  s:fmt_revbb
  exe "hi! InsertMode"   s:fmt_none s:fg_cyan    s:bg_base3  s:fmt_revbb
  exe "hi! ReplaceMode"  s:fmt_none s:fg_orange  s:bg_base3  s:fmt_revbb
  exe "hi! VisualMode"   s:fmt_none s:fg_magenta s:bg_base3  s:fmt_revbb
  exe "hi! CommandMode"  s:fmt_none s:fg_magenta s:bg_base3  s:fmt_revbb
else
  exe "hi! NormalMode"   s:fmt_none s:fg_base1   s:bg_base03  s:fmt_revbb
  exe "hi! InsertMode"   s:fmt_none s:fg_cyan    s:bg_base03  s:fmt_revbb
  exe "hi! ReplaceMode"  s:fmt_none s:fg_orange  s:bg_base03  s:fmt_revbb
  exe "hi! VisualMode"   s:fmt_none s:fg_magenta s:bg_base03  s:fmt_revbb
  exe "hi! CommandMode"  s:fmt_none s:fg_magenta s:bg_base03  s:fmt_revbb
endif
" }}}
" Basic highlighting"{{{
" ---------------------------------------------------------------------
" note that link syntax to avoid duplicate configuration doesn't work with the
" exe compiled formats

exe "hi! Normal"         .s:fmt_none   .s:fg_base0  .s:bg_back

exe "hi! Comment"        .s:fmt_ital   .s:fg_base01 .s:bg_none
"       *Comment         any comment

exe "hi! Constant"       .s:fmt_none   .s:fg_cyan   .s:bg_none
"       *Constant        any constant
"        String          a string constant: "this is a string"
"        Character       a character constant: 'c', '\n'
"        Number          a number constant: 234, 0xff
"        Boolean         a boolean constant: TRUE, false
"        Float           a floating point constant: 2.3e10

exe "hi! Identifier"     .s:fmt_none   .s:fg_blue   .s:bg_none
"       *Identifier      any variable name
"        Function        function name (also: methods for classes)
"
exe "hi! Statement"      .s:fmt_none   .s:fg_green  .s:bg_none
"       *Statement       any statement
"        Conditional     if, then, else, endif, switch, etc.
"        Repeat          for, do, while, etc.
"        Label           case, default, etc.
"        Operator        "sizeof", "+", "*", etc.
"        Keyword         any other keyword
"        Exception       try, catch, throw

exe "hi! PreProc"        .s:fmt_none   .s:fg_orange .s:bg_none
"       *PreProc         generic Preprocessor
"        Include         preprocessor #include
"        Define          preprocessor #define
"        Macro           same as Define
"        PreCondit       preprocessor #if, #else, #endif, etc.

exe "hi! Type"           .s:fmt_none   .s:fg_yellow .s:bg_none
"       *Type            int, long, char, etc.
"        StorageClass    static, register, volatile, etc.
"        Structure       struct, union, enum, etc.
"        Typedef         A typedef

" Changed by Lifepillar: avoid red on dark background, use orange instead:
exe "hi! Special"        .s:fmt_none   .s:fg_orange    .s:bg_none
"       *Special         any special symbol
"        SpecialChar     special character in a constant
"        Tag             you can use CTRL-] on this
"        Delimiter       character that needs attention
"        SpecialComment  special things inside a comment
"        Debug           debugging statements

exe "hi! Underlined"     .s:fmt_none   .s:fg_violet .s:bg_none
"       *Underlined      text that stands out, HTML links

exe "hi! Ignore"         .s:fmt_none   .s:fg_none   .s:bg_none
"       *Ignore          left blank, hidden  |hl-Ignore|

exe "hi! Error"          .s:fmt_bold   .s:fg_red    .s:bg_none
"       *Error           any erroneous construct

exe "hi! Todo"           .s:fmt_bold   .s:fg_magenta.s:bg_none
"       *Todo            anything that needs extra attention; mostly the
"                        keywords TODO FIXME and XXX
"
"}}}
" Extended highlighting "{{{
" ---------------------------------------------------------------------
if      (g:solarized_visibility=="high")  " visibility
    exe "hi! SpecialKey" .s:fmt_revr   .s:fg_red    .s:bg_none
    exe "hi! NonText"    .s:fmt_bold   .s:fg_red    .s:bg_none
    exe "hi! CursorLineNr"   .s:fmt_bold   .s:fg_red .s:bg_base02
elseif  (g:solarized_visibility=="low")  " visibility
    exe "hi! SpecialKey" .s:fmt_bold   .s:fg_base02 .s:bg_none
    exe "hi! NonText"    .s:fmt_bold   .s:fg_base02 .s:bg_none
    exe "hi! CursorLineNr" s:fmt_bold   .s:fg_base01 .s:bg_base02
else
    exe "hi! SpecialKey" .s:fmt_bold   .s:fg_base00 .s:bg_base02
    exe "hi! NonText"    .s:fmt_bold   .s:fg_base00 .s:bg_none
    exe "hi! CursorLineNr"   .s:fmt_bold   .s:fg_base0 .s:bg_base02
endif
if g:solarized_statusline == 'low'
  if &background == "dark"
    exe "hi! StatusLine"     .s:fmt_none   .s:fg_base01 "ctermbg=7" "guibg=#eee8d5" .s:fmt_revbb
  else
    exe "hi! StatusLine"     .s:fmt_none   .s:fg_base01 "ctermbg=15" "guibg=#fdf6e3" .s:fmt_revbb
  endif
else
  if &background == "dark"
    " Changed by Lifepillar: slightly darker status line, light foreground
    exe "hi! StatusLine"     .s:fmt_none   .s:fg_base0  .s:bg_base02.s:fmt_revbb
  else
    exe "hi! StatusLine"     .s:fmt_none   .s:fg_base1  .s:bg_base02.s:fmt_revbb
  endif
endif
if g:solarized_contrast == "lifepillar"
  exe "hi! StatusLineNC" .s:fmt_none   .s:fg_base02 .s:bg_base01  s:fmt_revbb
else
  " Changed by Lifepillar: lighter colors for disabled status line
  if &background == "dark"
    exe "hi! StatusLineNC" .s:fmt_none   .s:fg_base01 .s:bg_base1  .s:fmt_revbb
  else
    exe "hi! StatusLineNC" .s:fmt_none   .s:fg_base01 .s:bg_base02  .s:fmt_revbb
  endif
endif
exe "hi! Visual"         .s:fmt_none   .s:fg_base01 .s:bg_base03 .s:fmt_revbb
exe "hi! Directory"      .s:fmt_none   .s:fg_blue   .s:bg_none
" Changed by Lifepillar: ErrorMsg is always white on red, never black on red (pesky)
exe "hi! ErrorMsg"       .s:fmt_revr   .s:fg_red    "ctermbg=15" "guibg=#fdf6e3"
exe "hi! IncSearch"      .s:fmt_stnd   .s:fg_orange .s:bg_none
exe "hi! Search"         .s:fmt_revr   .s:fg_yellow .s:bg_none
exe "hi! MoreMsg"        .s:fmt_none   .s:fg_blue   .s:bg_none
exe "hi! ModeMsg"        .s:fmt_none   .s:fg_blue   .s:bg_none
exe "hi! LineNr"         .s:fmt_none   .s:fg_base01 .s:bg_base02
exe "hi! Question"       .s:fmt_bold   .s:fg_cyan   .s:bg_none
if g:solarized_contrast == "lifepillar"
  exe "hi! VertSplit"      .s:fmt_none   .s:fg_base02 .s:bg_base02
else
  " Changed by Lifepillar: lighter vertical bars:
  exe "hi! VertSplit"      .s:fmt_none   .s:fg_base01  .s:bg_base01
endif
exe "hi! Title"          .s:fmt_bold   .s:fg_orange .s:bg_none
exe "hi! VisualNOS"      .s:fmt_stnd   .s:fg_none   .s:bg_base02 .s:fmt_revbb
exe "hi! WarningMsg"     .s:fmt_bold   .s:fg_red    .s:bg_none
exe "hi! WildMenu"       .s:fmt_none   .s:fg_base2  .s:bg_base02 .s:fmt_revbb
exe "hi! Folded"         .s:fmt_undb   .s:fg_base0  .s:bg_base02  .s:sp_base03
exe "hi! FoldColumn"     .s:fmt_none   .s:fg_base0  .s:bg_base02
if      (g:solarized_diffmode =="high") " diffmode
exe "hi! DiffAdd"        .s:fmt_revr   .s:fg_green  .s:bg_none
exe "hi! DiffChange"     .s:fmt_revr   .s:fg_yellow .s:bg_none
exe "hi! DiffDelete"     .s:fmt_revr   .s:fg_red    .s:bg_none
exe "hi! DiffText"       .s:fmt_revr   .s:fg_blue   .s:bg_none
elseif  (g:solarized_diffmode=="low")
exe "hi! DiffAdd"        .s:fmt_undr   .s:fg_green  .s:bg_none   .s:sp_green
exe "hi! DiffChange"     .s:fmt_undr   .s:fg_yellow .s:bg_none   .s:sp_yellow
exe "hi! DiffDelete"     .s:fmt_bold   .s:fg_red    .s:bg_none
exe "hi! DiffText"       .s:fmt_undr   .s:fg_blue   .s:bg_none   .s:sp_blue
else " normal
exe "hi! DiffAdd"        .s:fmt_bold   .s:fg_green  .s:bg_base02 .s:sp_green
exe "hi! DiffChange"     .s:fmt_bold   .s:fg_yellow .s:bg_base02 .s:sp_yellow
exe "hi! DiffDelete"     .s:fmt_bold   .s:fg_red    .s:bg_base02
exe "hi! DiffText"       .s:fmt_bold   .s:fg_blue   .s:bg_base02 .s:sp_blue
endif
" Changed by Lifepillar: set s:bg_none for SignColumn:
exe "hi! SignColumn"     .s:fmt_none   .s:fg_base0  .s:bg_none
exe "hi! Conceal"        .s:fmt_none   .s:fg_blue   .s:bg_none
exe "hi! SpellBad"       .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_red
exe "hi! SpellCap"       .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_violet
exe "hi! SpellRare"      .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_cyan
exe "hi! SpellLocal"     .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_yellow
exe "hi! Pmenu"          .s:fmt_none   .s:fg_base0  .s:bg_base02  .s:fmt_revbb
exe "hi! PmenuSel"       .s:fmt_none   .s:fg_base01 .s:bg_base2   .s:fmt_revbb
exe "hi! PmenuSbar"      .s:fmt_none   .s:fg_base2  .s:bg_base0   .s:fmt_revbb
exe "hi! PmenuThumb"     .s:fmt_none   .s:fg_base0  .s:bg_base03  .s:fmt_revbb
exe "hi! TabLine"        .s:fmt_undr   .s:fg_base0  .s:bg_base02  .s:sp_base0
exe "hi! TabLineFill"    .s:fmt_undr   .s:fg_base0  .s:bg_base02  .s:sp_base0
exe "hi! TabLineSel"     .s:fmt_undr   .s:fg_base01 .s:bg_base2   .s:sp_base0  .s:fmt_revbbu
exe "hi! CursorColumn"   .s:fmt_none   .s:fg_none   .s:bg_base02
if g:solarized_contrast == 'lifepillar'
  exe "hi! CursorLine"   .s:fmt_uopt   .s:fg_none   .s:bg_base03  .s:sp_base1
else
  exe "hi! CursorLine"   .s:fmt_uopt   .s:fg_none   .s:bg_base02  .s:sp_base1
endif
exe "hi! ColorColumn"    .s:fmt_none   .s:fg_none   .s:bg_base02
exe "hi! Cursor"         .s:fmt_none   .s:fg_base03 .s:bg_base0
hi! link lCursor Cursor
" Changed by Lifepillar: better (in my opinion) highlighting for MatchParen:
if &background == 'dark'
  exe "hi! MatchParen"     .s:fmt_bold   .s:fg_base3  .s:bg_base02
else
  exe "hi! MatchParen"     .s:fmt_bold   .s:fg_base03 .s:bg_base00
endif
"}}}
" vim syntax highlighting "{{{
" ---------------------------------------------------------------------
"exe "hi! vimLineComment" . s:fg_base01 .s:bg_none   .s:fmt_ital
"hi! link vimComment Comment
"hi! link vimLineComment Comment
hi! link vimVar Identifier
hi! link vimFunc Function
hi! link vimUserFunc Function
hi! link helpSpecial Special
hi! link vimSet Normal
hi! link vimSetEqual Normal
exe "hi! vimCommentString"  .s:fmt_none    .s:fg_violet .s:bg_none
exe "hi! vimCommand"        .s:fmt_none    .s:fg_yellow .s:bg_none
exe "hi! vimCmdSep"         .s:fmt_bold    .s:fg_blue   .s:bg_none
exe "hi! helpExample"       .s:fmt_none    .s:fg_base1  .s:bg_none
exe "hi! helpOption"        .s:fmt_none    .s:fg_cyan   .s:bg_none
exe "hi! helpNote"          .s:fmt_none    .s:fg_magenta.s:bg_none
exe "hi! helpVim"           .s:fmt_none    .s:fg_magenta.s:bg_none
exe "hi! helpHyperTextJump" .s:fmt_undr    .s:fg_blue   .s:bg_none
exe "hi! helpHyperTextEntry".s:fmt_none    .s:fg_green  .s:bg_none
exe "hi! vimIsCommand"      .s:fmt_none    .s:fg_base00 .s:bg_none
exe "hi! vimSynMtchOpt"     .s:fmt_none    .s:fg_yellow .s:bg_none
exe "hi! vimSynType"        .s:fmt_none    .s:fg_cyan   .s:bg_none
exe "hi! vimHiLink"         .s:fmt_none    .s:fg_blue   .s:bg_none
exe "hi! vimHiGroup"        .s:fmt_none    .s:fg_blue   .s:bg_none
exe "hi! vimGroup"          .s:fmt_undb    .s:fg_blue   .s:bg_none
"}}}
" diff highlighting "{{{
" ---------------------------------------------------------------------
hi! link diffAdded Statement
hi! link diffLine Identifier
"}}}
" git & gitcommit highlighting "{{{
"git
"exe "hi! gitDateHeader"
"exe "hi! gitIdentityHeader"
"exe "hi! gitIdentityKeyword"
"exe "hi! gitNotesHeader"
"exe "hi! gitReflogHeader"
"exe "hi! gitKeyword"
"exe "hi! gitIdentity"
"exe "hi! gitEmailDelimiter"
"exe "hi! gitEmail"
"exe "hi! gitDate"
"exe "hi! gitMode"
"exe "hi! gitHashAbbrev"
"exe "hi! gitHash"
"exe "hi! gitReflogMiddle"
"exe "hi! gitReference"
"exe "hi! gitStage"
"exe "hi! gitType"
"exe "hi! gitDiffAdded"
"exe "hi! gitDiffRemoved"
"gitcommit
"exe "hi! gitcommitSummary"
exe "hi! gitcommitComment"      .s:fmt_ital     .s:fg_base01    .s:bg_none
hi! link gitcommitUntracked gitcommitComment
hi! link gitcommitDiscarded gitcommitComment
hi! link gitcommitSelected  gitcommitComment
exe "hi! gitcommitUnmerged"     .s:fmt_bold     .s:fg_green     .s:bg_none
exe "hi! gitcommitOnBranch"     .s:fmt_bold     .s:fg_base01    .s:bg_none
exe "hi! gitcommitBranch"       .s:fmt_bold     .s:fg_magenta   .s:bg_none
hi! link gitcommitNoBranch gitcommitBranch
exe "hi! gitcommitDiscardedType".s:fmt_none     .s:fg_red       .s:bg_none
exe "hi! gitcommitSelectedType" .s:fmt_none     .s:fg_green     .s:bg_none
"exe "hi! gitcommitUnmergedType"
"exe "hi! gitcommitType"
"exe "hi! gitcommitNoChanges"
"exe "hi! gitcommitHeader"
exe "hi! gitcommitHeader"       .s:fmt_none     .s:fg_base01    .s:bg_none
exe "hi! gitcommitUntrackedFile".s:fmt_bold     .s:fg_cyan      .s:bg_none
exe "hi! gitcommitDiscardedFile".s:fmt_bold     .s:fg_red       .s:bg_none
exe "hi! gitcommitSelectedFile" .s:fmt_bold     .s:fg_green     .s:bg_none
exe "hi! gitcommitUnmergedFile" .s:fmt_bold     .s:fg_yellow    .s:bg_none
exe "hi! gitcommitFile"         .s:fmt_bold     .s:fg_base0     .s:bg_none
hi! link gitcommitDiscardedArrow gitcommitDiscardedFile
hi! link gitcommitSelectedArrow  gitcommitSelectedFile
hi! link gitcommitUnmergedArrow  gitcommitUnmergedFile
"exe "hi! gitcommitArrow"
"exe "hi! gitcommitOverflow"
"exe "hi! gitcommitBlank"
" }}}
" html highlighting "{{{
" ---------------------------------------------------------------------
exe "hi! htmlTag"           .s:fmt_none .s:fg_base01 .s:bg_none
exe "hi! htmlEndTag"        .s:fmt_none .s:fg_base01 .s:bg_none
exe "hi! htmlTagN"          .s:fmt_bold .s:fg_base1  .s:bg_none
exe "hi! htmlTagName"       .s:fmt_bold .s:fg_blue   .s:bg_none
exe "hi! htmlSpecialTagName".s:fmt_ital .s:fg_blue   .s:bg_none
exe "hi! htmlArg"           .s:fmt_none .s:fg_base00 .s:bg_none
exe "hi! javaScript"        .s:fmt_none .s:fg_yellow .s:bg_none
"}}}
" perl highlighting "{{{
" ---------------------------------------------------------------------
exe "hi! perlHereDoc"    . s:fg_base1  .s:bg_back   .s:fmt_none
exe "hi! perlVarPlain"   . s:fg_yellow .s:bg_back   .s:fmt_none
exe "hi! perlStatementFileDesc". s:fg_cyan.s:bg_back.s:fmt_none

"}}}
" tex highlighting "{{{
" ---------------------------------------------------------------------
exe "hi! texStatement"   . s:fg_cyan   .s:bg_back   .s:fmt_none
exe "hi! texMathZoneX"   . s:fg_yellow .s:bg_back   .s:fmt_none
exe "hi! texMathMatcher" . s:fg_yellow .s:bg_back   .s:fmt_none
exe "hi! texMathMatcher" . s:fg_yellow .s:bg_back   .s:fmt_none
exe "hi! texRefLabel"    . s:fg_yellow .s:bg_back   .s:fmt_none
"}}}
" ruby highlighting "{{{
" ---------------------------------------------------------------------
exe "hi! rubyDefine"     . s:fg_base1  .s:bg_back   .s:fmt_bold
"rubyInclude
"rubySharpBang
"rubyAccess
"rubyPredefinedVariable
"rubyBoolean
"rubyClassVariable
"rubyBeginEnd
"rubyRepeatModifier
"hi! link rubyArrayDelimiter    Special  " [ , , ]
"rubyCurlyBlock  { , , }

"hi! link rubyClass             Keyword
"hi! link rubyModule            Keyword
"hi! link rubyKeyword           Keyword
"hi! link rubyOperator          Operator
"hi! link rubyIdentifier        Identifier
"hi! link rubyInstanceVariable  Identifier
"hi! link rubyGlobalVariable    Identifier
"hi! link rubyClassVariable     Identifier
"hi! link rubyConstant          Type
"}}}
" haskell syntax highlighting"{{{
" ---------------------------------------------------------------------
" For use with syntax/haskell.vim : Haskell Syntax File
" http://www.vim.org/scripts/script.php?script_id=3034
" See also Steffen Siering's github repository:
" http://github.com/urso/dotrc/blob/master/vim/syntax/haskell.vim
" ---------------------------------------------------------------------
"
" Treat True and False specially, see the plugin referenced above
let hs_highlight_boolean=1
" highlight delims, see the plugin referenced above
let hs_highlight_delimiters=1

exe "hi! cPreCondit". s:fg_orange.s:bg_none   .s:fmt_none

exe "hi! VarId"    . s:fg_blue   .s:bg_none   .s:fmt_none
exe "hi! ConId"    . s:fg_yellow .s:bg_none   .s:fmt_none
exe "hi! hsImport" . s:fg_magenta.s:bg_none   .s:fmt_none
exe "hi! hsString" . s:fg_base00 .s:bg_none   .s:fmt_none

exe "hi! hsStructure"        . s:fg_cyan   .s:bg_none   .s:fmt_none
exe "hi! hs_hlFunctionName"  . s:fg_blue   .s:bg_none
exe "hi! hsStatement"        . s:fg_cyan   .s:bg_none   .s:fmt_none
exe "hi! hsImportLabel"      . s:fg_cyan   .s:bg_none   .s:fmt_none
exe "hi! hs_OpFunctionName"  . s:fg_yellow .s:bg_none   .s:fmt_none
exe "hi! hs_DeclareFunction" . s:fg_orange .s:bg_none   .s:fmt_none
exe "hi! hsVarSym"           . s:fg_cyan   .s:bg_none   .s:fmt_none
exe "hi! hsType"             . s:fg_yellow .s:bg_none   .s:fmt_none
exe "hi! hsTypedef"          . s:fg_cyan   .s:bg_none   .s:fmt_none
exe "hi! hsModuleName"       . s:fg_green  .s:bg_none   .s:fmt_undr
hi! link hsImportParams      Delimiter
hi! link hsDelimTypeExport   Delimiter
hi! link hsModuleStartLabel  hsStructure
hi! link hsModuleWhereLabel  hsModuleStartLabel

" following is for the haskell-conceal plugin
" the first two items don't have an impact, but better safe
exe "hi! hsNiceOperator"     . s:fg_cyan   .s:bg_none   .s:fmt_none
exe "hi! hsniceoperator"     . s:fg_cyan   .s:bg_none   .s:fmt_none

"}}}
" pandoc markdown syntax highlighting "{{{
" ---------------------------------------------------------------------

"PandocHiLink pandocNormalBlock
exe "hi! pandocTitleBlock"               .s:fg_blue   .s:bg_none   .s:fmt_none
exe "hi! pandocTitleBlockTitle"          .s:fg_blue   .s:bg_none   .s:fmt_bold
exe "hi! pandocTitleComment"             .s:fg_blue   .s:bg_none   .s:fmt_bold
exe "hi! pandocComment"                  .s:fg_base01 .s:bg_none   .s:fmt_ital
exe "hi! pandocVerbatimBlock"            .s:fg_yellow .s:bg_none   .s:fmt_none
hi! link pandocVerbatimBlockDeep         pandocVerbatimBlock
hi! link pandocCodeBlock                 pandocVerbatimBlock
hi! link pandocCodeBlockDelim            pandocVerbatimBlock
exe "hi! pandocBlockQuote"               .s:fg_blue   .s:bg_none   .s:fmt_none
exe "hi! pandocBlockQuoteLeader1"        .s:fg_blue   .s:bg_none   .s:fmt_none
exe "hi! pandocBlockQuoteLeader2"        .s:fg_cyan   .s:bg_none   .s:fmt_none
exe "hi! pandocBlockQuoteLeader3"        .s:fg_yellow .s:bg_none   .s:fmt_none
exe "hi! pandocBlockQuoteLeader4"        .s:fg_red    .s:bg_none   .s:fmt_none
exe "hi! pandocBlockQuoteLeader5"        .s:fg_base0  .s:bg_none   .s:fmt_none
exe "hi! pandocBlockQuoteLeader6"        .s:fg_base01 .s:bg_none   .s:fmt_none
exe "hi! pandocListMarker"               .s:fg_magenta.s:bg_none   .s:fmt_none
exe "hi! pandocListReference"            .s:fg_magenta.s:bg_none   .s:fmt_undr

" Definitions
" ---------------------------------------------------------------------
let s:fg_pdef = s:fg_violet
exe "hi! pandocDefinitionBlock"              .s:fg_pdef  .s:bg_none  .s:fmt_none
exe "hi! pandocDefinitionTerm"               .s:fg_pdef  .s:bg_none  .s:fmt_stnd
exe "hi! pandocDefinitionIndctr"             .s:fg_pdef  .s:bg_none  .s:fmt_bold
exe "hi! pandocEmphasisDefinition"           .s:fg_pdef  .s:bg_none  .s:fmt_ital
exe "hi! pandocEmphasisNestedDefinition"     .s:fg_pdef  .s:bg_none  .s:fmt_bldi
exe "hi! pandocStrongEmphasisDefinition"     .s:fg_pdef  .s:bg_none  .s:fmt_bold
exe "hi! pandocStrongEmphasisNestedDefinition"   .s:fg_pdef.s:bg_none.s:fmt_bldi
exe "hi! pandocStrongEmphasisEmphasisDefinition" .s:fg_pdef.s:bg_none.s:fmt_bldi
exe "hi! pandocStrikeoutDefinition"          .s:fg_pdef  .s:bg_none  .s:fmt_revr
exe "hi! pandocVerbatimInlineDefinition"     .s:fg_pdef  .s:bg_none  .s:fmt_none
exe "hi! pandocSuperscriptDefinition"        .s:fg_pdef  .s:bg_none  .s:fmt_none
exe "hi! pandocSubscriptDefinition"          .s:fg_pdef  .s:bg_none  .s:fmt_none

" Tables
" ---------------------------------------------------------------------
let s:fg_ptable = s:fg_blue
exe "hi! pandocTable"                        .s:fg_ptable.s:bg_none  .s:fmt_none
exe "hi! pandocTableStructure"               .s:fg_ptable.s:bg_none  .s:fmt_none
hi! link pandocTableStructureTop             pandocTableStructre
hi! link pandocTableStructureEnd             pandocTableStructre
exe "hi! pandocTableZebraLight"              .s:fg_ptable.s:bg_base03.s:fmt_none
exe "hi! pandocTableZebraDark"               .s:fg_ptable.s:bg_base02.s:fmt_none
exe "hi! pandocEmphasisTable"                .s:fg_ptable.s:bg_none  .s:fmt_ital
exe "hi! pandocEmphasisNestedTable"          .s:fg_ptable.s:bg_none  .s:fmt_bldi
exe "hi! pandocStrongEmphasisTable"          .s:fg_ptable.s:bg_none  .s:fmt_bold
exe "hi! pandocStrongEmphasisNestedTable"    .s:fg_ptable.s:bg_none  .s:fmt_bldi
exe "hi! pandocStrongEmphasisEmphasisTable"  .s:fg_ptable.s:bg_none  .s:fmt_bldi
exe "hi! pandocStrikeoutTable"               .s:fg_ptable.s:bg_none  .s:fmt_revr
exe "hi! pandocVerbatimInlineTable"          .s:fg_ptable.s:bg_none  .s:fmt_none
exe "hi! pandocSuperscriptTable"             .s:fg_ptable.s:bg_none  .s:fmt_none
exe "hi! pandocSubscriptTable"               .s:fg_ptable.s:bg_none  .s:fmt_none

" Headings
" ---------------------------------------------------------------------
let s:fg_phead = s:fg_orange
exe "hi! pandocHeading"                      .s:fg_phead .s:bg_none.s:fmt_bold
exe "hi! pandocHeadingMarker"                .s:fg_yellow.s:bg_none.s:fmt_bold
exe "hi! pandocEmphasisHeading"              .s:fg_phead .s:bg_none.s:fmt_bldi
exe "hi! pandocEmphasisNestedHeading"        .s:fg_phead .s:bg_none.s:fmt_bldi
exe "hi! pandocStrongEmphasisHeading"        .s:fg_phead .s:bg_none.s:fmt_bold
exe "hi! pandocStrongEmphasisNestedHeading"  .s:fg_phead .s:bg_none.s:fmt_bldi
exe "hi! pandocStrongEmphasisEmphasisHeading".s:fg_phead .s:bg_none.s:fmt_bldi
exe "hi! pandocStrikeoutHeading"             .s:fg_phead .s:bg_none.s:fmt_revr
exe "hi! pandocVerbatimInlineHeading"        .s:fg_phead .s:bg_none.s:fmt_bold
exe "hi! pandocSuperscriptHeading"           .s:fg_phead .s:bg_none.s:fmt_bold
exe "hi! pandocSubscriptHeading"             .s:fg_phead .s:bg_none.s:fmt_bold

" Links
" ---------------------------------------------------------------------
exe "hi! pandocLinkDelim"                .s:fg_base01 .s:bg_none   .s:fmt_none
exe "hi! pandocLinkLabel"                .s:fg_blue   .s:bg_none   .s:fmt_undr
exe "hi! pandocLinkText"                 .s:fg_blue   .s:bg_none   .s:fmt_undb
exe "hi! pandocLinkURL"                  .s:fg_base00 .s:bg_none   .s:fmt_undr
exe "hi! pandocLinkTitle"                .s:fg_base00 .s:bg_none   .s:fmt_undi
exe "hi! pandocLinkTitleDelim"           .s:fg_base01 .s:bg_none   .s:fmt_undi   .s:sp_base00
exe "hi! pandocLinkDefinition"           .s:fg_cyan   .s:bg_none   .s:fmt_undr   .s:sp_base00
exe "hi! pandocLinkDefinitionID"         .s:fg_blue   .s:bg_none   .s:fmt_bold
exe "hi! pandocImageCaption"             .s:fg_violet .s:bg_none   .s:fmt_undb
exe "hi! pandocFootnoteLink"             .s:fg_green  .s:bg_none   .s:fmt_undr
exe "hi! pandocFootnoteDefLink"          .s:fg_green  .s:bg_none   .s:fmt_bold
exe "hi! pandocFootnoteInline"           .s:fg_green  .s:bg_none   .s:fmt_undb
exe "hi! pandocFootnote"                 .s:fg_green  .s:bg_none   .s:fmt_none
exe "hi! pandocCitationDelim"            .s:fg_magenta.s:bg_none   .s:fmt_none
exe "hi! pandocCitation"                 .s:fg_magenta.s:bg_none   .s:fmt_none
exe "hi! pandocCitationID"               .s:fg_magenta.s:bg_none   .s:fmt_undr
exe "hi! pandocCitationRef"              .s:fg_magenta.s:bg_none   .s:fmt_none

" Main Styles
" ---------------------------------------------------------------------
exe "hi! pandocStyleDelim"               .s:fg_base01 .s:bg_none  .s:fmt_none
exe "hi! pandocEmphasis"                 .s:fg_base0  .s:bg_none  .s:fmt_ital
exe "hi! pandocEmphasisNested"           .s:fg_base0  .s:bg_none  .s:fmt_bldi
exe "hi! pandocStrongEmphasis"           .s:fg_base0  .s:bg_none  .s:fmt_bold
exe "hi! pandocStrongEmphasisNested"     .s:fg_base0  .s:bg_none  .s:fmt_bldi
exe "hi! pandocStrongEmphasisEmphasis"   .s:fg_base0  .s:bg_none  .s:fmt_bldi
exe "hi! pandocStrikeout"                .s:fg_base01 .s:bg_none  .s:fmt_revr
exe "hi! pandocVerbatimInline"           .s:fg_yellow .s:bg_none  .s:fmt_none
exe "hi! pandocSuperscript"              .s:fg_violet .s:bg_none  .s:fmt_none
exe "hi! pandocSubscript"                .s:fg_violet .s:bg_none  .s:fmt_none

exe "hi! pandocRule"                     .s:fg_blue   .s:bg_none  .s:fmt_bold
exe "hi! pandocRuleLine"                 .s:fg_blue   .s:bg_none  .s:fmt_bold
exe "hi! pandocEscapePair"               .s:fg_red    .s:bg_none  .s:fmt_bold
exe "hi! pandocCitationRef"              .s:fg_magenta.s:bg_none   .s:fmt_none
exe "hi! pandocNonBreakingSpace"         . s:fg_red   .s:bg_none  .s:fmt_revr
hi! link pandocEscapedCharacter          pandocEscapePair
hi! link pandocLineBreak                 pandocEscapePair

" Embedded Code
" ---------------------------------------------------------------------
exe "hi! pandocMetadataDelim"            .s:fg_base01 .s:bg_none   .s:fmt_none
exe "hi! pandocMetadata"                 .s:fg_blue   .s:bg_none   .s:fmt_none
exe "hi! pandocMetadataKey"              .s:fg_blue   .s:bg_none   .s:fmt_none
exe "hi! pandocMetadata"                 .s:fg_blue   .s:bg_none   .s:fmt_bold
hi! link pandocMetadataTitle             pandocMetadata

"}}}
" License "{{{
" ---------------------------------------------------------------------
"
" Copyright (c) 2011 Ethan Schoonover
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.
"
" vim:foldmethod=marker:foldlevel=0
"}}}
