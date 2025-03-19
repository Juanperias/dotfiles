{pkgs, ...}:
{
   imports = [./browser.nix ./shell.nix];
   programs.niri.enable = true;
   services.flatpak.enable = true;
   services.blueman.enable = true;

   environment.systemPackages = with pkgs; [
    neovim
    kitty 
    git 
    obsidian
    gnome-software
    freshfetch
    spotify
    wget
    eza
    osu-lazer
    xdotool
    gnupg
    gzdoom
    emacs
    gh
    github-desktop
    swww
    foot
    logisim-evolution
    dunst
    libnotify
    hplip
    nixd
    vesktop
    wl-clipboard
    rust-analyzer
    ulauncher
    ripgrep
    libreoffice-qt6
    fd
    zls
    clang # only for neovim
    swaybg
    waybar
    bun
    rustfmt
    zellij
    xwayland-satellite
    (wrapOBS {
        plugins = with obs-studio-plugins; [
          droidcam-obs
        ];
      })
   kdePackages.kdenlive
];
}
