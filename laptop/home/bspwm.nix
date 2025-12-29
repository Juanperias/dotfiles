{pkgs, ...}: {
  home.packages = with pkgs; [ sxhkd ];

  xsession.windowManager.bspwm = {
    enable = true;
    extraConfigEarly = ''
      feh --bg-scale $HOME/wallpaper
      pgrep -x sxhkd > /dev/null || sxhkd &
    '';
    monitors = {
	eDP-1 = [ 
		"I"
		"II"
		"III"
		"IV"
		"V"
		"VI"
		"VII"
		"VIII"
		"IX"
		"X"
	];
    };
    settings = {
      border_width = 2;
      window_gap = 12;
      split_ratio = 0.52;
      borderless_monocle = true;
      gapless_monocle = true;
    };
  };

  services.sxhkd = {
    enable = true;

   keybindings = {
      "super + Return" = "kitty";
      "super + @space" = "dmenu_run";
      "super + Escape" = "pkill -USR1 -x sxhkd";
      "super + p" = "flameshot gui";

      "super + alt + {q,r}" = "bspc {quit,wm -r}";
      "super + {_,shift + }w" = "bspc node -{c,k}";
      "super + m" = "bspc desktop -l next";
      "super + y" = "bspc node newest.marked.local -n newest.!automatic.local";
      "super + g" = "bspc node -s biggest.window";

      "super + t" = "bspc node -t tiled";
      "super + shift + t" = "bspc node -t pseudo_tiled";
      "super + s" = "bspc node -t floating";
      "super + f" = "bspc node -t fullscreen";

      "super + ctrl + m" = "bspc node -g marked";
      "super + ctrl + x" = "bspc node -g locked";
      "super + ctrl + y" = "bspc node -g sticky";
      "super + ctrl + z" = "bspc node -g private";

      "super + h" = "bspc node -f west";
      "super + j" = "bspc node -f south";
      "super + k" = "bspc node -f north";
      "super + l" = "bspc node -f east";
      "super + shift + h" = "bspc node -s west";
      "super + shift + j" = "bspc node -s south";
      "super + shift + k" = "bspc node -s north";
      "super + shift + l" = "bspc node -s east";

  
      "super + b" = "bspc node -f @brother";
      "super + comma" = "bspc node -f @first";
      "super + period" = "bspc node -f @second";

      "super + c" = "bspc node -f next.local.!hidden.window";
      "super + shift + c" = "bspc node -f prev.local.!hidden.window";

      "super + bracketleft" = "bspc desktop -f prev.local";
      "super + bracketright" = "bspc desktop -f next.local";

      "super + grave" = "bspc node -f last";
      "super + Tab" = "bspc desktop -f last";

      "super + o" = "bspc wm -h off; bspc node older -f; bspc wm -h on";
      "super + i" = "bspc wm -h off; bspc node newer -f; bspc wm -h on";

      "super + 1" = "bspc desktop -f ^1";
      "super + 2" = "bspc desktop -f ^2";
      "super + 3" = "bspc desktop -f ^3";
      "super + 4" = "bspc desktop -f ^4";
      "super + 5" = "bspc desktop -f ^5";
      "super + 6" = "bspc desktop -f ^6";
      "super + 7" = "bspc desktop -f ^7";
      "super + 8" = "bspc desktop -f ^8";
      "super + 9" = "bspc desktop -f ^9";
      "super + 0" = "bspc desktop -f ^10";
      "super + shift + 1" = "bspc node -d ^1";
      "super + shift + 2" = "bspc node -d ^2";
      "super + shift + 3" = "bspc node -d ^3";
      "super + shift + 4" = "bspc node -d ^4";
      "super + shift + 5" = "bspc node -d ^5";
      "super + shift + 6" = "bspc node -d ^6";
      "super + shift + 7" = "bspc node -d ^7";
      "super + shift + 8" = "bspc node -d ^8";
      "super + shift + 9" = "bspc node -d ^9";
      "super + shift + 0" = "bspc node -d ^10";

      "super + ctrl + h" = "bspc node -p west";
      "super + ctrl + j" = "bspc node -p south";
      "super + ctrl + k" = "bspc node -p north";
      "super + ctrl + l" = "bspc node -p east";

      "super + ctrl + 1" = "bspc node -o 0.1";
      "super + ctrl + 2" = "bspc node -o 0.2";
      "super + ctrl + 3" = "bspc node -o 0.3";
      "super + ctrl + 4" = "bspc node -o 0.4";
      "super + ctrl + 5" = "bspc node -o 0.5";
      "super + ctrl + 6" = "bspc node -o 0.6";
      "super + ctrl + 7" = "bspc node -o 0.7";
      "super + ctrl + 8" = "bspc node -o 0.8";
      "super + ctrl + 9" = "bspc node -o 0.9";

      "super + ctrl + space" = "bspc node -p cancel";
      "super + ctrl + shift + space" = "bspc query -N -d | xargs -I id -n 1 bspc node id -p cancel";

      "super + alt + h" = "bspc node -z left -20 0";
      "super + alt + j" = "bspc node -z bottom 0 20";
      "super + alt + k" = "bspc node -z top 0 -20";
      "super + alt + l" = "bspc node -z right 20 0";

      "super + alt + shift + h" = "bspc node -z right -20 0";
      "super + alt + shift + j" = "bspc node -z top 0 20";
      "super + alt + shift + k" = "bspc node -z bottom 0 -20";
      "super + alt + shift + l" = "bspc node -z left 20 0";

      "super + Left" = "bspc node -v -20 0";
      "super + Down" = "bspc node -v 0 20";
      "super + Up" = "bspc node -v 0 -20";
      "super + Right" = "bspc node -v 20 0";
    };
  };
}
