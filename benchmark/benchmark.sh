#/bin/sh
for n in {1..20};
do
  vim -N -i NONE -u vimrc-16-dark --startuptime vimrc-16-dark.txt -c ':qa!'
  vim -N -i NONE -u vimrc-16-light --startuptime vimrc-16-light.txt -c ':qa!'
  vim -N -i NONE -u vimrc-256-dark --startuptime vimrc-256-dark.txt -c ':qa!'
  vim -N -i NONE -u vimrc-256-light --startuptime vimrc-256-light.txt -c ':qa!'
  vim -N -i NONE -u vimrc-termguicolors-dark --startuptime vimrc-termguicolors-dark.txt -c ':qa!'
  vim -N -i NONE -u vimrc-termguicolors-light --startuptime vimrc-termguicolors-light.txt -c ':qa!'
  vim -N -i NONE -u vimrc-dark-solarized --startuptime vimrc-dark-solarized.txt -c ':qa!'
  vim -N -i NONE -u vimrc-light-solarized --startuptime vimrc-light-solarized.txt -c ':qa!'
done
