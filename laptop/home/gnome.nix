{pkgs, ...}: {
	home.packages = with pkgs; [
		#gnomeExtensions.open-bar
		gnomeExtensions.hide-top-bar

		gnomeExtensions.paperwm
		gnomeExtensions.runcat
	];
	
	dconf.settings = {
		"org/gnome/shell" = {
			disable-user-extensions = false;
			enabled-extensions = [
				#"openbar@neuromorph"
				"paperwm@paperwm.github.com"
				"runcat@kolesnikov.se"
				"hidetopbar@mathieu.bidon.ca"
			];
		};
		"org/gnome/desktop/interface" = {
			clock-format = "12h";
			enable-animations = true;
		};
	};

     gtk = {
	enable = true;
  
	theme = {
		name = "palenight";
		package = pkgs.palenight-theme;
	};


    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };



	gtk4.extraConfig = {
      		Settings = ''
        		gtk-application-prefer-dark-theme=1
      		'';
    	};	
    };

    home.sessionVariables.GTK_THEME = "palenight";

}
