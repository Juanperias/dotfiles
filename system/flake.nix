{
  description = "Personal nixos configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config = {
          allowUnfree = true;
        };
      };
    in
    {
      packages.${system}.myConfig = import ./zed/default.nix { inherit pkgs; };

      nixosConfigurations = {
        myNixos = nixpkgs.lib.nixosSystem {
          system = system;
          specialArgs = { inherit system; };

          modules = [
            ./nixos/configuration.nix
            ./pkgs.nix
          ];
        };
      };
    };
}

