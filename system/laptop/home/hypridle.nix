{pkgs, ...}: {
   services.hypridle = {
	enable = true;	
	settings = {
	    general = {
		ignore_debug_inhibit = false;
		before_sleep_cmd = "loginctl lock-session";
		lock_cmd = "pidof hyprlock || hyprlock";
		after_sleep_cmd = "hyprctl dispatch dpms on";
	    };

	    listener = [
		{
		   timeout = 200;
		   on-timeout = "systemctl suspend";
		   on-resume = "notify-send hello";
		}
		{
		   timeout = 360;
		   on-timeout = "systemctl suspend";
		   on-resume = "notify-send hello-again";
		}
	    ];
	};	
    };

    home.packages = with pkgs; [
    	hypridle	
    ];
}
