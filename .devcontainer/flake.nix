{
  description = "Devcontainer Home Manager configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
      };
      localModule = ./. + "/home-local.nix";
      localModules =
        if builtins.pathExists localModule
        then [ localModule ]
        else [ ];
    in {
      homeConfigurations.vscode = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          ./home.nix
          ({ pkgs, ... }: {
            home.packages = with pkgs; [
              yq-go
            ];
          })
        ] ++ localModules;
      };
    };
}
