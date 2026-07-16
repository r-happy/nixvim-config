{
  plugins.lsp = {
    enable = true;
    inlayHints = false;

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
      tailwindcss.enable = true;
      texlab.enable = true;
      ts_ls.enable = true;
    };
  };

  # Keep diagnostics in bufferline and tiny-inline-diagnostic, not in the sign column.
  diagnostic.settings.signs = false;
}
