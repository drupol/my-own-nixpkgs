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
        prettier.enable = true;
        nixfmt.enable = true;
        statix.enable = true;
        yamlfmt.enable = true;
      };
      settings = {
        on-unmatched = "fatal";
        global.excludes = [
          ".github/CODEOWNERS"
          ".editorconfig"
          ".prettierrc"
          "*.crt"
          "*.directory"
          "*.face"
          "*.fish"
          "*.png"
          "*.toml"
          "*.svg"
          "*.xml"
          "*/.gitignore"
          "LICENSE"
        ];
      };
    };
  };
}
