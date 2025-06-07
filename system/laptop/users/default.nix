{
  user,
  pkgs,
  ...
}: {
  users.users.${user} = {
    isNormalUser = true;
    shell = pkgs.fish;
    description = user;
    extraGroups = ["networkmanager" "wheel"];
    packages = [];
  };
}
