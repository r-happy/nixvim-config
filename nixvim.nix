{ pkgs, ... }:

{
  imports = [
    ./modules/options.nix
    ./modules/keymaps.nix
    ./modules/plugins
  ];

  # Keep the closure small: no plugin here uses the remote-plugin providers, and
  # full git pulls in Python, which reaches clang, LLVM, and the Apple SDK on Darwin.
  withRuby = false;
  withPython3 = false;
  dependencies.git.package = pkgs.gitMinimal;

  # The gopls server enables go, but each project's dev shell supplies both.
  dependencies.go.enable = false;
}
