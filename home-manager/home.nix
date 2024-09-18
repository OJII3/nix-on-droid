{ pkgs, ... }: {
        home = rec {
                username = "nix-on-droid";
                homeDirectory = "/data/data/com.termux.nix/files/home";
                stateVersion = "24.05";
        };
        programs.home-manager.enable = true;
  imports = [
    ./git.nix
    ./neovim.nix
    ./dev.nix
    ./direnv.nix
    ./zsh.nix
  ];
}
