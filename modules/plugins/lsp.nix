{
  plugins.lsp = {
    enable = true;
    inlayHints = false;

    servers = {
      angularls.enable = true;
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
      tailwindcss.enable = true;
      texlab.enable = true;
      ts_ls.enable = true;
    };
  };

  # Tiny Inline Diagnostic owns inline messages; Bufferline keeps the counts.
  diagnostic.settings = {
    signs = false;
    virtual_text = false;
    virtual_lines = false;
  };
}
