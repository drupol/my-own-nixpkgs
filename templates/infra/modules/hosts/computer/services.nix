{
  flake.modules.nixos."hosts/computer" = {
    services = {
      xserver = {
        xkb = {
          layout = "us";
        };
      };
      thermald.enable = true;
      avahi.enable = true;
      fprintd = {
        enable = true;
      };
    };

  };
}
