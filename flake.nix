{
  description = "My Nixvim config";

  inputs = {
    nixvim.url = "github:nix-community/nixvim";
    nixpkgs.follows = "nixvim/nixpkgs";
  };

  outputs =
    { nixpkgs, nixvim, ... }:
    let
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      forAllSystems = nixpkgs.lib.genAttrs systems;

      mkNixvim =
        system:
        nixvim.lib.evalNixvim {
          inherit system;
          modules = [
            ./nixvim.nix
          ];
        };
    in
    {
      packages = forAllSystems (
        system:
        let
          configuration = mkNixvim system;
        in
        {
          default = configuration.config.build.package;
        }
      );

      checks = forAllSystems (
        system:
        let
          configuration = mkNixvim system;
        in
        {
          default = configuration.config.build.test;
        }
      );
    };
}
