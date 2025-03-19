{pkgs, ...}: {
  programs.zellij = {
      enable = true;

      enableFishIntegration = true;
      settings = {
	  simplified_ui = true;
	  theme = "catppuccin-mocha";
	  copy_command = "wl-copy";
	  scrollback_editor = "${pkgs.neovim}";
      };
  };
}
