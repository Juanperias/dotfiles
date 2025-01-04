{pkgs, ...}: {
  imports = [./browser.nix ./shell.nix];

  services.flatpak.enable = true;
  programs.niri.enable = true;

environment.systemPackages = with pkgs; [
    neovim
    git 
    obsidian 
    freshfetch
    zapzap
    spotify
    wget
    emacs
    gh
    swww 
    foot
    dunst
    libnotify
    nixd
    vesktop
    wl-clipboard
    rust-analyzer
    ulauncher
    ripgrep
    fd
    blueman
    waybar
    (wrapOBS {
        plugins = with obs-studio-plugins; [
          droidcam-obs
        ];
      })
];
}
