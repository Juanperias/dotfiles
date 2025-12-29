{user, ...}: {
	home.username = user;
	home.homeDirectory = "/home/${user}";

	home.packages = [];

	imports = [
		./zsh.nix
		./gnome.nix
		./zoxide.nix
		./bspwm.nix
	];

	programs.home-manager.enable = true;

	home.stateVersion = "22.11";
}
