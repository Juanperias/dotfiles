
{user,  ...}: {
  home.username = user;
  home.homeDirectory = "/home/${user}";
  home.packages = [];
  imports = [./gnome.nix ./zoxide.nix ./fish.nix ./zellij.nix];


  home.stateVersion = "23.11";
  
  programs.home-manager.enable = true;
}
