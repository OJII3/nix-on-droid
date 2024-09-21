{
  programs.nixvim = {
    plugins.telescope = {
      enable = true;

      keymaps = {
        # Find files using Telescope command-line sugar.
        "<space>ff" = "find_files";
        "<space>fg" = "live_grep";
        "<space>b" = "buffers";
        "<space>fh" = "help_tags";
        "<space>fd" = "diagnostics";
        "<space>fo" = "oldfiles";
      };

      settings.defaults = {
        file_ignore_patterns = [
          "^.git/"
          "^.mypy_cache/"
          "^__pycache__/"
          "^output/"
          "^data/"
          "%.ipynb"
        ];
        set_env.COLORTERM = "truecolor";
      };
    };
  };
}
