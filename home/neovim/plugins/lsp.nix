{
  programs.nixvim = {
    plugins = {
      lsp-format.enable = true;

      lsp = {
        enable = true;

        keymaps = {
          silent = true;
          diagnostic = {
            # Navigate in diagnostics
            "[g" = "goto_prev";
            "]g" = "goto_next";
          };

          lspBuf = {
            gd = "definition";
            gD = "references";
            gt = "type_definition";
            gi = "implementation";
            K = "hover";
            "<F2>" = "rename";
            "<leader>rn" = "rename";
          };
        };

        servers = {
          clangd.enable = true;
          texlab.enable = true;
          tinymist.enable = true;
        };
      };
    };
  };
}
