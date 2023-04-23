#!/bin/sh
# Modify 256-color palette in supported terminals
# Script adapted from https://github.com/chriskempson/base16-shell
set -o errexit

hex2rgb() {
  echo "${1##\#}" | sed 's/.\{2\}/&\//g;s/\/$//'
}

tmux_term="no"
supported="yes"

# Terminal classification
case "$TERM" in
  screen*|tmux*)
    tmux_term="yes"
    ;;
  linux*)
    supported="no"
    ;;
esac

if [ "$supported" = "no" ]; then
  return 2>/dev/null || exit 0
fi

if [ -n "$TMUX" ] && [ "$tmux_term" = "yes" ]; then
  # tell tmux to pass the escape sequences through
  # (Source: http://permalink.gmane.org/gmane.comp.terminal-emulators.tmux.user/1324)
  printf_template="\033Ptmux;\033\033]4;%d;rgb:%s\007\033\\"
  printf_template_var="\033Ptmux;\033\033]%d;rgb:%s\007\033\\"
  printf_template_custom="\033Ptmux;\033\033]%s%s\007\033\\"
elif [ "${TERM%%-*}" = "screen" ]; then
  printf_template="\033P\033]4;%d;rgb:%s\007\033\\"
  printf_template_var="\033P\033]%d;rgb:%s\007\033\\"
  printf_template_custom="\033P\033]%s%s\007\033\\"
else
  printf_template="\033]4;%d;rgb:%s\033\\"
  printf_template_var="\033]%d;rgb:%s\033\\"
  printf_template_custom="\033]%s%s\033\\"
fi

printf $printf_template @term256base03 $(hex2rgb "#002b36")
printf $printf_template @term256base02 $(hex2rgb "#073642")
printf $printf_template @term256base01 $(hex2rgb "#586e75")
printf $printf_template @term256base00 $(hex2rgb "#657b83")
printf $printf_template @term256base0 $(hex2rgb "#839496")
printf $printf_template @term256base1 $(hex2rgb "#93a1a1")
printf $printf_template @term256base2 $(hex2rgb "#eee8d5")
printf $printf_template @term256base3 $(hex2rgb "#fdf6e3")
printf $printf_template @term256yellow $(hex2rgb "#b58900")
printf $printf_template @term256orange $(hex2rgb "#cb4b16")
printf $printf_template @term256red $(hex2rgb "#dc322f")
printf $printf_template @term256magenta $(hex2rgb "#d33682")
printf $printf_template @term256violet $(hex2rgb "#6c71c4")
printf $printf_template @term256blue $(hex2rgb "#268bd2")
printf $printf_template @term256cyan $(hex2rgb "#2aa198")
printf $printf_template @term256green $(hex2rgb "#859900")

# foreground / background / cursor color
# if [ -n "$ITERM_SESSION_ID" ]; then
#   # iTerm2 proprietary escape codes
#   printf $printf_template_custom Pg 93a1a1 # forground
#   printf $printf_template_custom Ph 002b36 # background
#   printf $printf_template_custom Pi 93a1a1 # bold color
#   printf $printf_template_custom Pj 586e75 # selection color
#   printf $printf_template_custom Pk 93a1a1 # selected text color
#   printf $printf_template_custom Pl 93a1a1 # cursor
#   printf $printf_template_custom Pm 002b36 # cursor text
# else
#   printf $printf_template_var 10 $color_foreground
#   printf $printf_template_var 11 $color_background
#   printf $printf_template_var 12 $color_cursor
# fi

unset printf_template
unset printf_template_var
unset printf_template_custom
unset tmux_term
unset supported
