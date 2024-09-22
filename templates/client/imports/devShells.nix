{ ... }:
{

  perSystem =
    { pkgs, ... }:
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
