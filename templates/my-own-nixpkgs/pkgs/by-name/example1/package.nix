{ pkgs, ... }:

pkgs.writeShellApplication {
  name = "example1-script";
  text = ''
    echo "Hello, world!"
  '';
}
