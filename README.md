# nixvim-config

Personal Neovim configuration. Nix language support is included for editing
this repository and dotfiles. Other LSP servers and formatters are supplied by
each project's dev shell; only servers found on PATH at startup are activated.

Start the editor from `nix develop` or a direnv-enabled shell. Restart Neovim
when changing project environments. Frontend projects should install their
locked dependencies so Conform can find their local Prettier executable.
VimTeX keeps its editor integration, but TeX Live and viewer tools must be
provided by the document project's environment.

The companion dotfiles checkout consumes this repository through a local path
input. Commit and share changes in both repositories independently.
