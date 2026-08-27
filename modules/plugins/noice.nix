{
  plugins.noice = {
    enable = true;

    settings = {
      lsp = {
        override = {
          "vim.lsp.util.convert_input_to_markdown_lines" = true;
          "vim.lsp.util.stylize_markdown" = true;
        };

        # Blink renders completion documentation; suppress Noice's separate
        # signature popup so the two windows do not overlap.
        signature.enabled = false;
      };

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
