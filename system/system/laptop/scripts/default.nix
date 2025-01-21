{config, pkgs, ...}:
{
  
  environment.systemPackages = [
    (import ./wallpaper.nix { inherit pkgs; })
    (import ./commit.nix { inherit pkgs; })
  ];
}

