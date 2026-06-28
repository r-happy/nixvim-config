{ pkgs, ... }:

{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      pname = "tawny.nvim";
      version = "git";

      src = pkgs.fetchFromGitHub {
        owner = "r-happy";
        repo = "tawny.nvim";
        rev = "main";
        hash = "sha256-W3XJ8XlI/MSL30O/ZafyPm85irn7lBsqZmBxEVSOV3U=";
      };
    })
  ];

  extraConfigLua = ''
    require("tawny").setup({
      bold = true,
      variant = "dark",
      transparent = true,
    })

    vim.cmd.colorscheme("tawny")
  '';
}
