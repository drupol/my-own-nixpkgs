{ inputs, ... }:

{
  perSystem =
    { system, ... }:
    {
      _module.args.pkgs = import inputs.nixpkgs {
        inherit system;
        overlays = [ inputs.my-own-nixpkgs.overlays.default ];
      };
    };
}
