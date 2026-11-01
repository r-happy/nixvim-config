{ pkgs, ... }:

{
  # windows.nvim requires middleclass and animation.nvim;
  # the nixpkgs package declares them as dependencies.
  extraPlugins = with pkgs.vimPlugins; [
    windows-nvim
    middleclass
    animation-nvim
  ];

  extraConfigLua = ''
    require("windows").setup({
      animation = {
        enable = false
      }
    })
  '';
}
