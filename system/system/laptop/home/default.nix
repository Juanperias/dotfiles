
{pkgs, config, user,  ...}: {
  home.username = user;
  home.homeDirectory = "/home/${user}";
  home.packages = with pkgs; [];
  imports = [./gnome.nix ./zoxide.nix ./fish.nix];


  home.stateVersion = "23.11";
  
  programs.home-manager.enable = true;
}
