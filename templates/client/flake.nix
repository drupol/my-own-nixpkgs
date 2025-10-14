{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    systems.url = "github:nix-systems/default";
    import-tree.url = "github:vic/import-tree";
    make-shell.url = "github:nicknovitski/make-shell";
    treefmt-nix.url = "github:numtide/treefmt-nix";
    # Replace this with your own repository
    my-own-nixpkgs.url = "github:drupol/my-own-nixpkgs?dir=templates/my-own-nixpkgs";
  };

  outputs = inputs: inputs.flake-parts.lib.mkFlake { inherit inputs; } (inputs.import-tree ./modules);
}
