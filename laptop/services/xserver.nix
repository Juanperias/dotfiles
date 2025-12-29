{pkgs, ...}: {
    services.xserver.enable = true;

    services.xserver.displayManager.lightdm.enable = true;


    services.displayManager = {
  #gdm.enable = true;
#  sessionPackages = with pkgs; [ gamescope ];
}; 
services.xserver.desktopManager.gnome.enable = true;

   #services.xserver.windowManager.bspwm.enable = true;

    services.xserver.xkb = {
       layout = "us";
       variant = "";
    };
}
