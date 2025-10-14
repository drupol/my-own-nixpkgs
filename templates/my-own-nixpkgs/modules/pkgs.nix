{ inputs, ... }:

{
  perSystem =
    { config, system, ... }:
    {
      _module.args.pkgs = import inputs.nixpkgs {
        inherit system;
        overlays = [
          (_final: _prev: {
            local = config.packages;
          })
        ];
      };
    };
}
