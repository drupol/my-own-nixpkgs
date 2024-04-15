{ inputs, ... }:

{
  perSystem =
    {
      config,
      self',
      inputs',
      pkgs,
      system,
      ...
    }:
    {
      _module.args.pkgs = import inputs.nixpkgs {
        inherit system;
        overlays = [ inputs.my-own-nixpkgs.overlays.default ];
        config = { };
      };
    };
}
