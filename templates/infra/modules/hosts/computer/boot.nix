{
  flake.modules.nixos."hosts/computer" =
    { pkgs, ... }:
    {
      boot = {
        kernelPackages = pkgs.linuxPackages_latest;
        plymouth.enable = true;

        loader = {
          systemd-boot.enable = true;
          efi.canTouchEfiVariables = true;
        };

        kernelModules = [ "kvm-intel" ];

        kernelParams = [
          "quiet"
          "splash"
        ];
      };
    };
}
