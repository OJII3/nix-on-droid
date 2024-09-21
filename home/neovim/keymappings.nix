{
  programs.nixvim = {
    keymaps = [
      {
        key = "<M-h>";
        action = "<C-w>h";
        options = { silent = true; };
      }
    ];
  };
}
