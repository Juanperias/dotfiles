{
  description = "Juan's nixos config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zen-browser.url = "github:MarceColl/zen-browser-flake";
  };

  outputs = { nixpkgs, home-manager, zen-browser, ... }@inputs :
  let
     system = "x86_64-linux";
     user = "juan"; # this user will be used also in home-manager
    in
  {
    nixosConfigurations.laptop = nixpkgs.lib.nixosSystem  {
       inherit system;
       specialArgs = {
         inherit system user;
       };   


       modules = [
          ./laptop
           {

	    environment.systemPackages = [
		inputs.zen-browser.packages."${system}".default
	    ];
          }
	  
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.users.${user} = import ./laptop/home {
              config = {};
              pkgs = import nixpkgs { inherit system; };
              inherit user;
            };
          }
     ];
    };
  };
}
