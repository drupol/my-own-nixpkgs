{ ... }:
{
  flake = {
    templates = {
      client = {
        path = ../templates/client;
        description = "A basic 'client' template for getting started using your own nixpkgs repository.";
        welcomeText = builtins.readFile ../templates/client/README.md;
      };
      my-own-nixpkgs = {
        path = ../templates/my-own-nixpkgs;
        description = "A basic custom nixpkgs repository for maintaining and promoting your own Nix expressions and packages.";
        welcomeText = builtins.readFile ../templates/my-own-nixpkgs/README.md;
      };
    };
  };
}
