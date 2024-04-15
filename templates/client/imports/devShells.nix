{ ... }:
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
      devShells.default = pkgs.mkShell {
        name = "default";
        packages = [
          pkgs.example1
          pkgs.example2
        ];
      };
    };
}
