{
    programs.zsh = {
	enable = true;

	shellAliases = {
	    n = "nvim .";
	    update = "sudo nixos-rebuild switch --flake ~/.config/system#laptop";
	};

	zplug = {
	    enable = true;
	    plugins = [
		 { name = "zsh-users/zsh-autosuggestions"; }
	    ];
	};

	oh-my-zsh = {
		enable = true;
		plugins = [ "git" "colorize" ];
		theme = "amuse";
	};

	envExtra = ''
	ZSH_COLORIZE_TOOL=chroma
	ZSH_COLORIZE_STYLE="colorful"
	ZSH_COLORIZE_CHROMA_FORMATTER=terminal256
	'';

	history.size = 10000;
    };
}
