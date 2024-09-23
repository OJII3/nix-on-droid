{
  programs.nixvim = {
    keymaps = [
      {
        key = "jj";
        action = "<Esc>";
        mode = "i";
        options = { silent = true; };
      }
      {
        key = "<M-h>";
        action = "<C-w>h";
        options = { silent = true; };
      }
      {
        key = "<M-j>";
        action = "<C-w>j";
        options = { silent = true; };
      }
      {
        key = "<M-k>";
        action = "<C-w>k";
        options = { silent = true; };
      }
      {
        key = "<M-l>";
        action = "<C-w>l";
        options = { silent = true; };
      }
    ];
  };
}
