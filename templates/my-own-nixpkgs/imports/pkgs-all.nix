{ inputs, lib, ... }:
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
      packages = {
        example2 = pkgs.callPackage ../pkgs/example2 { };
      };
    };
}
