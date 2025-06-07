{pkgs, ...}: {
  home.packages = with pkgs; [
    gnomeExtensions.paperwm
    gnomeExtensions.open-bar
  ];

  gtk = {
    enable = true;
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };

    theme = {
      name = "palenight";
      package = pkgs.palenight-theme;
    };

    cursorTheme = {
      name = "Numix-Cursor";
      package = pkgs.numix-cursor-theme;
    };
  };

  dconf.settings = {
    "org/gnome/shell" = {
      disable-user-extensions = false;

      enabled-extensions = [
        "paperwm@paperwm.github.com"
        "openbar@neuromorph"
      ];
    };
  };
}
