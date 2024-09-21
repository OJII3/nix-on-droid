{ pkgs, ... }: {
  home.packages = with pkgs; [
    # utilities
    ripgrep
    fzf
    gawk
    tig
    yazi
    tmux
    imagemagick
    htop
    unzip
    zip
    unar
    mdbook

    # cli apps
    fastfetch
    nyancat
    # termpdfpy  # <- broken
    online-judge-tools

    # languages
    gcc
    cmake
    rye
    typst
    mise
    bun
    deno
  ];

}
