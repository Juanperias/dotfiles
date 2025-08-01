{
  description = "Juan's nixos config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";
  }; 

  outputs = {
    nixpkgs,
    home-manager, 
    ...
  } @ inputs: let
    system = "x86_64-linux";
    user = "juan"; # this user will be used also in home-manager
  in {
    formatter.${system} = nixpkgs.legacyPackages.${system}.nixfmt-tree;
    nixosConfigurations.laptop = nixpkgs.lib.nixosSystem {
      inherit system;
      specialArgs = {
        inherit system user;
      };

      modules = [
        ./laptop

        {
          environment.systemPackages = [
	    inputs.neovim-nightly-overlay.packages.${system}.default
          ];
        }

	
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;

          home-manager.users.${user} = import ./laptop/home {
            config = {};
            pkgs = import nixpkgs {inherit system;};
            inherit user;
          };
        }
      ];
    };
  };
}
