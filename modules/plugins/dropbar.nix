{ pkgs, ... }:

{
  plugins.dropbar = {
    enable = true;
  };

  extraPlugins = [
    pkgs.vimPlugins.telescope-fzf-native-nvim
  ];
}
