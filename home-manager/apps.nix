{ pkgs, ... }: {
  qt.enable = true;
  # qt.platformTheme.name = 
  programs.obs-studio.enable = true;
  home.packages = with pkgs; [
    kdePackages.kdeconnect-kde rquickshare xournalpp
    libreoffice-qt
    gpu-screen-recorder-gtk
    vlc
    wireshark
    # pureref
  ];
}
