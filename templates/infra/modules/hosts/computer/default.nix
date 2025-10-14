{
  config,
  ...
}:
{
  flake.modules.nixos."hosts/computer".imports =
    with config.flake.modules.nixos;
    [
      desktop
      # Users
      root
      pol
    ]
    # Specific Home-Manager modules
    ++ [
      {
        home-manager.users.pol.imports = with config.flake.modules.homeManager; [
          desktop
        ];
      }
    ];
}
