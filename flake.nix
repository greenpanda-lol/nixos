{
    description = "flake.nix";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        plasma-manager = {
            url = "github:nix-community/plasma-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        kwin-effect-glass = {
            url = "github:4v3ngR/kwin-effects-glass";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        gruvbox-wallpapers.url = "github:AngelJumbo/gruvbox-wallpapers";
    };

    outputs = { self, nixpkgs, home-manager, plasma-manager, ... }@inputs: {
        nixosConfigurations = {
            nixos = nixpkgs.lib.nixosSystem {
                system = "x86_64-linux";
                modules = [
                    ./hardware-configuration.nix
                    ./configuration.nix

                    home-manager.nixosModules.home-manager
                    {
                        home-manager.useGlobalPkgs = true;
                        home-manager.useUserPackages = true;

                        home-manager.users.nimrod = import ./home.nix;

                        home-manager.extraSpecialArgs = {
                            inherit inputs;
                        };
                    }
                ];
            };
        };
    };
}
