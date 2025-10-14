{
  flake = {
    modules.nixos.pol =
      { pkgs, ... }:
      {
        programs.fish.enable = true;

        users.users.pol = {
          isNormalUser = true;
          createHome = true;
          extraGroups = [
            "audio"
            "input"
            "networkmanager"
            "sound"
            "tty"
            "wheel"
          ];
          shell = pkgs.fish;
          initialPassword = "id";
        };

        nix.settings.trusted-users = [ "pol" ];
      };
  };
}
