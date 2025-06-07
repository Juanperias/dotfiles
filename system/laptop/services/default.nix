{
  pkgs,
  user,
  ...
}: {
  imports = [./audio.nix ./xserver.nix ./networking.nix ./bluetooth.nix ./wm.nix];

  # In this part you will find some services that are very easy to configure.
  services.printing.enable = true;
  services.printing.drivers = [pkgs.hplipWithPlugin];

  virtualisation.virtualbox.host.enable = true;
  users.extraGroups.vboxusers.members = ["juan"];

  programs.virt-manager.enable = true;

  users.groups.libvirtd.members = ["juan"];
  virtualisation.libvirtd.enable = true;

  virtualisation.spiceUSBRedirection.enable = true;

  users.extraGroups.docker.members = [user];
  virtualisation.docker.enable = true;

  time.timeZone = "America/Caracas";

  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "es_VE.UTF-8";
    LC_IDENTIFICATION = "es_VE.UTF-8";
    LC_MEASUREMENT = "es_VE.UTF-8";
    LC_MONETARY = "es_VE.UTF-8";
    LC_NAME = "es_VE.UTF-8";
    LC_NUMERIC = "es_VE.UTF-8";
    LC_PAPER = "es_VE.UTF-8";
    LC_TELEPHONE = "es_VE.UTF-8";
    LC_TIME = "es_VE.UTF-8";
  };
}
