{ pkgs, tawnyNvim, ... }:

{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      pname = "tawny.nvim";
      version = "git";
      src = tawnyNvim;
    })
  ];

  extraConfigLua = ''
    require("tawny").setup({
      bold = true,
      transparent = true,
    })

    vim.cmd.colorscheme("tawny")
  '';
}
