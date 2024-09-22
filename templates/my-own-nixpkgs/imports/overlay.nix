{ inputs, ... }:

{
  perSystem =
    { config, system, ... }:
    {
      _module.args.pkgs = import inputs.nixpkgs {
        inherit system;
        overlays = [ inputs.self.overlays.default ];
        config = { };
      };

      overlayAttrs = config.packages;
    };
}
