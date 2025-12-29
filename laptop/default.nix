{pkgs, ...}: {
   nix.settings.experimental-features = [ "nix-command" "flakes" ];
   nixpkgs.config.allowUnfree = true;
   security.polkit.enable = true;
   services.flatpak.enable = true;
   environment.sessionVariables.NIXOS_OZONE_WL = "1";

   environment.variables.EDITOR = "nvim";


   services.printing.enable = true;
   services.printing.drivers = [ pkgs.hplipWithPlugin ];


   imports = [ ./boot ./users ./time ./services ./zsh.nix ./hardware.nix ./pkgs.nix ./dwm ];

   system.stateVersion = "25.05";
   programs.nix-ld = {
    enable = true;
   # package = pkgs.nix-ld-rs;
  };
}
