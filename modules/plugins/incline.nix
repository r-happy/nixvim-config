{ pkgs, ... }:

{
  extraPlugins = [
    pkgs.vimPlugins.incline-nvim
  ];

  extraConfigLua = ''
    require("incline").setup({})
  '';
}
