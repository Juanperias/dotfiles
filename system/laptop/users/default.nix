{user, pkgs, ...}: { 
  users.users.${user} = {
    isNormalUser = true;
    description = user;
    shell = pkgs.zsh;
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };
}
