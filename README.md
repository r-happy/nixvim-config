# nixvim-config

Personal Neovim configuration. Nix language support is included for editing
this repository and dotfiles. Prettier is bundled so Markdown and other supported
files can be formatted on save from any directory. Other LSP servers and
formatters are supplied by each project's dev shell; only servers found on PATH
at startup are activated.

Start the editor from `nix develop` or a direnv-enabled shell. Restart Neovim
when changing project environments. Frontend projects should install their
locked dependencies so Conform can prefer their local Prettier executable over
the bundled version.
VimTeX keeps its editor integration, but TeX Live and viewer tools must be
provided by the document project's environment.

The companion dotfiles checkout consumes this repository through a local path
input. Commit and share changes in both repositories independently.

Diagnostics are marked in the sign column and underlined in the buffer.
Use `]d` / `[d` to jump to the next / previous diagnostic and show its message.
`Space d l` opens the current buffer's diagnostic list with line and column
numbers; press Enter on an entry to jump there. `Space d d` shows the current
line's diagnostic details.
