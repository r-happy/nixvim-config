{
  plugins.noice = {
    enable = true;

    settings = {
      lsp = {
        # Native hover combines all LSP responses before reporting missing info.
        # Blink owns completion documentation; leave LSP rendering unmodified.
        hover.enabled = false;
        signature.enabled = false;
        message.enabled = false;
      };

      # Snacks is the sole vim.notify provider.
      notify.enabled = false;

      cmdline = {
        enabled = true;
        view = "cmdline_popup";
      };

      messages = {
        enabled = true;
        view = "mini";
        view_error = "mini";
        view_warn = "mini";
        view_history = "messages";
        view_search = "virtualtext";
      };

      popupmenu = {
        enabled = true;
        backend = "nui";
      };

      presets = {
        bottom_search = true;
        command_palette = true;
        long_message_to_split = true;
        inc_rename = false;
        lsp_doc_border = false;
      };
    };
  };
}
