{ pkgs, ... }:

{
  extraPlugins = [
    pkgs.vimPlugins.vimade
  ];

  extraConfigLua = ''
    require("vimade").setup({
      recipe = { "default", { animate = false } },
      ncmode = "windows",
      fadelevel = 0.75,
    })
  '';
}
