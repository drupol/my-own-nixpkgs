{ pkgs, ... }:

pkgs.writeShellApplication {
  name = "example2-script";
  text = ''
    echo "Hello, world!"
  '';
}
