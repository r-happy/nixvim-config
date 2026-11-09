{
  plugins.codediff = {
    enable = true;
    settings = {
      explorer.auto_open_on_cursor = true;
    };
  };

  # The plugin dir lives in the read-only /nix/store, so the watcher binary
  # can't be downloaded there. Disable auto-install; codediff falls back to polling.
  extraConfigLuaPre = ''
    vim.env.CODEDIFF_WATCHER_NO_AUTO_INSTALL = "1"
  '';

  keymaps = [
    {
      mode = "n";
      key = "cd";
      action = "<cmd>CodeDiff<cr>";
      options.desc = "Code diff";
    }
  ];
}
