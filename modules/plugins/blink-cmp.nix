{
  plugins = {
    friendly-snippets.enable = true;

    blink-cmp = {
      enable = true;
      setupLspCapabilities = true;

      settings = {
        keymap = {
          preset = "super-tab";
          "<CR>" = [
            "accept"
            "fallback"
          ];
          "<C-f>" = [ "fallback" ];
          "<C-b>" = [ "fallback" ];
          "<C-d>" = [
            "scroll_documentation_down"
            "fallback"
          ];
          "<C-u>" = [
            "scroll_documentation_up"
            "fallback"
          ];
        };

        appearance = {
          nerd_font_variant = "normal";
        };

        completion = {
          trigger = {
            show_on_backspace_in_keyword = true;
            show_on_x_blocked_trigger_characters = [
              "'"
              "\""
            ];
          };

          menu = {
            border = "rounded";
            direction_priority = [
              "s"
              "n"
            ];
          };

          list = {
            selection = {
              preselect = true;
              auto_insert = false;
            };
          };

          documentation = {
            auto_show = true;
            auto_show_delay_ms = 200;

            window = {
              border = "rounded";
              direction_priority = {
                menu_north = [
                  "e"
                  "w"
                ];
                menu_south = [
                  "e"
                  "w"
                ];
              };
            };
          };
        };

        signature = {
          enabled = false;
        };

        sources = {
          default = [
            "lsp"
            "path"
            "snippets"
            "buffer"
          ];

          providers = {
            buffer = {
              min_keyword_length = 2;
            };

            snippets = {
              opts = {
                extended_filetypes = {
                  htmlangular = [ "html" ];
                };
              };
            };
          };
        };

        fuzzy = {
          implementation = "prefer_rust_with_warning";
        };
      };
    };
  };
}
