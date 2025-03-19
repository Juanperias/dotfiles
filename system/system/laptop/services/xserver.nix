{pkgs, ...}: {
  services.xserver.enable = true;
  services.xserver.displayManager.sddm.enable = true;

  #services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  #services.xserver.displayManager.gdm.wayland = true;

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };
}
