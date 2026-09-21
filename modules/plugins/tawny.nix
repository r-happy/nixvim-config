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
      transparent = false,
    })

    vim.cmd.colorscheme("tawny")
  '';
}
