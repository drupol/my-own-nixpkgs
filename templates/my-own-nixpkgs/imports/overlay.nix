{ inputs, ... }:

{
  perSystem =
    { config, system, ... }:
    {
      _module.args.pkgs = import inputs.nixpkgs {
        inherit system;
        overlays = [
          (final: prev: {
            local = config.packages;
          })
        ];
      };
    };
}
