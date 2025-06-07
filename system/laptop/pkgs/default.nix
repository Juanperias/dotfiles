
{pkgs, ...}: 
let
  
  nodeDeps = pkgs.node2nix.override {
    nodejs = pkgs.nodejs;
  };
in
{
  imports = [./browser.nix ./shell.nix];

  services.flatpak.enable = true;
  services.blueman.enable = true;

  environment.systemPackages = with pkgs; [
    neovim
    grimblast
     python312Packages.python-lsp-server
    kitty
    irssi
    git
    obsidian
    gnome-software
    freshfetch
    clang-tools
    ghidra
    kdePackages.dolphin
    spotify
    chromium
    ghex
    wget
    eza
    osu-lazer
    xdotool
    gnupg
    gzdoom
    emacs
    blender
    gh
    manim
    python39
    github-desktop
    docker-compose
    swww
    foot
    logisim-evolution
    dunst
    libnotify
    hplip
    nixd
    vtsls
    vesktop
    wl-clipboard
    rust-analyzer
    ulauncher
    ripgrep
    libreoffice-qt6
    fd
            llvmPackages_latest.lldb
        llvmPackages_latest.libllvm
        llvmPackages_latest.libcxx
        llvmPackages_latest.clang
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
