{
  plugins.bufferline = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<C-b>n";
      action = "<cmd>BufferLineCycleNext<cr>";
      options.desc = "Next buffer";
    }
    {
      mode = "n";
      key = "<C-b>p";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options.desc = "Previous buffer";
    }
    {
      mode = "n";
      key = "<C-b>q";
      action = "<cmd>bdelete<cr>";
      options.desc = "Close buffer";
    }
  ];
}
