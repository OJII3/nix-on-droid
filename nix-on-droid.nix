{ config, lib, pkgs, ... }:

{
  # Simply install just the packages
  environment.packages = with pkgs; [
    # User-facing stuff that you really really want to have
    vim # or some other editor, e.g. nano or neovim
    #git
    curl

    # Some common stuff that people expect to have
    #procps
    #killall
    #diffutils
    #findutils
    #utillinux
    #tzdata
    #hostname
    #man
    #gnugrep
    gnupg
    #gnused
    #gnutar
    #bzip2
    #gzip
    #xz
    #zip
    #unzip
    which
  ];

  # Backup etc files instead of failing to activate generation if a file already exists in /etc
  environment.etcBackupExtension = ".bak";

  # Read the changelog before changing this value
  system.stateVersion = "24.05";

  home-manager.config = { pkgs, ... }: {
    home.stateVersion = "24.05";
    imports = [
      ./home-manager/git.nix
      ./home-manager/neovim.nix
      ./home-manager/dev.nix
      ./home-manager/direnv.nix
      ./home-manager/zsh.nix
    ];
  };

  android-integration.termux-open.enable = true;
  android-integration.termux-setup-storage.enable = true;
  android-integration.xdg-open.enable = true;
  android-integration.termux-open-url.enable = true;
  android-integration.termux-reload-settings.enable = true;

  terminal.font = "${pkgs.hackgen-nf-font}/share/fonts/HackGenNF.ttf";

  user.shell = "${pkgs.zsh}/bin/zsh";

  # Set up nix for flakes
  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  # Set your time zone
  #time.timeZone = "Europe/Berlin";
}
