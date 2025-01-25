{pkgs, ...}: {
   imports = [./browser.nix ./shell.nix];
   programs.niri.enable = true;

   environment.systemPackages = with pkgs; [
    neovim
    kitty 
    git 
    obsidian
    freshfetch
    spotify
    wget
    eza
    osu-lazer
    xdotool
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
