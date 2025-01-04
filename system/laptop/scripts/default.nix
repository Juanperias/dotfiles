{config, pkgs, ...}:
{
  
  environment.systemPackages = [
    (import ./wallpaper.nix { inherit pkgs; })   
  ];
}

