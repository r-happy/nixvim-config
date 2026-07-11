{ pkgs, ... }:

{
  plugins.dropbar = {
    enable = false;
  };

  extraPlugins = [
    pkgs.vimPlugins.telescope-fzf-native-nvim
  ];
}
