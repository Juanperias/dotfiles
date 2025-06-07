{
  wayland.windowManager.hyprland = {
    enable = true;

    settings = {
      monitor = ",preferred,auto,auto";
      "$terminal" = "kitty";
      "$fileManager" = "nautilus";
      "$menu" = "ulauncher";
      "$browser" = "zen";
      "$mainMod" = "SUPER";
      exec-once = "waybar & change-wallpaper & hypridle &";

      env = ["XCURSOR_SIZE,24" "HYPRCURSOR_SIZE,24"];

      workspace = [
	"1,monitor:eDP-1"
	"2,monitor:eDP-1"
	"3,monitor:eDP-1"
	"4,monitor:eDP-1"
	"5,monitor:HDMI-A-1"
	"6,monitor:HDMI-A-1"
	"7,monitor:HDMI-A-1"
	"8,monitor:HDMI-A-1"
      ];

      general = {
        gaps_in = 5;
        gaps_out = 20;

        border_size = 1;

        "col.active_border" = "rgba(689d6aee) rgba(458588ee) 30deg";
        "col.inactive_border" = "rgba(7c6f64aa)";

        resize_on_border = false;

        allow_tearing = false;

        layout = "dwindle";
      };

      decoration = {
        rounding = 10;
        rounding_power = 2;
        active_opacity = 1.0;
        inactive_opacity = 1.0;

        shadow = {
          enabled = true;
          range = 4;
          render_power = 3;
          color = "rgba(1a1a1aee)";
        };

        blur = {
          enabled = true;
          size = 30;
          passes = 1;

          vibrancy = 0.1696;
        };
      };

      animations = {
        enabled = true;

        bezier = [
          "smoothInOut, 0.4, 0, 0.2, 1"
          "gentleFade, 0.25, 0.1, 0.25, 1"
          "linearMove, 0, 0, 1, 1"
        ];

        animation = [
          "global, 1, 0.3, linearMove"
          "border, 1, 3.5, smoothInOut"
          "windows, 1, 3.2, smoothInOut"
          "windowsIn, 1, 2.8, smoothInOut"
          "windowsOut, 1, 2.8, gentleFade"
          "fadeIn, 1, 2.2, gentleFade"
          "fadeOut, 1, 2.0, gentleFade"
          "layers, 1, 2.5, smoothInOut"
          "workspaces, 1, 2.2, smoothInOut"
          "workspacesIn, 1, 2.0, smoothInOut"
          "workspacesOut, 1, 2.2, gentleFade"
        ];
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "master";
      };

      misc = {
        force_default_wallpaper = -1;
        disable_hyprland_logo = true;
      };

      input = {
        kb_layout = "us";
        kb_variant = "";
        kb_model = "";
        kb_options = "";
        kb_rules = "";

        follow_mouse = 1;

        sensitivity = 0;

        touchpad = {
          natural_scroll = false;
        };
      };

      gestures = {
        workspace_swipe = false;
      };

      device = {
        name = "epic-mouse-v1";
        sensitivity = -0.5;
      };

      bind = [
        "$mainMod, T, exec, $terminal"
        "$mainMod, Q, killactive,"
        "$mainMod, B, exec, $browser"
        "$mainMod, code:9, exit,"
        "$mainMod, E, exec, $fileManager"
        "$mainMod, V, togglefloating,"
        "$mainMod, M, exec, $menu"
	"$mainMod, F, fullscreen"
        "$mainMod, P, pseudo,"

	"$mainMod, left, movefocus, l"
	"$mainMod, right, movefocus, r"
	"$mainMod, up, movefocus, u"
	"$mainMod, down, movefocus, d"

        " , Print, exec, grimblast copy area"

        "$mainMod, J, togglesplit,"
        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"
        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3"
        "$mainMod SHIFT, 4, movetoworkspace, 4"
        "$mainMod SHIFT, 5, movetoworkspace, 5"
        "$mainMod SHIFT, 6, movetoworkspace, 6"
        "$mainMod SHIFT, 7, movetoworkspace, 7"
        "$mainMod SHIFT, 8, movetoworkspace, 8"
        "$mainMod SHIFT, 9, movetoworkspace, 9"
        "$mainMod SHIFT, 0, movetoworkspace, 10"

        "$mainMod, S, togglespecialworkspace, magic"
        "$mainMod SHIFT, S, movetoworkspace, special:magic"

        "$mainMod, mouse_down, workspace, e+1"
        "$mainMod, mouse_up, workspace, e-1"
      ];

      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];

      bindel = [
        ",XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
        ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        ",XF86MonBrightnessUp, exec, brightnessctl s 10%+"
        ",XF86MonBrightnessDown, exec, brightnessctl s 10%-"
      ];

      bindl = [
        " , XF86AudioNext, exec, playerctl next"
        " , XF86AudioPause, exec, playerctl play-pause"
        " , XF86AudioPlay, exec, playerctl play-pause"
        " , XF86AudioPrev, exec, playerctl previous"
      ];

      windowrule = [
        "suppressevent maximize, class:.*"
        "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
      ];
    };
  };
}
