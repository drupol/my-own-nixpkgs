{ ... }:
{

  perSystem =
    { pkgs, ... }:
    {
      packages = {
        example2 = pkgs.callPackage ../pkgs/example2 { };
      };
    };
}
