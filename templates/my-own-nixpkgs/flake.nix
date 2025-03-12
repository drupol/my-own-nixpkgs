{
  description = "Description for the project";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    systems.url = "github:nix-systems/default";
    pkgs-by-name-for-flake-parts.url = "github:drupol/pkgs-by-name-for-flake-parts";
  };

  outputs =
    inputs@{ flake-parts, systems, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = import systems;

      imports = [
        inputs.pkgs-by-name-for-flake-parts.flakeModule
        ./imports/formatter.nix
        ./imports/overlay.nix
        ./imports/pkgs.nix
        ./imports/pkgs-all.nix
        ./imports/pkgs-by-name.nix
      ];

      perSystem =
        { config, pkgs, ... }:
        {
          devShells.default = pkgs.mkShell {
            packages = [
              config.packages.example1
              pkgs.local.example2
            ];
          };
        };
    };
}
