{ ... }:
{

  perSystem =
    { pkgs, ... }:
    {
      devShells.default = pkgs.mkShell {
        packages = [
          pkgs.local.example1
          pkgs.local.example2
        ];
      };
    };
}
