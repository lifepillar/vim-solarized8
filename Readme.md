# Solarized 8 for Neovim

Solarized 8 Flat Dark      |  Solarized 8 Flat Light
:-------------------------:|:-------------------------:
![](https://raw.github.com/lifepillar/Resources/master/solarized8/solarized8_dark_flat.png)  |  ![](https://raw.github.com/lifepillar/Resources/master/solarized8/solarized8_light_flat.png)

This is yet another Solarized theme for Neovim. It places itself half way between
the original [Solarized](https://github.com/altercation/vim-colors-solarized)
and the [Flattened](https://github.com/romainl/flattened) variant. It
removes only *some* of the bullshit. The color palette is exactly the same as
in Solarized, although some highlight groups are defined slightly
differently (for instance, I have tried to avoid red on blue).

The main reason for the existence of this project is that the original
Solarized theme does not define `guifg` and `guibg` in terminal Vim, making it
unsuitable for Neovim and capable terminals. Instead, this color scheme works
**out of the box everywhere**. For the best experience, you need:

- NeoVim with `termguicolors` set, **and**
- a terminal supporting millions of colors (but see below for workarounds).


## But, my terminal does not have millions of colors!

For terminals not supporting true colors, set `g:solarized_t_Co` to the number
of colors available in your terminal. If that variable is set to `256` then
Solarized 8 will fall back to use an approximate palette based on xterm's 256
colors, which looks more or less like this:

Dark 256 color palette     |  Light 256 color palette
:-------------------------:|:-------------------------:
![](https://raw.github.com/lifepillar/Resources/master/solarized8/solarized8_dark_256.png)  |  ![](https://raw.github.com/lifepillar/Resources/master/solarized8/solarized8_light_256.png)

(Yeah, it looks like a different color scheme: Solarized palette is far away
from xterm colors!)

If you do not like this approximation or if you want to force the use of the 16
terrminal's ANSI colors, do one of the following:

1. modify some of your terminal colors in the range 16–255 to match Solarized
   palette. For this purpose, you may run (*not* source!)
   `scripts/solarized8.sh`; no setting is needed in Vim. For instance, if you
   are using Bash, put this in `.bashrc`:

   ```sh
   sh /path/to/scripts/solarized.sh
   ```

   **Note:** this method is supported only by some terminals. For
   instance, in Apple's Terminal.app, running `solarized.sh` has no effect.

2. Set your terminal's 16 ANSI colors (the colors in the range 0–15) to the
   Solarized palette (how to do that depends on the terminal) *and* add
   `let g:solarized_t_Co=16` to your `vimrc` to instruct Neovim to use your
   terminal's colors. Be aware that, if you force the use of your terminal
   colors in Neovim, but your terminal is not configured to use the Solarized
   palette, your colors will be completely off!

**Note:** whatever method you choose, keep in mind that if your terminal does
not support millions of colors, you must *not* set `termguicolors` (i.e., make
sure that `set termguicolors?` outputs `notermguicolors`).


## What if I happen to work on vt100 or similar?

In the past, Solarized 8 used to complain when your terminal did not support
enough colors. But the current version will gracefully degrade to a (beautiful!)
black&white color scheme. Just `let g:solarized_t_Co=0`:

Solarized 8 B&W variant    | Solarized 8 B&W variant
:-------------------------:|:-------------------------:
![](https://raw.github.com/lifepillar/Resources/master/solarized8/solarized8_bw.png)  |  ![](https://raw.github.com/lifepillar/Resources/master/solarized8/solarized8_bw_solarized.png)


## Installation

I strongly recommend that you use Vim packages. Just clone this repo inside
`pack/*/opt` and checkout the `neovim` branch:

    git clone https://github.com/lifepillar/vim-solarized8.git \
        ~/.vim/pack/themes/start/solarized8
    cd ~/.vim/pack/themes/start/solarized8
    git checkout neovim

Otherwise, use you favourite installation method.

There are actually four optimized<sup>*</sup> color schemes you may load:

- `solarized8_high`: high-contrast variant (screenshot below, first column);
- `solarized8`: the default Solarized theme (screenshot below, second column);
- `solarized8_low`: low-contrast variant (screenshot below, third column);
- `solarized8_flat`: “flat” variant (screenshot below, fourth column).

![](https://raw.github.com/lifepillar/Resources/master/solarized8/solarized8-variants.png)

The “flat” variant does not exist in the original Solarized. It differs from
`solarized8` mainly in how the status line, split bars and tab bar look like:

![](https://raw.github.com/lifepillar/Resources/master/solarized8/solarized8-normal-vs-flat.png)

To use a Solarized 8 color scheme, set the background (`dark` or `light`) then
load the variant you want, e.g.:

```vim
set background=dark
colorscheme solarized8
```

If you opt to use some Vim plugin manager instead, the following should be
added to your `vimrc`, rather than the above, for the color scheme to be loaded
correctly:

```vim
set background=dark
autocmd vimenter * ++nested colorscheme solarized8
```

To switch the background from dark to light or vice versa, just set `background`
accordingly.

If you use Vim packages, there is no need to `packadd solarized8`. Keep your
`runtimepath` clean!

<sup>*</sup> Below is the result of a benchmark I have made using Vim 8.1.1450
 and iTerm 2 v3.2.6 on a MacBook Pro Early 2015 with macOS 10.14.5. To make the
 comparison meaningful, `g:solarized_extra_hi_groups` was set to `1`: Solarized
 8 should load a bit faster if you do not enable additional syntax items. Note
 that Solarized 8 is optimized for what are believed to be the most common use
 cases, i.e., GUI, true-color terminals and 256-color terminals.

<p align="center">
<img width="500" src="https://raw.github.com/lifepillar/Resources/master/solarized8/load_time.png">
</p>


## Options

The following options are inherited from Solarized, although their effects may
be slightly different from those in the original Solarized:

- `g:solarized_visibility`: one of `"normal"` (default), `"low"`, `"high"`:
  controls `CursorLineNr`, `LineNr`, `NonText`, `SpecialKey`, `Title`, and all
  the `Spell*` highlight groups; in light mode, it may also slightly change the
  color for `Cursor` and `MatchParen`;
- `g:solarized_diffmode`: one of `"normal"` (default), `"low"`, `"high"`:
  controls the style of `DiffAdd`, `DiffChange`, `DiffDelete`, and `DiffText`.
- `g:solarized_termtrans`: make terminal background transparent if set to `1`
  (default: `0`).

The following options were not available in the original Solarized:

- `g:solarized_statusline`: one of `"normal"` (default), `"low"` or `"flat"`.
  This affects the “structural” elements of your editor: `StatusLine`,
  `StatusLineNC`, `TabLine`, `TablineFill`, `TabLineSel`, and `VertSplit`.
- `g:solarized_italics`: set to `0` to suppress italics (default is `1`). Note
  that in the terminal whether italics is actually used depends also on the
  font and the terminal environment: setting this option to `1` is not
  guaranteed to work.
- `g:solarized_old_cursor_style`: set to `1` if you want to use the original
  Solarized's cursor style (default: `0`). By default, the cursor is orange or
  red in light themes (depending on `g:solarized_visibility`), and blue in dark
  themes. Please note that your terminal may override the cursor's color, so
  this option is not guaranteed to change the cursor's color.
- `g:solarized_extra_hi_groups`: set to `1` to enable Solarized
  filetype-specific syntax highlighting groups (default is `0`). Please be
  aware that if your Vim is very old you may encounter [an
  issue](https://github.com/vim/vim/issues/4405) with syntax items defined in
  color schemes.

All these options may be used with any Solarized 8 variant.


## Troubleshooting

**Hey, I do not get the right colors when running Vim inside tmux or in my
favourite true-color enabled terminal!**

It may also be necessary to add the following to your `tmux.conf`:

```
# Add truecolor support
set-option -ga terminal-overrides ",xterm-256color:Tc"
# Default terminal is 256 colors
set -g default-terminal "tmux-256color"
```

See also these threads:

- [Colors are off when running Vim via SSH inside tmux](https://github.com/lifepillar/vim-solarized8/issues/4#issuecomment-985416964)
- [Comments look weird in tmux](https://github.com/lifepillar/vim-solarized8/issues/109)



## Hacking

Do you want to hack the theme? Install
[Colortemplate v2](https://github.com/lifepillar/vim-colortemplate), edit the
`templates/*.colortemplate` files, then rebuild the color schemes.

If you extend or improve Solarized 8, please consider submitting a pull request!

