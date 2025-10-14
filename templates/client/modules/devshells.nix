{ inputs, ... }:
{
  imports = [ inputs.make-shell.flakeModules.default ];

  perSystem =
    { pkgs, ... }:
    {
      make-shells.default = {
        packages = with pkgs; [
          pkgs.local.example1
          pkgs.local.example2
        ];
        shellHook = ''
          ${pkgs.figlet}/bin/figlet "Dev shell"
          echo "Welcome to the development shell, all the tools you need are here!"
        '';
      };
    };
}
