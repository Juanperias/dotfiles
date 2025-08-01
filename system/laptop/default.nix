{
   nix.settings.experimental-features = [ "nix-command" "flakes" ];
   nixpkgs.config.allowUnfree = true;
   security.polkit.enable = true;
   environment.variables.EDITOR = "nvim";


   imports = [ ./boot ./users ./time ./services ./zsh.nix ./hardware.nix ./pkgs.nix ];

   system.stateVersion = "25.05";
}
