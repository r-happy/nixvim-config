{ pkgs, ... }:

{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      pname = "nvimacs";
      version = "git";

      src = pkgs.fetchFromGitHub {
        owner = "sei40kr";
        repo = "nvimacs";
        rev = "main";
        hash = "sha256-f1ryo1Qq9/WMChzvS1gKO/mdxUZ/0TpOS5A9qubxW90=";
      };
    })
  ];
}
