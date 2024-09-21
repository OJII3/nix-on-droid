{ pkgs, ... }: {
  home.packages = with pkgs; [
    # utilities
    ripgrep
    fzf
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
    ollama
    online-judge-tools

    # languages
    gcc
    cmake
    rye
    typst
    rustup
    python311
    mise
    bun
    deno
  ];

}
    
