{ lib, pkgs, ... }:

{
  plugins.dropbar = {
    enable = true;
  };

  extraPlugins = [
    pkgs.vimPlugins.telescope-fzf-native-nvim
  ];

  keymaps = [
    {
      mode = "n";
      key = "<Leader>;";
      action = lib.nixvim.mkRaw ''require("dropbar.api").pick'';
      options.desc = "Pick symbols in winbar";
    }
    {
      mode = "n";
      key = "[;";
      action = lib.nixvim.mkRaw ''require("dropbar.api").goto_context_start'';
      options.desc = "Go to start of current context";
    }
    {
      mode = "n";
      key = "];";
      action = lib.nixvim.mkRaw ''require("dropbar.api").select_next_context'';
      options.desc = "Select next context";
    }
  ];
}
