# Solarized 8: True Colors

This is yet another Solarized theme for Vim. It places itself half way between
the original [Solarized](https://github.com/altercation/vim-colors-solarized)
and the [Flattened](https://github.com/romainl/flattened) variant. It
removes only *some* of the bullshit. The color palette is exactly the same as
in Solarized, of course, although some highlight groups are defined slightly
differently (and better, in my opinion).

The reason for the existence of this project is that the original Solarized
theme does not define `guifg` and `guibg` in terminal Vim, which means that gui
colors cannot be used with versions of Vim supporting true-color terminals.

This colorscheme works **out of the box** if you use:

- NeoVim with true-color support enabled, or
- Vim 7.4.1799 or later with `termguicolors` on,

*and* a true-color enabled terminal (e.g., iTerm). It also works in MacVim and other
GUI versions, of course.

For terminals not supporting true colors, the requirement is the same as for
the other colorschemes: your terminal ASCII colors must be set to the Solarized
palette. The ugly degraded 256-color variant has been removed.


## Installation

If your Vim supports packages (`echo has('packages')` prints `1`), I strongly
recommend that you use them. Just clone this repo inside `pack/*/opt`, e.g.:

    git clone https://github.com/lifepillar/vim-solarized8.git
    \ ~/.vim/pack/themes/opt/solarized8

Otherwise, use your favourite installation method.

There are actually 8 optimized colorschemes:

- `solarized8_dark` and `solarized8_light`: the default Solarized theme;
- `solarized8_dark_low` and `solarized8_light_low`: low-contrast variant;
- `solarized8_dark_high` and `solarized8_light_high`: high-contrast variant;
- `solarized8_dark_flat` and `solarized8_light_flat`: “flat” variant (not
  present in the original Solarized).

To use any of them, put a line like the following in your `.vimrc`:

    colorscheme solarized8_dark

**Note:** if you use Vim packages, there is no need to `packadd
solarized8_dark`. Keep your `runtimepath` clean!


## Configuration

The following options are inherited from Solarized:

- `g:solarized_visibility`: one of `"normal"` (default), `"low"`, `"high"`;
- `g:solarized_diffmode`: one of `"normal"` (default), `"low"`, `"high"`;

The following options were not available in the original Solarized:

- `g:solarized_statusline`: one of `"normal"` (default) or `"low"`.
- `g:solarized_term_italics`: set to `1` if your terminal supports italics
  (default is `0`).

These options may be used with any `solarized8_*` variant.


## Tips

If you want to quickly toggle between dark and light background, you may define
a mapping like the following:

```
nnoremap  <leader>B :<c-u>exe "colors" (get(g:, "colors_name", "") =~# "dark"
    \ ? substitute(g:colors_name, 'dark', 'light', '')
    \ : substitute(g:colors_name, 'light', 'dark', '')
    \ )<cr>
```

To tune the contrast level you may use the following snippet:

```
fun! Solarized8Contrast(delta)
  let l:schemes = map(["_low", "_flat", "", "_high"], '"solarized8_".(&background).v:val')
  exe "colors" l:schemes[((a:delta+index(l:schemes, g:colors_name)) % 4 + 4) % 4]
endf

nmap <leader>- :<c-u>call Solarized8Contrast(-v:count1)<cr>
nmap <leader>+ :<c-u>call Solarized8Contrast(+v:count1)<cr>
```

