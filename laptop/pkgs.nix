{pkgs, config, ...}: {
   programs.firefox.enable = true;
   programs.gnupg.agent.enable = true;
   programs = {
  gamescope = {
    enable = true;
    capSysNice = true;
  };
  steam = {
    enable = true;
    gamescopeSession.enable = true;
  };
};

   programs.obs-studio.enableVirtualCamera = true;
   programs.obs-studio.enable = true;

     boot.extraModulePackages = with config.boot.kernelPackages; [
    v4l2loopback
  ];
  boot.extraModprobeConfig = ''
    options v4l2loopback devices=1 video_nr=1 card_label="OBS Cam" exclusive_caps=1
  '';
  security.polkit.enable = true;

   environment.gnome.excludePackages = with pkgs; [
	xterm
	gnome-maps
	gnome-tour
   ];

   environment.systemPackages = with pkgs; [
     git
     gccgo15
     ccls
     xclip
     niri
     #wl-clipboard
     kitty
     tinymist
     typst
     vesktop
     discord
     
     protonup-qt
     wget
     emacs
     steam
     hplip
     texstudio
     zellij
     openjdk8-bootstrap
     dmenu
     texliveFull
     gnupg
     rofi
     calibre
     feh
     haskellPackages.haskell-language-server
     zls
     xclip
     blueman
     prismlauncher
     zed-editor
     flameshot
     pavucontrol
     chroma
     tmux
     ghex
     rust-analyzer
     nixd
     gh
   ];
}
