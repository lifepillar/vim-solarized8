fun! s:put(line)
  call append(line('$'), a:line)
endf

for s:solarized_background in ["dark", "light"]
  for s:solarized_contrast in ["low", "normal", "flat", "high"]
    let s:colors_name =  "solarized8_" . s:solarized_background . (s:solarized_contrast != "normal" ? "_" .s:solarized_contrast : "")
    execute "silent" "tabnew" "+setlocal\\ ft=vim"
    execute "file" s:colors_name.".vim"

    call s:put('" Name:         Solarized colorscheme for Vim 8')
    call s:put('" Maintainer:   Lifepillar <lifepillar@lifepillar.me>')
    call s:put('" License:      OSI approved MIT license (see end of this file)')
    call s:put('')
    call s:put('set background='.s:solarized_background)
    call s:put('hi clear')
    call s:put('if exists("syntax_on")')
    call s:put('  syntax reset')
    call s:put('endif')
    call s:put('let colors_name = "' . s:colors_name . '"')
    call s:put('')

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

    let s:colorTable = [
          \ s:base03,
          \ s:base02,
          \ s:base01,
          \ s:base00,
          \ s:base0,
          \ s:base1,
          \ s:base2,
          \ s:base3,
          \ s:yellow,
          \ s:orange,
          \ s:red,
          \ s:magenta,
          \ s:violet,
          \ s:blue,
          \ s:cyan,
          \ s:green
          \ ]

    let s:c           = ",undercurl"
    let s:r           = ",reverse"
    let s:s           = ",standout"
    let s:ou          = ""
    let s:ob          = ""
    let s:back        = s:base03
    let s:b           = ",bold"
    let s:i           = ",italic"
    let s:u           = ""

    if s:solarized_background == "light"
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

    if s:solarized_contrast == "high"
      let s:base01      = s:base00
      let s:base00      = s:base0
      let s:base0       = s:base1
      let s:base1       = s:base2
      let s:base2       = s:base3
    endif
    if s:solarized_contrast == "low"
      let s:back        = s:base02
      let s:ou          = ",underline"
    endif
    if s:solarized_contrast == "flat"
      let s:ou          = ",underline"
    endif

    exe "let s:bg_none      = ' ctermbg=NONE guibg=NONE'"
    exe "let s:bg_back      = ' ctermbg=".s:back[0]    ." guibg=".s:back[1]   ."'"
    exe "let s:bg_base03    = ' ctermbg=".s:base03[0]  ." guibg=".s:base03[1] ."'"
    exe "let s:bg_base02    = ' ctermbg=".s:base02[0]  ." guibg=".s:base02[1] ."'"
    exe "let s:bg_base01    = ' ctermbg=".s:base01[0]  ." guibg=".s:base01[1] ."'"
    exe "let s:bg_base00    = ' ctermbg=".s:base00[0]  ." guibg=".s:base00[1] ."'"
    exe "let s:bg_base0     = ' ctermbg=".s:base0[0]   ." guibg=".s:base0[1]  ."'"
    exe "let s:bg_base1     = ' ctermbg=".s:base1[0]   ." guibg=".s:base1[1]  ."'"
    exe "let s:bg_base2     = ' ctermbg=".s:base2[0]   ." guibg=".s:base2[1]  ."'"
    exe "let s:bg_base3     = ' ctermbg=".s:base3[0]   ." guibg=".s:base3[1]  ."'"
    exe "let s:bg_green     = ' ctermbg=".s:green[0]   ." guibg=".s:green[1]  ."'"
    exe "let s:bg_yellow    = ' ctermbg=".s:yellow[0]  ." guibg=".s:yellow[1] ."'"
    exe "let s:bg_orange    = ' ctermbg=".s:orange[0]  ." guibg=".s:orange[1] ."'"
    exe "let s:bg_red       = ' ctermbg=".s:red[0]     ." guibg=".s:red[1]    ."'"
    exe "let s:bg_magenta   = ' ctermbg=".s:magenta[0] ." guibg=".s:magenta[1]."'"
    exe "let s:bg_violet    = ' ctermbg=".s:violet[0]  ." guibg=".s:violet[1] ."'"
    exe "let s:bg_blue      = ' ctermbg=".s:blue[0]    ." guibg=".s:blue[1]   ."'"
    exe "let s:bg_cyan      = ' ctermbg=".s:cyan[0]    ." guibg=".s:cyan[1]   ."'"

    exe "let s:fg_none      = ' ctermfg=NONE guifg=NONE'"
    exe "let s:fg_back      = ' ctermfg=".s:back[0]    ." guifg=".s:back[1]   ."'"
    exe "let s:fg_base03    = ' ctermfg=".s:base03[0]  ." guifg=".s:base03[1] ."'"
    exe "let s:fg_base02    = ' ctermfg=".s:base02[0]  ." guifg=".s:base02[1] ."'"
    exe "let s:fg_base01    = ' ctermfg=".s:base01[0]  ." guifg=".s:base01[1] ."'"
    exe "let s:fg_base00    = ' ctermfg=".s:base00[0]  ." guifg=".s:base00[1] ."'"
    exe "let s:fg_base0     = ' ctermfg=".s:base0[0]   ." guifg=".s:base0[1]  ."'"
    exe "let s:fg_base1     = ' ctermfg=".s:base1[0]   ." guifg=".s:base1[1]  ."'"
    exe "let s:fg_base2     = ' ctermfg=".s:base2[0]   ." guifg=".s:base2[1]  ."'"
    exe "let s:fg_base3     = ' ctermfg=".s:base3[0]   ." guifg=".s:base3[1]  ."'"
    exe "let s:fg_green     = ' ctermfg=".s:green[0]   ." guifg=".s:green[1]  ."'"
    exe "let s:fg_yellow    = ' ctermfg=".s:yellow[0]  ." guifg=".s:yellow[1] ."'"
    exe "let s:fg_orange    = ' ctermfg=".s:orange[0]  ." guifg=".s:orange[1] ."'"
    exe "let s:fg_red       = ' ctermfg=".s:red[0]     ." guifg=".s:red[1]    ."'"
    exe "let s:fg_magenta   = ' ctermfg=".s:magenta[0] ." guifg=".s:magenta[1]."'"
    exe "let s:fg_violet    = ' ctermfg=".s:violet[0]  ." guifg=".s:violet[1] ."'"
    exe "let s:fg_blue      = ' ctermfg=".s:blue[0]    ." guifg=".s:blue[1]   ."'"
    exe "let s:fg_cyan      = ' ctermfg=".s:cyan[0]    ." guifg=".s:cyan[1]   ."'"

    exe "let s:fmt_none     = ' cterm=NONE gui=NONE"           ."'"
    exe "let s:fmt_bold     = ' cterm=NONE".s:b        ." gui=NONE".s:b       ."'"
    exe "let s:fmt_bldi     = ' cterm=NONE".s:b        ." gui=NONE".s:b       ."'"
    exe "let s:fmt_bldu     = ' cterm=NONE,bold,underline gui=NONE,bold,underline'"
    exe "let s:fmt_undr     = ' cterm=NONE".s:u        ." gui=NONE".s:u       ."'"
    exe "let s:fmt_undb     = ' cterm=NONE".s:u.s:b    ." gui=NONE".s:u.s:b   ."'"
    exe "let s:fmt_undi     = ' cterm=NONE".s:u        ." gui=NONE".s:u       ."'"
    exe "let s:fmt_uopt     = ' cterm=NONE".s:ou       ." gui=NONE".s:ou      ."'"
    exe "let s:fmt_curl     = ' cterm=NONE".s:c        ." gui=NONE".s:c       ."'"
    exe "let s:fmt_ital     = ' cterm=NONE"            ." gui=NONE".s:i       ."'"
    exe "let s:fmt_stnd     = ' cterm=NONE".s:s        ." gui=NONE".s:s       ."'"
    exe "let s:fmt_revr     = ' cterm=NONE".s:r        ." gui=NONE".s:r       ."'"
    exe "let s:fmt_revb     = ' cterm=NONE".s:r.s:b    ." gui=NONE".s:r.s:b   ."'"
    " revbb (reverse bold for bright colors) is only set to actual bold in low
    " color terminals (t_co=8, such as OS X Terminal.app) and should only be used
    " with colors 8-15.
    exe "let s:fmt_revbb    = ' cterm=NONE".s:r        ." gui=NONE".s:r       ."'"
    exe "let s:fmt_revbbu   = ' cterm=NONE".s:r.s:u    ." gui=NONE".s:r.s:u   ."'"

    exe "let s:sp_none      = ' guisp=NONE'"
    exe "let s:sp_back      = ' guisp=".s:back[1]   ."'"
    exe "let s:sp_base03    = ' guisp=".s:base03[1] ."'"
    exe "let s:sp_base02    = ' guisp=".s:base02[1] ."'"
    exe "let s:sp_base01    = ' guisp=".s:base01[1] ."'"
    exe "let s:sp_base00    = ' guisp=".s:base00[1] ."'"
    exe "let s:sp_base0     = ' guisp=".s:base0[1]  ."'"
    exe "let s:sp_base1     = ' guisp=".s:base1[1]  ."'"
    exe "let s:sp_base2     = ' guisp=".s:base2[1]  ."'"
    exe "let s:sp_base3     = ' guisp=".s:base3[1]  ."'"
    exe "let s:sp_green     = ' guisp=".s:green[1]  ."'"
    exe "let s:sp_yellow    = ' guisp=".s:yellow[1] ."'"
    exe "let s:sp_orange    = ' guisp=".s:orange[1] ."'"
    exe "let s:sp_red       = ' guisp=".s:red[1]    ."'"
    exe "let s:sp_magenta   = ' guisp=".s:magenta[1]."'"
    exe "let s:sp_violet    = ' guisp=".s:violet[1] ."'"
    exe "let s:sp_blue      = ' guisp=".s:blue[1]   ."'"
    exe "let s:sp_cyan      = ' guisp=".s:cyan[1]   ."'"

    "}}}
    if s:solarized_contrast ==# "flat"
      call s:put  ("if !has('gui_running') && get(g:, 'solarized_termtrans', 0)")
      call s:put  ("  hi! Normal"         .s:fmt_none   .s:fg_base0  .s:bg_none)
      call s:put  ("else")
      call s:put  ("  hi! Normal"         .s:fmt_none   .s:fg_base0  .s:bg_back)
      call s:put  ("endif")
      call s:put  ("hi! LineNr"           .s:fmt_none   .s:fg_base01 .s:bg_none)
      if s:solarized_background ==# "dark"
        call s:put("hi! CursorLineNr"                                .s:bg_none)
      else
        call s:put("hi! CursorLineNr"                                .s:bg_none)
      endif
      call s:put  ("hi! Folded"           .s:fmt_undb   .s:fg_base0  .s:bg_none  .s:sp_base03)
      call s:put  ("hi! FoldColumn"       .s:fmt_none   .s:fg_base0  .s:bg_none)
    else " Not flat
      call s:put  ("if !has('gui_running') && get(g:, 'solarized_termtrans', 0)")
      call s:put  ("  hi! Normal"         .s:fmt_none   .s:fg_base0  .s:bg_none)
      call s:put  ("  hi! CursorLineNr"                              .s:bg_none)
      call s:put  ("  hi! LineNr"                                    .s:bg_none)
      call s:put  ("  hi! Folded"                                    .s:bg_none)
      call s:put  ("  hi! FoldColumn"                                .s:bg_none)
      call s:put  ("else")
      call s:put  ("  hi! Normal"         .s:fmt_none   .s:fg_base0  .s:bg_back)
      call s:put  ("  hi! CursorLineNr"                              .s:bg_base02)
      call s:put  ("  hi! LineNr"                                    .s:bg_base02)
      call s:put  ("  hi! Folded"                                    .s:bg_base02)
      call s:put  ("  hi! FoldColumn"                                .s:bg_base02)
      call s:put  ("endif")
    endif

    " Basic highlighting"{{{
    " ---------------------------------------------------------------------
    " note that link syntax to avoid duplicate configuration doesn't work with the
    " call s:put(compiled formats)

    call s:put("hi! Comment"        .s:fmt_ital   .s:fg_base01 .s:bg_none)
    "       *Comment         any comment

    call s:put("hi! Constant"       .s:fmt_none   .s:fg_cyan   .s:bg_none)
    "       *Constant        any constant
    "        String          a string constant: "this is a string"
    "        Character       a character constant: 'c', '\n'
    "        Number          a number constant: 234, 0xff
    "        Boolean         a boolean constant: TRUE, false
    "        Float           a floating point constant: 2.3e10

    call s:put("hi! Identifier"     .s:fmt_none   .s:fg_blue   .s:bg_none)
    "       *Identifier      any variable name
    "        Function        function name (also: methods for classes)
    "
    call s:put("hi! Statement"      .s:fmt_none   .s:fg_green  .s:bg_none)
    "       *Statement       any statement
    "        Conditional     if, then, else, endif, switch, etc.
    "        Repeat          for, do, while, etc.
    "        Label           case, default, etc.
    "        Operator        "sizeof", "+", "*", etc.
    "        Keyword         any other keyword
    "        Exception       try, catch, throw

    call s:put("hi! PreProc"        .s:fmt_none   .s:fg_orange .s:bg_none)
    "       *PreProc         generic Preprocessor
    "        Include         preprocessor #include
    "        Define          preprocessor #define
    "        Macro           same as Define
    "        PreCondit       preprocessor #if, #else, #endif, etc.

    call s:put("hi! Type"           .s:fmt_none   .s:fg_yellow .s:bg_none)
    "       *Type            int, long, char, etc.
    "        StorageClass    static, register, volatile, etc.
    "        Structure       struct, union, enum, etc.
    "        Typedef         A typedef

    " Changed by Lifepillar: avoid red on dark background, use orange instead:
    call s:put("hi! Special"        .s:fmt_none   .s:fg_orange    .s:bg_none)
    "       *Special         any special symbol
    "        SpecialChar     special character in a constant
    "        Tag             you can use CTRL-] on this
    "        Delimiter       character that needs attention
    "        SpecialComment  special things inside a comment
    "        Debug           debugging statements

    call s:put("hi! Underlined"     .s:fmt_none   .s:fg_violet .s:bg_none)
    "       *Underlined      text that stands out, HTML links

    call s:put("hi! Ignore"         .s:fmt_none   .s:fg_none   .s:bg_none)
    "       *Ignore          left blank, hidden  |hl-Ignore|

    call s:put("hi! Error"          .s:fmt_bold   .s:fg_red    .s:bg_none)
    "       *Error           any erroneous construct

    call s:put("hi! Todo"           .s:fmt_bold   .s:fg_magenta.s:bg_none)
    "       *Todo            anything that needs extra attention; mostly the
    "                        keywords TODO FIXME and XXX
    "
    call s:put("hi! link QuickFixLine Search")
    "}}}
    " Extended highlighting "{{{
    " ---------------------------------------------------------------------
    if s:solarized_background ==# "dark"
      call s:put("hi! MatchParen"     .s:fmt_bold   .s:fg_base3  .s:bg_base02)
      call s:put("if get(g:, 'solarized_old_cursor_style', 0)")
      call s:put("  hi! Cursor"       .s:fmt_none   .s:fg_base03 .s:bg_base0) " As in original Solarized
      call s:put("else")
      call s:put("  hi! Cursor"       .s:fmt_none   .s:fg_base3  .s:bg_blue)
      call s:put("endif")
    endif

    " High visibility
    call s:put('if get(g:, "solarized_visibility", "") == "high"')
    if s:solarized_background ==# "dark"
      call s:put("  hi! SpecialKey"     .s:fmt_revr   .s:fg_orange    .s:bg_none)
      call s:put("  hi! NonText"        .s:fmt_bold   .s:fg_orange    .s:bg_none)
      call s:put("  hi! CursorLineNr"   .s:fmt_bold   .s:fg_orange)
      call s:put("  hi! Title"          .s:fmt_bold   .s:fg_yellow    .s:bg_none)
    else " light
      call s:put("  hi! SpecialKey"     .s:fmt_revr   .s:fg_red       .s:bg_none)
      call s:put("  hi! NonText"        .s:fmt_bold   .s:fg_red       .s:bg_none)
      call s:put("  hi! CursorLineNr"   .s:fmt_bold   .s:fg_red)
      call s:put("  hi! Title"          .s:fmt_bold   .s:fg_orange    .s:bg_none)
      if s:solarized_background ==# "light"
        if s:solarized_contrast ==# "flat"
          call s:put("  hi! MatchParen"   .s:fmt_bldu   .s:fg_orange    .s:bg_base02)
        elseif s:solarized_contrast ==# "low"
          call s:put("  hi! MatchParen"   .s:fmt_bldu   .s:fg_base3     .s:bg_none)
        else
          call s:put("  hi! MatchParen"   .s:fmt_bold   .s:fg_base03    .s:bg_base00)
        endif
        call s:put("  if get(g:, 'solarized_old_cursor_style', 0)")
        call s:put("    hi! Cursor"       .s:fmt_none   .s:fg_base03 .s:bg_base0) " As in original Solarized
        call s:put("  else")
        call s:put("    hi! Cursor"       .s:fmt_none   .s:fg_base03 .s:bg_red)
        call s:put("  endif")
      endif
    endif

    " Low visibility
    call s:put('elseif get(g:, "solarized_visibility", "") == "low"')
    call s:put("  hi! SpecialKey"       .s:fmt_bold   .s:fg_base02    .s:bg_none)
    call s:put("  hi! NonText"          .s:fmt_bold   .s:fg_base02    .s:bg_none)
    call s:put("  hi! CursorLineNr"     .s:fmt_bold   .s:fg_base01)
    call s:put("  hi! Title"            .s:fmt_bold   .s:fg_base01    .s:bg_none)
    if s:solarized_background ==# "light"
      if s:solarized_contrast ==# "flat"
        call s:put("  hi! MatchParen"     .s:fmt_bold   .s:fg_orange    .s:bg_base02)
      elseif s:solarized_contrast ==# "low"
        call s:put("  hi! MatchParen"     .s:fmt_bold   .s:fg_base3     .s:bg_base02)
      else
        call s:put("  hi! MatchParen"     .s:fmt_bldu   .s:fg_red       .s:bg_base02)
      endif
      call s:put("  if get(g:, 'solarized_old_cursor_style', 0)")
      call s:put("    hi! Cursor"       .s:fmt_none   .s:fg_base03 .s:bg_base0) " As in original Solarized
      call s:put("  else")
      call s:put("    hi! Cursor"       .s:fmt_none   .s:fg_base03 .s:bg_orange)
      call s:put("  endif")
    endif

    " Normal visibility
    call s:put('else')
    call s:put("  hi! SpecialKey"       .s:fmt_bold   .s:fg_base00    .s:bg_base02)
    call s:put("  hi! NonText"          .s:fmt_bold   .s:fg_base00    .s:bg_none)
    call s:put("  hi! CursorLineNr"     .s:fmt_bold   .s:fg_base0)
    if s:solarized_background == "dark"
      call s:put("  hi! Title"          .s:fmt_bold   .s:fg_yellow    .s:bg_none)
    else
      call s:put("  hi! Title"          .s:fmt_bold   .s:fg_orange    .s:bg_none)
    endif
    if s:solarized_background ==# "light"
      if s:solarized_contrast ==# "flat"
        call s:put("  hi! MatchParen"     .s:fmt_bold   .s:fg_orange    .s:bg_base02)
      elseif s:solarized_contrast ==# "low"
        call s:put("  hi! MatchParen"     .s:fmt_bold   .s:fg_base3     .s:bg_base02)
      else
        call s:put("  hi! MatchParen"     .s:fmt_bldu   .s:fg_red       .s:bg_base02)
      endif
      call s:put("  if get(g:, 'solarized_old_cursor_style', 0)")
      call s:put("    hi! Cursor"       .s:fmt_none   .s:fg_base03 .s:bg_base0) " As in original Solarized
      call s:put("  else")
      call s:put("    hi! Cursor"       .s:fmt_none   .s:fg_base03 .s:bg_orange)
      call s:put("  endif")
    endif
    call s:put('endif')
    " End visibility

    if s:solarized_contrast != "flat"
      if s:solarized_background == "dark"
        call s:put("hi! NormalMode" . s:fg_base0  .s:bg_base3. s:fmt_revbb)
        call s:put("hi! InsertMode" . s:fg_cyan   .s:bg_base3. s:fmt_revbb)
        call s:put("hi! ReplaceMode". s:fg_orange .s:bg_base3. s:fmt_revbb)
        call s:put("hi! VisualMode" . s:fg_magenta.s:bg_base3. s:fmt_revbb)
        call s:put("hi! CommandMode". s:fg_magenta.s:bg_base3. s:fmt_revbb)
      else
        call s:put("hi! NormalMode"  .s:fg_base1  .s:bg_base03. s:fmt_revbb)
        call s:put("hi! InsertMode"  .s:fg_cyan   .s:bg_base03. s:fmt_revbb)
        call s:put("hi! ReplaceMode" .s:fg_orange .s:bg_base03. s:fmt_revbb)
        call s:put("hi! VisualMode"  .s:fg_magenta.s:bg_base03. s:fmt_revbb)
        call s:put("hi! CommandMode" .s:fg_magenta.s:bg_base03. s:fmt_revbb)
      endif
    endif
    call s:put('if get(g:, "solarized_statusline", "") == "low"')
    if s:solarized_contrast == "flat"
      call s:put("  hi! NormalMode"     .s:fg_base02  .s:bg_base1  .s:fmt_revb)
      call s:put("  hi! InsertMode"     .s:bg_cyan    .s:fg_base02 .s:fmt_revb)
      call s:put("  hi! ReplaceMode"    .s:bg_orange  .s:fg_base02 .s:fmt_revb)
      call s:put("  hi! VisualMode"     .s:bg_magenta .s:fg_base02 .s:fmt_revb)
      call s:put("  hi! CommandMode"    .s:bg_magenta .s:fg_base02 .s:fmt_revb)
      call s:put("  hi! StatusLine"     .s:fg_base02  .s:bg_base1  .s:fmt_revb)
      call s:put("  hi! StatusLineNC"   .s:fg_base02  .s:bg_base01 .s:fmt_revbb)
      call s:put("  hi! TabLine"        .s:bg_base02  .s:fg_base01 .s:fmt_none)
      call s:put("  hi! TabLineFill"    .s:bg_base02  .s:fg_base01 .s:fmt_none)
      call s:put("  hi! TabLineSel"     .s:fg_base1   .s:bg_base02 .s:fmt_none)
    else " no flat
      if s:solarized_background == "dark"
        call s:put("  hi! StatusLine"     .s:fg_base01 .s:bg_base2  .s:fmt_revbb)
        if s:solarized_contrast == "high"
          call s:put("  hi! StatusLineNC" .s:fg_base01 .s:bg_base02 .s:fmt_revbb)
          call s:put("  hi! TabLine"      .s:fg_base01 .s:bg_base02 .s:fmt_revbb)
          call s:put("  hi! TabLineFill"  .s:fg_base01 .s:bg_base02 .s:fmt_revbb)
          call s:put("  hi! TabLineSel"   .s:fg_base0  .s:bg_base3  .s:fmt_revbb)
        elseif s:solarized_contrast == "normal"
          call s:put("  hi! StatusLineNC" .s:fg_base01 .s:bg_base02 .s:fmt_revbb)
          call s:put("  hi! TabLine"      .s:fg_base01 .s:bg_base02 .s:fmt_revbb)
          call s:put("  hi! TabLineFill"  .s:fg_base01 .s:bg_base02 .s:fmt_revbb)
          call s:put("  hi! TabLineSel"   .s:fg_base0  .s:bg_base3  .s:fmt_revbb)
        else " low contrast
          call s:put("  hi! StatusLineNC" .s:fg_base01 .s:bg_base1  .s:fmt_revbb)
          call s:put("  hi! TabLine"      .s:fg_base01 .s:bg_base1  .s:fmt_revbb)
          call s:put("  hi! TabLineFill"  .s:fg_base01 .s:bg_base1  .s:fmt_revbb)
          call s:put("  hi! TabLineSel"   .s:fg_base01 .s:bg_base2  .s:fmt_revbb)
        endif
      else " light
        if s:solarized_contrast == "low"
          call s:put("  hi! StatusLine"   .s:fg_base01 .s:bg_base02  .s:fmt_revbb)
          call s:put("  hi! StatusLineNC" .s:fg_base01 .s:bg_base1   .s:fmt_revbb)
          call s:put("  hi! TabLine"      .s:fg_base01 .s:bg_base1   .s:fmt_revbb)
          call s:put("  hi! TabLineFill"  .s:fg_base01 .s:bg_base1   .s:fmt_revbb)
          call s:put("  hi! TabLineSel"   .s:fg_base01 .s:bg_base02  .s:fmt_revbb)
        else
          call s:put("  hi! StatusLine"   .s:fg_base01 .s:bg_base03  .s:fmt_revbb)
          call s:put("  hi! StatusLineNC" .s:fg_base01 .s:bg_base1   .s:fmt_revbb)
          call s:put("  hi! TabLine"      .s:fg_base01 .s:bg_base1   .s:fmt_revbb)
          call s:put("  hi! TabLineFill"  .s:fg_base01 .s:bg_base1   .s:fmt_revbb)
          call s:put("  hi! TabLineSel"   .s:fg_base1  .s:bg_base03  .s:fmt_revbb)
        endif
      endif
    endif
    call s:put('else') " solarized_statusline !=# 'low'
    if s:solarized_contrast == "flat"
      call s:put("  hi! NormalMode"     .s:fg_base02 .s:bg_base2  .s:fmt_revbb)
      call s:put("  hi! InsertMode"     .s:bg_cyan   .s:fg_base02 .s:fmt_revbb)
      call s:put("  hi! ReplaceMode"    .s:bg_orange .s:fg_base02 .s:fmt_revbb)
      call s:put("  hi! VisualMode"     .s:bg_magenta.s:fg_base02 .s:fmt_revbb)
      call s:put("  hi! CommandMode"    .s:bg_magenta.s:fg_base02 .s:fmt_revbb)
      call s:put("  hi! StatusLine"     .s:fg_base02 .s:bg_base2  .s:fmt_revbb)
      call s:put("  hi! StatusLineNC"   .s:fg_base02 .s:bg_base1  .s:fmt_revbb)
      call s:put("  hi! TabLine"        .s:bg_base02  .s:fg_base01 .s:fmt_none)
      call s:put("  hi! TabLineFill"    .s:bg_base02  .s:fg_base01 .s:fmt_none)
      call s:put("  hi! TabLineSel"     .s:fg_base2  .s:bg_base02 .s:fmt_none)
    else " no low, no flat
      if s:solarized_background == "dark"
        call s:put("  hi! StatusLine"     .s:fg_base0  .s:bg_base02 .s:fmt_revbb)
        call s:put("  hi! StatusLineNC"   .s:fg_base01 .s:bg_base02 .s:fmt_revbb)
        call s:put("  hi! TabLine"        .s:fg_base01 .s:bg_base02 .s:fmt_revbb)
        call s:put("  hi! TabLineFill"    .s:fg_base01 .s:bg_base02 .s:fmt_revbb)
        call s:put("  hi! TabLineSel"     .s:fg_base0  .s:bg_base02 .s:fmt_revbb)
      else
        call s:put("  hi! StatusLine"     .s:fg_base1  .s:bg_base02 .s:fmt_revbb)
        call s:put("  hi! StatusLineNC"   .s:fg_base00 .s:bg_base02 .s:fmt_revbb)
        call s:put("  hi! TabLine"        .s:fg_base00 .s:bg_base02 .s:fmt_revbb)
        call s:put("  hi! TabLineFill"    .s:fg_base00 .s:bg_base02 .s:fmt_revbb)
        call s:put("  hi! TabLineSel"     .s:fg_base1  .s:bg_base02 .s:fmt_revbb)
      endif
    endif
    call s:put('endif')
    call s:put("hi! Visual"         .s:fg_base01 .s:bg_base03 .s:fmt_revbb)
    call s:put("hi! Directory"      .s:fmt_none   .s:fg_blue   .s:bg_none)
    " Changed by Lifepillar: ErrorMsg is always white on red, never black on red (pesky)
    call s:put("hi! ErrorMsg"       .s:fmt_revr   .s:fg_red    ." ctermbg=15 guibg=#fdf6e3")
    call s:put("hi! IncSearch"      .s:fmt_stnd   .s:fg_orange .s:bg_none)
    call s:put("hi! Search"         .s:fmt_revr   .s:fg_yellow .s:bg_none)
    call s:put("hi! MoreMsg"        .s:fmt_none   .s:fg_blue   .s:bg_none)
    call s:put("hi! ModeMsg"        .s:fmt_none   .s:fg_blue   .s:bg_none)
    if s:solarized_contrast !=# "flat"
      call s:put("hi! LineNr"         .s:fmt_none   .s:fg_base01)
    endif
    call s:put("hi! Question"       .s:fmt_bold   .s:fg_cyan   .s:bg_none)
    if s:solarized_contrast == "flat"
      call s:put("hi! VertSplit"      .s:fmt_none   .s:fg_base02 .s:bg_base02)
    else
      " Changed by Lifepillar: lighter vertical bars:
      call s:put("hi! VertSplit"      .s:fmt_none   .s:fg_base01  .s:bg_base01)
    endif
    call s:put("hi! VisualNOS"      .s:fg_none    .s:bg_base02    .s:fmt_revbb)
    call s:put("hi! WarningMsg"     .s:fmt_bold   .s:fg_orange    .s:bg_none)
    if s:solarized_contrast == "flat"
      if s:solarized_background == "dark"
        call s:put("hi! WildMenu"       .s:fg_base00 .s:bg_base2   .s:fmt_revbb)
      else
        call s:put("hi! WildMenu"       .s:fg_base01 .s:bg_base03  .s:fmt_revbb)
      endif
    else
      if s:solarized_contrast == "high"
        call s:put("hi! WildMenu"       .s:bg_base2  .s:fg_base02 .s:fmt_revbb)
      else
        call s:put("hi! WildMenu"       .s:fg_base2  .s:bg_base02 .s:fmt_revbb)
      endif
    endif
    if s:solarized_contrast !=# "flat"
      call s:put("hi! Folded"         .s:fmt_undb   .s:fg_base0   .s:sp_base03)
      call s:put("hi! FoldColumn"     .s:fmt_none   .s:fg_base0)
    endif
    call s:put('if get(g:, "solarized_diffmode", "") == "high"')
    call s:put("  hi! DiffAdd"        .s:fmt_revr   .s:fg_green  .s:bg_none)
    call s:put("  hi! DiffChange"     .s:fmt_revr   .s:fg_yellow .s:bg_none)
    call s:put("  hi! DiffDelete"     .s:fmt_revr   .s:fg_red    .s:bg_none)
    call s:put("  hi! DiffText"       .s:fmt_revr   .s:fg_blue   .s:bg_none)
    call s:put('elseif get(g:, "solarized_diffmode", "") == "low"')
    call s:put("  hi! DiffAdd"        .s:fmt_undr   .s:fg_green  .s:bg_none   .s:sp_green)
    call s:put("  hi! DiffChange"     .s:fmt_undr   .s:fg_yellow .s:bg_none   .s:sp_yellow)
    call s:put("  hi! DiffDelete"     .s:fmt_bold   .s:fg_red    .s:bg_none)
    call s:put("  hi! DiffText"       .s:fmt_undr   .s:fg_blue   .s:bg_none   .s:sp_blue)
    call s:put('elseif get(g:, "solarized_diffmode", "") == "bold"')
    call s:put("    hi! DiffAdd"        .s:fmt_bold   .s:fg_green  .s:bg_base02 .s:sp_green)
    call s:put("    hi! DiffChange"     .s:fmt_bold   .s:fg_yellow .s:bg_base02 .s:sp_yellow)
    call s:put("    hi! DiffDelete"     .s:fmt_bold   .s:fg_red    .s:bg_base02)
    call s:put("    hi! DiffText"       .s:fmt_bold   .s:fg_blue   .s:bg_base02 .s:sp_blue)
    call s:put("else")
    call s:put("  hi! DiffAdd"        .s:fmt_none   .s:fg_green  .s:bg_base02 .s:sp_green)
    call s:put("  hi! DiffChange"     .s:fmt_none   .s:fg_yellow .s:bg_base02 .s:sp_yellow)
    call s:put("  hi! DiffDelete"     .s:fmt_none   .s:fg_red    .s:bg_base02)
    call s:put("  hi! DiffText"       .s:fmt_none   .s:fg_blue   .s:bg_base02 .s:sp_blue)
    call s:put("endif")
    " Changed by Lifepillar: set s:bg_none for SignColumn:
    call s:put("hi! SignColumn"     .s:fmt_none   .s:fg_base0  .s:bg_none)
    call s:put("hi! Conceal"        .s:fmt_none   .s:fg_blue   .s:bg_none)
    if s:solarized_background == "dark"
      call s:put("hi! SpellBad"       .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_magenta)
    else
      call s:put("hi! SpellBad"       .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_red)
    endif
    call s:put("hi! SpellCap"       .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_violet)
    call s:put("hi! SpellRare"      .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_cyan)
    call s:put("hi! SpellLocal"     .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_yellow)
    if s:solarized_contrast == "flat"
      if s:solarized_background == "dark"
        call s:put("hi! Pmenu"          .s:fg_base02 .s:bg_base0   .s:fmt_revbb)
        call s:put("hi! PmenuSel"       .s:fg_base00 .s:bg_base2   .s:fmt_revbb)
        call s:put("hi! PmenuSbar"      .s:fg_base02 .s:bg_base01  .s:fmt_revbb)
        call s:put("hi! PmenuThumb"     .s:fg_base01 .s:bg_base03  .s:fmt_revbb)
      else " flat, light
        call s:put("hi! Pmenu"          .s:fg_base02 .s:bg_base0   .s:fmt_revbb)
        call s:put("hi! PmenuSel"       .s:fg_base01 .s:bg_base03  .s:fmt_revbb)
        call s:put("hi! PmenuSbar"      .s:fg_base02 .s:bg_base01  .s:fmt_revbb)
        call s:put("hi! PmenuThumb"     .s:fg_base00 .s:bg_base03  .s:fmt_revbb)
      endif
    else
      call s:put("hi! Pmenu"          .s:fg_base0  .s:bg_base02  .s:fmt_revbb)
      call s:put("hi! PmenuSel"       .s:fg_base01 .s:bg_base2   .s:fmt_revbb)
      call s:put("hi! PmenuSbar"      .s:fg_base2  .s:bg_base0   .s:fmt_revbb)
      call s:put("hi! PmenuThumb"     .s:fg_base0  .s:bg_base03  .s:fmt_revbb)
    endif
    call s:put("hi! CursorColumn"   .s:fmt_none   .s:fg_none   .s:bg_base02)
    if s:solarized_contrast == "flat"
      call s:put("hi! CursorLine"   .s:fmt_uopt   .s:fg_none   .s:bg_base03  .s:sp_base01)
    else
      call s:put("hi! CursorLine"   .s:fmt_uopt   .s:fg_none   .s:bg_base02  .s:sp_base1)
    endif
    call s:put("hi! ColorColumn"    .s:fmt_none   .s:fg_none   .s:bg_base02)
    call s:put("hi! link lCursor Cursor")

    call s:put("if has('nvim')")
    call s:put("  hi! link TermCursor Cursor")
    call s:put("  hi! TermCursorNC"   .s:fg_base03  .s:bg_base01  .s:fmt_none)
    for s:col in sort(s:colorTable, { a,b -> a[0] - b[0] })
      call s:put("  let g:terminal_color_" . s:col[0] . " = '" . s:col[1] . "'")
    endfor
    call s:put("endif")
    "}}}
    " vim syntax highlighting "{{{
    " ---------------------------------------------------------------------
    "call s:put("hi! vimLineComment" . s:fg_base01 .s:bg_none   .s:fmt_ital)
    "hi! link vimComment Comment
    "hi! link vimLineComment Comment
    call s:put("hi! link vimVar Identifier")
    call s:put("hi! link vimFunc Function")
    call s:put("hi! link vimUserFunc Function")
    call s:put("hi! link helpSpecial Special")
    call s:put("hi! link vimSet Normal")
    call s:put("hi! link vimSetEqual Normal")
    call s:put("hi! vimCommentString"  .s:fmt_none    .s:fg_violet .s:bg_none)
    call s:put("hi! vimCommand"        .s:fmt_none    .s:fg_yellow .s:bg_none)
    call s:put("hi! vimCmdSep"         .s:fmt_bold    .s:fg_blue   .s:bg_none)
    call s:put("hi! helpExample"       .s:fmt_none    .s:fg_base1  .s:bg_none)
    call s:put("hi! helpOption"        .s:fmt_none    .s:fg_cyan   .s:bg_none)
    call s:put("hi! helpNote"          .s:fmt_none    .s:fg_magenta.s:bg_none)
    call s:put("hi! helpVim"           .s:fmt_none    .s:fg_magenta.s:bg_none)
    call s:put("hi! helpHyperTextJump" .s:fmt_undr    .s:fg_blue   .s:bg_none)
    call s:put("hi! helpHyperTextEntry".s:fmt_none    .s:fg_green  .s:bg_none)
    call s:put("hi! vimIsCommand"      .s:fmt_none    .s:fg_base00 .s:bg_none)
    call s:put("hi! vimSynMtchOpt"     .s:fmt_none    .s:fg_yellow .s:bg_none)
    call s:put("hi! vimSynType"        .s:fmt_none    .s:fg_cyan   .s:bg_none)
    call s:put("hi! vimHiLink"         .s:fmt_none    .s:fg_blue   .s:bg_none)
    call s:put("hi! vimHiGroup"        .s:fmt_none    .s:fg_blue   .s:bg_none)
    call s:put("hi! vimGroup"          .s:fmt_undb    .s:fg_blue   .s:bg_none)
    "}}}
    " diff highlighting "{{{
    " ---------------------------------------------------------------------
    call s:put("hi! link diffAdded Statement")
    call s:put("hi! link diffLine Identifier")
    "}}}
    " git & gitcommit highlighting "{{{
    "git
    "call s:put("hi! gitDateHeader")
    "call s:put("hi! gitIdentityHeader")
    "call s:put("hi! gitIdentityKeyword")
    "call s:put("hi! gitNotesHeader")
    "call s:put("hi! gitReflogHeader")
    "call s:put("hi! gitKeyword")
    "call s:put("hi! gitIdentity")
    "call s:put("hi! gitEmailDelimiter")
    "call s:put("hi! gitEmail")
    "call s:put("hi! gitDate")
    "call s:put("hi! gitMode")
    "call s:put("hi! gitHashAbbrev")
    "call s:put("hi! gitHash")
    "call s:put("hi! gitReflogMiddle")
    "call s:put("hi! gitReference")
    "call s:put("hi! gitStage")
    "call s:put("hi! gitType")
    "call s:put("hi! gitDiffAdded")
    "call s:put("hi! gitDiffRemoved")
    "gitcommit
    "call s:put("hi! gitcommitSummary")
    call s:put("hi! gitcommitComment"      .s:fmt_ital     .s:fg_base01    .s:bg_none)
    call s:put("hi! link gitcommitUntracked gitcommitComment")
    call s:put("hi! link gitcommitDiscarded gitcommitComment")
    call s:put("hi! link gitcommitSelected gitcommitComment")
    call s:put("hi! gitcommitUnmerged"     .s:fmt_bold     .s:fg_green     .s:bg_none)
    call s:put("hi! gitcommitOnBranch"     .s:fmt_bold     .s:fg_base01    .s:bg_none)
    call s:put("hi! gitcommitBranch"       .s:fmt_bold     .s:fg_magenta   .s:bg_none)
    call s:put("hi! link gitcommitNoBranch gitcommitBranch")
    call s:put("hi! gitcommitDiscardedType".s:fmt_none     .s:fg_red       .s:bg_none)
    call s:put("hi! gitcommitSelectedType" .s:fmt_none     .s:fg_green     .s:bg_none)
    "call s:put("hi! gitcommitUnmergedType")
    "call s:put("hi! gitcommitType")
    "call s:put("hi! gitcommitNoChanges")
    "call s:put("hi! gitcommitHeader")
    call s:put("hi! gitcommitHeader"       .s:fmt_none     .s:fg_base01    .s:bg_none)
    call s:put("hi! gitcommitUntrackedFile".s:fmt_bold     .s:fg_cyan      .s:bg_none)
    call s:put("hi! gitcommitDiscardedFile".s:fmt_bold     .s:fg_red       .s:bg_none)
    call s:put("hi! gitcommitSelectedFile" .s:fmt_bold     .s:fg_green     .s:bg_none)
    call s:put("hi! gitcommitUnmergedFile" .s:fmt_bold     .s:fg_yellow    .s:bg_none)
    call s:put("hi! gitcommitFile"         .s:fmt_bold     .s:fg_base0     .s:bg_none)
    call s:put("hi! link gitcommitDiscardedArrow gitcommitDiscardedFile")
    call s:put("hi! link gitcommitSelectedArrow gitcommitSelectedFile")
    call s:put("hi! link gitcommitUnmergedArrow gitcommitUnmergedFile")
    "call s:put("hi! gitcommitArrow")
    "call s:put("hi! gitcommitOverflow")
    "call s:put("hi! gitcommitBlank")
    " }}}
    " html highlighting "{{{
    " ---------------------------------------------------------------------
    call s:put("hi! htmlTag"           .s:fmt_none .s:fg_base01 .s:bg_none)
    call s:put("hi! htmlEndTag"        .s:fmt_none .s:fg_base01 .s:bg_none)
    call s:put("hi! htmlTagN"          .s:fmt_bold .s:fg_base1  .s:bg_none)
    call s:put("hi! htmlTagName"       .s:fmt_bold .s:fg_blue   .s:bg_none)
    call s:put("hi! htmlSpecialTagName".s:fmt_ital .s:fg_blue   .s:bg_none)
    call s:put("hi! htmlArg"           .s:fmt_none .s:fg_base00 .s:bg_none)
    call s:put("hi! javaScript"        .s:fmt_none .s:fg_yellow .s:bg_none)
    "}}}
    " perl highlighting "{{{
    " ---------------------------------------------------------------------
    call s:put("hi! perlHereDoc"    . s:fg_base1  .s:bg_back   .s:fmt_none)
    call s:put("hi! perlVarPlain"   . s:fg_yellow .s:bg_back   .s:fmt_none)
    call s:put("hi! perlStatementFileDesc". s:fg_cyan.s:bg_back.s:fmt_none)

    "}}}
    " tex highlighting "{{{
    " ---------------------------------------------------------------------
    call s:put("hi! texStatement"   . s:fg_cyan   .s:bg_back   .s:fmt_none)
    call s:put("hi! texMathZoneX"   . s:fg_yellow .s:bg_back   .s:fmt_none)
    call s:put("hi! texMathMatcher" . s:fg_yellow .s:bg_back   .s:fmt_none)
    call s:put("hi! texMathMatcher" . s:fg_yellow .s:bg_back   .s:fmt_none)
    call s:put("hi! texRefLabel"    . s:fg_yellow .s:bg_back   .s:fmt_none)
    "}}}
    " ruby highlighting "{{{
    " ---------------------------------------------------------------------
    call s:put("hi! rubyDefine"     . s:fg_base1  .s:bg_back   .s:fmt_bold)
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

    call s:put("hi! cPreCondit". s:fg_orange.s:bg_none   .s:fmt_none)

    call s:put("hi! VarId"    . s:fg_blue   .s:bg_none   .s:fmt_none)
    call s:put("hi! ConId"    . s:fg_yellow .s:bg_none   .s:fmt_none)
    call s:put("hi! hsImport" . s:fg_magenta.s:bg_none   .s:fmt_none)
    call s:put("hi! hsString" . s:fg_base00 .s:bg_none   .s:fmt_none)

    call s:put("hi! hsStructure"        . s:fg_cyan   .s:bg_none   .s:fmt_none)
    call s:put("hi! hs_hlFunctionName"  . s:fg_blue   .s:bg_none)
    call s:put("hi! hsStatement"        . s:fg_cyan   .s:bg_none   .s:fmt_none)
    call s:put("hi! hsImportLabel"      . s:fg_cyan   .s:bg_none   .s:fmt_none)
    call s:put("hi! hs_OpFunctionName"  . s:fg_yellow .s:bg_none   .s:fmt_none)
    call s:put("hi! hs_DeclareFunction" . s:fg_orange .s:bg_none   .s:fmt_none)
    call s:put("hi! hsVarSym"           . s:fg_cyan   .s:bg_none   .s:fmt_none)
    call s:put("hi! hsType"             . s:fg_yellow .s:bg_none   .s:fmt_none)
    call s:put("hi! hsTypedef"          . s:fg_cyan   .s:bg_none   .s:fmt_none)
    call s:put("hi! hsModuleName"       . s:fg_green  .s:bg_none   .s:fmt_undr)
    call s:put("hi! link hsImportParams Delimiter")
    call s:put("hi! link hsDelimTypeExport Delimiter")
    call s:put("hi! link hsModuleStartLabel hsStructure")
    call s:put("hi! link hsModuleWhereLabel hsModuleStartLabel")

    " following is for the haskell-conceal plugin
    " the first two items don't have an impact, but better safe
    call s:put("hi! hsNiceOperator"     . s:fg_cyan   .s:bg_none   .s:fmt_none)
    call s:put("hi! hsniceoperator"     . s:fg_cyan   .s:bg_none   .s:fmt_none)

    "}}}
    " pandoc markdown syntax highlighting "{{{
    " ---------------------------------------------------------------------

    "PandocHiLink pandocNormalBlock
    call s:put("hi! pandocTitleBlock"               .s:fg_blue   .s:bg_none   .s:fmt_none)
    call s:put("hi! pandocTitleBlockTitle"          .s:fg_blue   .s:bg_none   .s:fmt_bold)
    call s:put("hi! pandocTitleComment"             .s:fg_blue   .s:bg_none   .s:fmt_bold)
    call s:put("hi! pandocComment"                  .s:fg_base01 .s:bg_none   .s:fmt_ital)
    call s:put("hi! pandocVerbatimBlock"            .s:fg_yellow .s:bg_none   .s:fmt_none)
    call s:put("hi! link pandocVerbatimBlockDeep pandocVerbatimBlock")
    call s:put("hi! link pandocCodeBlock pandocVerbatimBlock")
    call s:put("hi! link pandocCodeBlockDelim pandocVerbatimBlock")
    call s:put("hi! pandocBlockQuote"               .s:fg_blue   .s:bg_none   .s:fmt_none)
    call s:put("hi! pandocBlockQuoteLeader1"        .s:fg_blue   .s:bg_none   .s:fmt_none)
    call s:put("hi! pandocBlockQuoteLeader2"        .s:fg_cyan   .s:bg_none   .s:fmt_none)
    call s:put("hi! pandocBlockQuoteLeader3"        .s:fg_yellow .s:bg_none   .s:fmt_none)
    call s:put("hi! pandocBlockQuoteLeader4"        .s:fg_red    .s:bg_none   .s:fmt_none)
    call s:put("hi! pandocBlockQuoteLeader5"        .s:fg_base0  .s:bg_none   .s:fmt_none)
    call s:put("hi! pandocBlockQuoteLeader6"        .s:fg_base01 .s:bg_none   .s:fmt_none)
    call s:put("hi! pandocListMarker"               .s:fg_magenta.s:bg_none   .s:fmt_none)
    call s:put("hi! pandocListReference"            .s:fg_magenta.s:bg_none   .s:fmt_undr)

    " Definitions
    " ---------------------------------------------------------------------
    let s:fg_pdef = s:fg_violet
    call s:put("hi! pandocDefinitionBlock"              .s:fg_pdef  .s:bg_none  .s:fmt_none)
    call s:put("hi! pandocDefinitionTerm"               .s:fg_pdef  .s:bg_none  .s:fmt_stnd)
    call s:put("hi! pandocDefinitionIndctr"             .s:fg_pdef  .s:bg_none  .s:fmt_bold)
    call s:put("hi! pandocEmphasisDefinition"           .s:fg_pdef  .s:bg_none  .s:fmt_ital)
    call s:put("hi! pandocEmphasisNestedDefinition"     .s:fg_pdef  .s:bg_none  .s:fmt_bldi)
    call s:put("hi! pandocStrongEmphasisDefinition"     .s:fg_pdef  .s:bg_none  .s:fmt_bold)
    call s:put("hi! pandocStrongEmphasisNestedDefinition"   .s:fg_pdef.s:bg_none.s:fmt_bldi)
    call s:put("hi! pandocStrongEmphasisEmphasisDefinition" .s:fg_pdef.s:bg_none.s:fmt_bldi)
    call s:put("hi! pandocStrikeoutDefinition"          .s:fg_pdef  .s:bg_none  .s:fmt_revr)
    call s:put("hi! pandocVerbatimInlineDefinition"     .s:fg_pdef  .s:bg_none  .s:fmt_none)
    call s:put("hi! pandocSuperscriptDefinition"        .s:fg_pdef  .s:bg_none  .s:fmt_none)
    call s:put("hi! pandocSubscriptDefinition"          .s:fg_pdef  .s:bg_none  .s:fmt_none)

    " Tables
    " ---------------------------------------------------------------------
    let s:fg_ptable = s:fg_blue
    call s:put("hi! pandocTable"                        .s:fg_ptable.s:bg_none  .s:fmt_none)
    call s:put("hi! pandocTableStructure"               .s:fg_ptable.s:bg_none  .s:fmt_none)
    call s:put("hi! link pandocTableStructureTop pandocTableStructre")
    call s:put("hi! link pandocTableStructureEnd pandocTableStructre")
    call s:put("hi! pandocTableZebraLight"              .s:fg_ptable.s:bg_base03.s:fmt_none)
    call s:put("hi! pandocTableZebraDark"               .s:fg_ptable.s:bg_base02.s:fmt_none)
    call s:put("hi! pandocEmphasisTable"                .s:fg_ptable.s:bg_none  .s:fmt_ital)
    call s:put("hi! pandocEmphasisNestedTable"          .s:fg_ptable.s:bg_none  .s:fmt_bldi)
    call s:put("hi! pandocStrongEmphasisTable"          .s:fg_ptable.s:bg_none  .s:fmt_bold)
    call s:put("hi! pandocStrongEmphasisNestedTable"    .s:fg_ptable.s:bg_none  .s:fmt_bldi)
    call s:put("hi! pandocStrongEmphasisEmphasisTable"  .s:fg_ptable.s:bg_none  .s:fmt_bldi)
    call s:put("hi! pandocStrikeoutTable"               .s:fg_ptable.s:bg_none  .s:fmt_revr)
    call s:put("hi! pandocVerbatimInlineTable"          .s:fg_ptable.s:bg_none  .s:fmt_none)
    call s:put("hi! pandocSuperscriptTable"             .s:fg_ptable.s:bg_none  .s:fmt_none)
    call s:put("hi! pandocSubscriptTable"               .s:fg_ptable.s:bg_none  .s:fmt_none)

    " Headings
    " ---------------------------------------------------------------------
    let s:fg_phead = s:fg_orange
    call s:put("hi! pandocHeading"                      .s:fg_phead .s:bg_none.s:fmt_bold)
    call s:put("hi! pandocHeadingMarker"                .s:fg_yellow.s:bg_none.s:fmt_bold)
    call s:put("hi! pandocEmphasisHeading"              .s:fg_phead .s:bg_none.s:fmt_bldi)
    call s:put("hi! pandocEmphasisNestedHeading"        .s:fg_phead .s:bg_none.s:fmt_bldi)
    call s:put("hi! pandocStrongEmphasisHeading"        .s:fg_phead .s:bg_none.s:fmt_bold)
    call s:put("hi! pandocStrongEmphasisNestedHeading"  .s:fg_phead .s:bg_none.s:fmt_bldi)
    call s:put("hi! pandocStrongEmphasisEmphasisHeading".s:fg_phead .s:bg_none.s:fmt_bldi)
    call s:put("hi! pandocStrikeoutHeading"             .s:fg_phead .s:bg_none.s:fmt_revr)
    call s:put("hi! pandocVerbatimInlineHeading"        .s:fg_phead .s:bg_none.s:fmt_bold)
    call s:put("hi! pandocSuperscriptHeading"           .s:fg_phead .s:bg_none.s:fmt_bold)
    call s:put("hi! pandocSubscriptHeading"             .s:fg_phead .s:bg_none.s:fmt_bold)

    " Links
    " ---------------------------------------------------------------------
    call s:put("hi! pandocLinkDelim"                .s:fg_base01 .s:bg_none   .s:fmt_none)
    call s:put("hi! pandocLinkLabel"                .s:fg_blue   .s:bg_none   .s:fmt_undr)
    call s:put("hi! pandocLinkText"                 .s:fg_blue   .s:bg_none   .s:fmt_undb)
    call s:put("hi! pandocLinkURL"                  .s:fg_base00 .s:bg_none   .s:fmt_undr)
    call s:put("hi! pandocLinkTitle"                .s:fg_base00 .s:bg_none   .s:fmt_undi)
    call s:put("hi! pandocLinkTitleDelim"           .s:fg_base01 .s:bg_none   .s:fmt_undi   .s:sp_base00)
    call s:put("hi! pandocLinkDefinition"           .s:fg_cyan   .s:bg_none   .s:fmt_undr   .s:sp_base00)
    call s:put("hi! pandocLinkDefinitionID"         .s:fg_blue   .s:bg_none   .s:fmt_bold)
    call s:put("hi! pandocImageCaption"             .s:fg_violet .s:bg_none   .s:fmt_undb)
    call s:put("hi! pandocFootnoteLink"             .s:fg_green  .s:bg_none   .s:fmt_undr)
    call s:put("hi! pandocFootnoteDefLink"          .s:fg_green  .s:bg_none   .s:fmt_bold)
    call s:put("hi! pandocFootnoteInline"           .s:fg_green  .s:bg_none   .s:fmt_undb)
    call s:put("hi! pandocFootnote"                 .s:fg_green  .s:bg_none   .s:fmt_none)
    call s:put("hi! pandocCitationDelim"            .s:fg_magenta.s:bg_none   .s:fmt_none)
    call s:put("hi! pandocCitation"                 .s:fg_magenta.s:bg_none   .s:fmt_none)
    call s:put("hi! pandocCitationID"               .s:fg_magenta.s:bg_none   .s:fmt_undr)
    call s:put("hi! pandocCitationRef"              .s:fg_magenta.s:bg_none   .s:fmt_none)

    " Main Styles
    " ---------------------------------------------------------------------
    call s:put("hi! pandocStyleDelim"               .s:fg_base01 .s:bg_none  .s:fmt_none)
    call s:put("hi! pandocEmphasis"                 .s:fg_base0  .s:bg_none  .s:fmt_ital)
    call s:put("hi! pandocEmphasisNested"           .s:fg_base0  .s:bg_none  .s:fmt_bldi)
    call s:put("hi! pandocStrongEmphasis"           .s:fg_base0  .s:bg_none  .s:fmt_bold)
    call s:put("hi! pandocStrongEmphasisNested"     .s:fg_base0  .s:bg_none  .s:fmt_bldi)
    call s:put("hi! pandocStrongEmphasisEmphasis"   .s:fg_base0  .s:bg_none  .s:fmt_bldi)
    call s:put("hi! pandocStrikeout"                .s:fg_base01 .s:bg_none  .s:fmt_revr)
    call s:put("hi! pandocVerbatimInline"           .s:fg_yellow .s:bg_none  .s:fmt_none)
    call s:put("hi! pandocSuperscript"              .s:fg_violet .s:bg_none  .s:fmt_none)
    call s:put("hi! pandocSubscript"                .s:fg_violet .s:bg_none  .s:fmt_none)

    call s:put("hi! pandocRule"                     .s:fg_blue   .s:bg_none  .s:fmt_bold)
    call s:put("hi! pandocRuleLine"                 .s:fg_blue   .s:bg_none  .s:fmt_bold)
    call s:put("hi! pandocEscapePair"               .s:fg_red    .s:bg_none  .s:fmt_bold)
    call s:put("hi! pandocCitationRef"              .s:fg_magenta.s:bg_none   .s:fmt_none)
    call s:put("hi! pandocNonBreakingSpace"         . s:fg_red   .s:bg_none  .s:fmt_revr)
    call s:put("hi! link pandocEscapedCharacter pandocEscapePair")
    call s:put("hi! link pandocLineBreak pandocEscapePair")

    " Embedded Code
    " ---------------------------------------------------------------------
    call s:put("hi! pandocMetadataDelim"            .s:fg_base01 .s:bg_none   .s:fmt_none)
    call s:put("hi! pandocMetadata"                 .s:fg_blue   .s:bg_none   .s:fmt_none)
    call s:put("hi! pandocMetadataKey"              .s:fg_blue   .s:bg_none   .s:fmt_none)
    call s:put("hi! pandocMetadata"                 .s:fg_blue   .s:bg_none   .s:fmt_bold)
    call s:put("hi! link pandocMetadataTitle pandocMetadata")

    "}}}
    " Terminal italic {{{
    call s:put('if get(g:, "solarized_term_italics", 0) != 0')
    call s:put('  hi Comment cterm=italic')
    call s:put('  hi gitcommitComment cterm=italic')
    call s:put('  hi htmlSpecialTagName cterm=italic')
    call s:put('  hi pandocComment cterm=italic')
    call s:put('  hi pandocEmphasisDefinition cterm=italic')
    call s:put('  hi pandocEmphasisTable cterm=italic')
    call s:put('  hi pandocEmphasis cterm=italic')
    call s:put('endif')
    "}}}
    call s:put('" License "{{{')
    call s:put('" ---------------------------------------------------------------------')
    call s:put('"')
    call s:put('" Copyright (c) 2011 Ethan Schoonover')
    call s:put('"')
    call s:put('" Permission is hereby granted, free of charge, to any person obtaining a copy')
    call s:put('" of this software and associated documentation files (the "Software"), to deal')
    call s:put('" in the Software without restriction, including without limitation the rights')
    call s:put('" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell')
    call s:put('" copies of the Software, and to permit persons to whom the Software is')
    call s:put('" furnished to do so, subject to the following conditions:')
    call s:put('"')
    call s:put('" The above copyright notice and this permission notice shall be included in')
    call s:put('" all copies or substantial portions of the Software.')
    call s:put('"')
    call s:put('" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR')
    call s:put('" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,')
    call s:put('" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE')
    call s:put('" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER')
    call s:put('" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,')
    call s:put('" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN')
    call s:put('" THE SOFTWARE.')
    call s:put('"')
    call s:put('" vim:foldmethod=marker:foldlevel=0')
    call s:put('"}}}')
    norm 0d_
  endfor
endfor

