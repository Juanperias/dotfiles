{pkgs, ...}: {
   programs.firefox.enable = true;

   environment.gnome.excludePackages = with pkgs; [
	xterm
	gnome-maps
	gnome-tour
   ]; 

   environment.systemPackages = with pkgs; [
     git
     gccgo15
     hyprland
     wl-clipboard
     kitty 
     wget
     chroma
     tmux
     rust-analyzer
     nixd
     gh
  ];
}
