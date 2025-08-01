{user, ...}: {
    boot.loader.limine = {
	enable = true;
	efiSupport = true;
	style.wallpapers = [ "/home/${user}/boot-wallpaper.png" ];
  };
  boot.loader.efi.canTouchEfiVariables = true;
}
