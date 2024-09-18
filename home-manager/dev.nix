{ pkgs, ... }: {
  home.packages = with pkgs; [
    # utilities
    ripgrep
    fzf
    tig
    delta
    yazi
    tmux
    imagemagick
    htop
    unzip
    zip
    unar

    # cli apps
    fastfetch
    nyancat
    # termpdfpy  # <- broken
    libwebp
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
    
