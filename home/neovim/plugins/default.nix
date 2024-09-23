{
  imports = [
    ./comment.nix
    ./lsp.nix
    ./lualine.nix
    ./neo-tree.nix
    ./telescope.nix
    ./treesitter.nix
  ];

  programs.nixvim = {
    colorschemes.tokyonight.enable = true;

    plugins = {
      gitsigns = {
        enable = true;
        settings.signs = {
          add.text = "+";
          change.text = "~";
        };
      };

      copilot-vim.enable = true;
      nvim-autopairs.enable = true;

      nvim-colorizer = {
        enable = true;
        userDefaultOptions.names = false;
      };

      oil.enable = true;

      trim = {
        enable = true;
        settings = {
          highlight = true;
          ft_blocklist = [
            "checkhealth"
            "floaterm"
            "lspinfo"
            "neo-tree"
            "TelescopePrompt"
          ];
        };
      };
    };
  };
}
