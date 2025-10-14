{ inputs, ... }:
{
  imports = [ inputs.make-shell.flakeModules.default ];

  perSystem =
    { config, pkgs, ... }:
    {
      make-shells.default = {
        packages = [
          config.packages.example1
          pkgs.local.example2
        ];
        shellHook = ''
          ${pkgs.figlet}/bin/figlet "Dev shell"
          echo "Welcome to the development shell, all the tools you need are here!"
        '';
      };
    };
}
