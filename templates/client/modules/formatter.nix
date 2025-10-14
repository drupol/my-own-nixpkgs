{ inputs, ... }:
{
  imports = [
    inputs.treefmt-nix.flakeModule
  ];

  perSystem = {
    treefmt = {
      projectRootFile = "flake.nix";
      programs = {
        deadnix.enable = true;
        jsonfmt.enable = true;
        nixfmt.enable = true;
        statix.enable = true;
        yamlfmt.enable = true;
      };
      settings = {
        on-unmatched = "fatal";
      };
    };
  };
}
