{
   programs.fish = {
	enable = true;
	interactiveShellInit = ''
	 zoxide init fish | source
    	 freshfetch 
	'';
   	shellAliases = {
	   emacs = "emacs -nw";
	   ls = " eza -TL 2 --icons";
	};
   };
}
