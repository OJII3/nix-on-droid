{ pkgs, lib, ... }:
let
  nixvim = import (builtins.fetchGit {
    url = "https://github.com/nix-community/nixvim";
    # If you are not running an unstable channel of nixpkgs, select the corresponding branch of nixvim.
    ref = "nixos-24.05";
  });
in
{
  home-manager.config = { pkgs, ... }: {
    home.stateVersion = "24.05";
    imports = [
      nixvim.homeManagerModules.nixvim
      ./git.nix
      ./neovim
      ./dev.nix
      ./direnv.nix
      ./zsh.nix
#     ./network.nix
    ];
  };
}
