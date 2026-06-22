{
  plugins.conform-nvim = {
    enable = true;
    autoInstall.enable = true;

    settings = {
      notify_on_error = true;
      format_on_save = {
        lsp_format = "fallback";
        timeout_ms = 2000;
      };

      formatters_by_ft = {
        css = [ "prettier" ];
        html = [ "prettier" ];
        javascript = [ "prettier" ];
        javascriptreact = [ "prettier" ];
        json = [ "prettier" ];
        jsonc = [ "prettier" ];
        markdown = [ "prettier" ];
        scss = [ "prettier" ];
        typescript = [ "prettier" ];
        typescriptreact = [ "prettier" ];
        tsx = [ "prettier" ];
        yaml = [ "prettier" ];
      };
    };
  };
}
