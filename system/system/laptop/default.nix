{pkgs, ...}: {
  imports = [./boot ./services ./users ./pkgs ./hardware.nix ./scripts];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "24.05";
  nixpkgs.config.allowUnfree = true;
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  nix.gc = {
    dates = "weekly";
    automatic = true;
  };

  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    xorg.libX11
    xorg.libXcursor
    xorg.libxcb
    xorg.libXi
    libxkbcommon
];
}
