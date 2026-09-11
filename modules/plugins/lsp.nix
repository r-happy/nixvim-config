{
  plugins.lsp = {
    enable = true;
    inlayHints = false;

    # Keep editor behavior here; each project's dev shell supplies the tools.
    servers = builtins.mapAttrs (_: settings: {
      enable = true;
      package = null;
      autostart = false;
    } // settings) {
      angularls = { };
      basedpyright = { };
      clangd = { };
      gopls = { };
      html = { };
      lua_ls = { };
      ruff = { };
      rust_analyzer = {
        installCargo = false;
        installRustc = false;
      };
      sqls = { };
      tailwindcss = { };
      texlab = { };
      ts_ls = { };
    } // {
      # Editing dotfiles should work without a project dev shell.
      nil_ls.enable = true;
    };
  };

  extraConfigLua = ''
    local project_servers = {
      angularls = "ngserver",
      basedpyright = "basedpyright-langserver",
      clangd = "clangd",
      gopls = "gopls",
      html = "vscode-html-language-server",
      lua_ls = "lua-language-server",
      ruff = "ruff",
      rust_analyzer = "rust-analyzer",
      sqls = "sqls",
      tailwindcss = "tailwindcss-language-server",
      texlab = "texlab",
      ts_ls = "typescript-language-server",
    }
    for server, executable in pairs(project_servers) do
      if vim.fn.executable(executable) == 1 then
        vim.lsp.enable(server)
      end
    end
  '';

  # Tiny Inline Diagnostic owns inline messages; Bufferline keeps the counts.
  diagnostic.settings = {
    signs = false;
    virtual_text = false;
    virtual_lines = false;
  };
}
