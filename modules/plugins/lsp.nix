{
  plugins.lsp = {
    enable = true;
    inlayHints = true;

    servers = {
      basedpyright.enable = true;
      clangd.enable = true;
      gopls.enable = true;
      html.enable = true;
      lua_ls.enable = true;
      nil_ls.enable = true;
      ruff.enable = true;
      rust_analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };
      sqls.enable = true;
      ts_ls.enable = true;
    };
  };
}
