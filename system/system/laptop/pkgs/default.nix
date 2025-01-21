{pkgs, ...}: {
  imports = [./browser.nix ./shell.nix];

  services.flatpak.enable = true;
  programs.niri.enable = true;

environment.systemPackages = with pkgs; [
    neovim
    kitty
    gnome-software
    github-desktop 
    git 
    obsidian
    alacritty
    freshfetch
	    zapzap

    spotify
    wget
    osu-lazer
    xdotool
    emacs
    gh
    swww
    hyprshot
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
    clang # only for neovim
    swaybg
    blueman
    waybar
    bun
    xwayland-satellite
    (wrapOBS {
        plugins = with obs-studio-plugins; [
          droidcam-obs
        ];
      })
   kdePackages.kdenlive
];
}
